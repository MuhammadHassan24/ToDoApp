import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todoapp/screens/authantication/login/loginviewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 280,
                    child: Column(
                      children: [
                        TextField(
                          controller: viewModel.emailController,
                          decoration: const InputDecoration(labelText: "Email"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: viewModel.passwordController,
                          obscureText: viewModel.passwordshow,
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            hintText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(viewModel.passwordshow
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                viewModel.passwordshow =
                                    !viewModel.passwordshow;
                                viewModel.rebuildUi();
                              },
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Login"))),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Register Your Account!"))
                ],
              ),
            ),
          );
        });
  }
}
