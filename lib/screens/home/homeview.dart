import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todoapp/screens/home/homeviewmodel.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=>HomeViewModel(), builder: (context,viewModel,child){
      return const Scaffold();
    });
  }
}
