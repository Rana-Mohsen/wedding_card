import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wedding_card/core/firebase_service.dart';
import 'package:wedding_card/core/utils/functions/snack_bar.dart';
import 'package:wedding_card/core/validators.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custom_textformfield.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custome_button.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
String? password;
 String? email;
  bool visible = true;

  bool isLoading = false;

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
                const Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  validator: Validators.emailValidator,
                  hintText: 'Email',
                  onChange: (value) {
                    email = value;
                  },
                ),
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
                  text: 'REGISTER',
                  onTap: _validateForm,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                           fontWeight: FontWeight.w600),
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

    _validateForm() async {
    if (_formKey.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      try {
        await FirebaseService.createUser(email: email!, password: password!);
        // Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder: (context) => const Navigation()));
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak_password") {
          snackBarMessage(context, "your password is weak");
        } else if (e.code == "email-already-in-use") {
          snackBarMessage(context, "email is already in use");
        }
      }
      isLoading = false;
      setState(() {});
    }
  }
}