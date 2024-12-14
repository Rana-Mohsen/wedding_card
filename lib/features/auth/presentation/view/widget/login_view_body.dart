import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wedding_card/core/firebase_service.dart';
import 'package:wedding_card/core/utils/functions/snack_bar.dart';
import 'package:wedding_card/core/validators.dart';
import 'package:wedding_card/features/auth/presentation/view/register_view.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custom_textformfield.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custome_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
    String? email;
  String? password;
  bool isLoading = false;
  bool visible = true;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        //backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 3,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                CustomTextFormField(
                    validator: Validators.emailValidator,
                    onChange: (value) {
                      email = value;
                    },
                    hintText: 'Email'),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                    obscure: visible,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: IconButton(
                        icon: visible
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                      ),
                    ),
                    validator: Validators.passwordValidator,
                    onChange: (value) {
                      password = value;
                    },
                    hintText: 'Password'),
                const SizedBox(
                  height: 30,
                ),
                CustomeButton(
                  onTap: _validateLoginForm,
                  text: 'LOGIN',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don\'t have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
    _validateLoginForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      try {
        await FirebaseService.signInUser(email: email!, password: password!);
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const Navigation(),
        //   ),
        // );
      } on FirebaseAuthException catch (e) {
        _handleFirebaseAuthException(e);
      } catch (e) {
        _handleGenericException(e);
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  void _handleFirebaseAuthException(FirebaseAuthException e) {
    print(e);

    if (e.code == "wrong-password") {
      snackBarMessage(context, "Your password is wrong");
    } else if (e.code == "user-not-found") {
      snackBarMessage(context, "User not found");
    }
  }

  void _handleGenericException( e) {
    print(e);
    snackBarMessage(context, "There was an error");
  }
}