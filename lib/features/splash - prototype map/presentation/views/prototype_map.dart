import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../Main/presentation/view/screens/main_page.dart';
import '../../../attendance and leaving/Presentation/Views/Screens/Attendance and Leaving_Screen.dart';
import '../../../attendance and leaving/Presentation/Views/Screens/Registered_Screen.dart';
import '../../../sign In/presentation/views/SginIn.dart';
import 'widgets/custom_gradient_background.dart';

class PrototypeMap extends StatelessWidget {
  const PrototypeMap({Key? key}) : super(key: key);
  static const roles = [
    "Doctor",
    "Receptionist",
    "Nurse",
    "Analysis Employee",
    "Manger",
    "HR",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomGradientBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Prototype Map',
                  style: TextStyle(
                    fontSize: 20,
                    color: ConstantColor.lightGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    RolesCustomButton(
                      role: roles[0],
                      onPressed: () {},
                    ),
                    RolesCustomButton(
                      role: roles[1],
                      onPressed: () {},
                    ),
                    RolesCustomButton(
                      role: roles[2],
                      onPressed: () {},
                    ),
                    RolesCustomButton(
                      role: roles[3],
                      onPressed: () {},
                    ),
                    RolesCustomButton(
                      role: roles[4],
                      onPressed: () {},
                    ),
                    RolesCustomButton(
                      role: roles[5],
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SignIn(),
                        //   ),
                        // );
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const mainPage(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RolesCustomButton extends StatelessWidget {
  const RolesCustomButton({
    super.key,
    required this.role,
    required this.onPressed,
  });

  final Function onPressed;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          side: const BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          role,
          style: TextStyle(
              fontSize: 14,
              color: ConstantColor.lightGreen,
              fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
