import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wedding_card/core/utils/functions/snack_bar.dart';
import 'package:wedding_card/core/utils/routes.dart';
import 'package:wedding_card/core/validators.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custom_textformfield.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/custome_button.dart';
import 'package:wedding_card/features/auth/presentation/view/widget/switch_text.dart';
import 'package:wedding_card/features/auth/presentation/view_model/blocs/auth_bloc.dart';

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
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthRegisterFailure) {
        snackBarMessage(context, state.msg);
      }
      else if(state is AuthRegisterSuccess){
        GoRouter.of(context)
                            .pushReplacement(AppRoutes.kHomeView);
      }
    }, builder: (context, state) {
      return ModalProgressHUD(
        inAsyncCall: state is AuthRegisterLoading,
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
                    onTap: // _validateForm
                        () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                            AuthRegisterEvent(
                                email: email!, password: password!));
                        
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SwitchText(
                    text1: 'already have an account?',
                    text2: 'Login',
                    onTap: () {
                      GoRouter.of(context).pop();
                      // Navigator.pop(context);
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
}
