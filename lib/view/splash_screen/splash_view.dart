import 'package:flutter/material.dart';
import 'package:restaurantorders/view_model/splash_screen/splash_vm.dart';

class SplashScreen extends StatelessWidget{
  SplashScreen({super.key});

  final SplashScreenViewModel splashScreenViewModel = SplashScreenViewModel();

  @override
  Widget build(BuildContext context) {
    splashScreenViewModel.routeToHome(context);
    return Image.asset("assets/icons/gb_logo.png");
  }
}