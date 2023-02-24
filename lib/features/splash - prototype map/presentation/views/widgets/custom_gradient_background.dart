import 'package:flutter/material.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 268,
            width: 268,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(110),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff22C7B8).withOpacity(0.15),
                    const Color(0xff22C7B8).withOpacity(0.1),
                    const Color(0xff22C7B8).withOpacity(0.05),
                    const Color(0xff22C7B8).withOpacity(0.005),
                    const Color(0xff22C7B8).withOpacity(0.0),

                  ]),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 268,
            width: 268,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(110),
              ),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,

                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xff22C7B8).withOpacity(0.15),
                    const Color(0xff22C7B8).withOpacity(0.1),
                    const Color(0xff22C7B8).withOpacity(0.05),
                    const Color(0xff22C7B8).withOpacity(0.005),
                    const Color(0xff22C7B8).withOpacity(0.0),

                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
