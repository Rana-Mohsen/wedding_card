import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wedding_card/core/utils/functions/snack_bar.dart';
import 'package:wedding_card/core/utils/routes.dart';
import 'package:wedding_card/core/validators.dart';
import 'package:wedding_card/features/auth/presentation/view/register_view.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custom_textformfield.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custome_button.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/switch_text.dart';
import 'package:wedding_card/features/auth/presentation/view_model/blocs/auth_bloc.dart';

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
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthLoginFailure) {
        snackBarMessage(context, state.msg);
      }else if(state is AuthLoginSuccess){
         GoRouter.of(context)
                            .pushReplacement(AppRoutes.kHomeView);
      }
    }, builder: (context, state) {
      return ModalProgressHUD(
        inAsyncCall: state is AuthLoginLoading,
        child: Scaffold(
          backgroundColor: Colors.pinkAccent,
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
                    onTap: // _validateLoginForm
                        () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                            AuthLoginEvent(email: email!, password: password!));
                       
                      }
                    },
                    text: 'LOGIN',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SwitchText(
                    text1: "don't have an account?",
                    text2: 'Register',
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.kRegisterView);
                    },
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
    });
  }
  //   _validateLoginForm() async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       isLoading = true;
  //     });

  //     try {
  //       await FirebaseService.signInUser(email: email!, password: password!);
  //       // Navigator.pushReplacement(
  //       //   context,
  //       //   MaterialPageRoute(
  //       //     builder: (context) => const Navigation(),
  //       //   ),
  //       // );
  //     } on FirebaseAuthException catch (e) {
  //       _handleFirebaseAuthException(e);
  //     } catch (e) {
  //       _handleGenericException(e);
  //     } finally {
  //       setState(() {
  //         isLoading = false;
  //       });
  //     }
  //   }
  // }

  // void _handleFirebaseAuthException(FirebaseAuthException e) {
  //   print(e);

  //   if (e.code == "wrong-password") {
  //     snackBarMessage(context, "Your password is wrong");
  //   } else if (e.code == "user-not-found") {
  //     snackBarMessage(context, "User not found");
  //   }
  // }

  // void _handleGenericException( e) {
  //   print(e);
  //   snackBarMessage(context, "There was an error");
  // }
}
