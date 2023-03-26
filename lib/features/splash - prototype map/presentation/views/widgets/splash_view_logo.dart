import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/constant/color.dart';

class SplashViewLogo extends StatelessWidget {
  const SplashViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 155,
            width: 155,
            child: Image(
              fit: BoxFit.fitHeight,
              image: AssetImage('images/splash screen logo.png'),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Hospital System',
            style: TextStyle(
              fontSize: 20,
              color: ConstantColor.lightGreen,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          LinearPercentIndicator(
            alignment: MainAxisAlignment.center,
            width: width * 0.8,
            animation: true,
            animationDuration: 2000,
            backgroundColor: Colors.grey,
            progressColor: ConstantColor.lightGreen,
            barRadius: const Radius.circular(16),
            lineHeight: 4,
            percent: 1,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Loading ...',
            style: TextStyle(
              fontSize: 14,
              color: ConstantColor.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
