import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todoapp/screens/profile/profileviewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, viewModel, child) {
          return const Scaffold();
        });
  }
}
