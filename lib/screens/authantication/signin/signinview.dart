import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todoapp/screens/authantication/signin/signinviewmodel.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignInViewModel(),
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(32.5),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 320,
                    width: 280,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          TextField(
                            controller: viewModel.nameController,
                            decoration: InputDecoration(
                                errorText: viewModel.isNotValidate
                                    ? "Enter Your Name"
                                    : null,
                                labelText: "Name"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            controller: viewModel.emailController,
                            decoration: InputDecoration(
                                errorText: viewModel.isNotValidate
                                    ? "Enter Your Email"
                                    : null,
                                labelText: "Email"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            obscureText: viewModel.passwordshow,
                            decoration: InputDecoration(
                              errorText: viewModel.isNotValidate
                                  ? "Enter Your Password"
                                  : null,
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
                  ),
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () async {
                            await viewModel.userRegister();
                          },
                          child: const Text("Sign In"))),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
