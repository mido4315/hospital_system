import 'package:flutter/material.dart';
import 'package:hospital_system/features/splash%20-%20prototype%20map/presentation/views/prototype_map.dart';

import 'widgets/custom_gradient_background.dart';
import 'widgets/splash_view_logo.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    splashScreenNavigator();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: const [
          CustomGradientBackground(),
          SplashViewLogo(),
        ],
      ),
    );
  }

  void splashScreenNavigator() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const PrototypeMap(),
          ),
        );
      },
    );
  }
}
