import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/color.dart';
import '../../../Main/presentation/view/screens/main_page.dart';
import '../../../attendance and leaving/Presentation/Views/Screens/Attendance and Leaving_Screen.dart';
import '../../../attendance and leaving/Presentation/Views/Screens/Registered_Screen.dart';
import '../../../sign In/presentation/views/SginIn.dart';
import 'widgets/custom_gradient_background.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';

class PrototypeMap extends StatefulWidget {
  const PrototypeMap({Key? key}) : super(key: key);
  static const roles = [
    "Doctor",//0
    "Receptionist",//1
    "Nurse",//2
    "Analysis Employee",//3
    "Manger",//4
    "HR",//5
  ];

  @override
  State<PrototypeMap> createState() => _PrototypeMapState();
}

class _PrototypeMapState extends State<PrototypeMap> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Provider_data>(builder: (context, provider_data, child) {

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
                        role: PrototypeMap.roles[0],
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                          setState(() {
                            provider_data.Prototype=0;
                          });
                        },
                      ),
                      RolesCustomButton(
                        role: PrototypeMap.roles[1],
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                          setState(() {
                            provider_data.Prototype=1;
                          });
                        },
                      ),
                      RolesCustomButton(
                        role: PrototypeMap.roles[2],
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                          setState(() {
                            provider_data.Prototype=2;
                          });
                        },
                      ),
                      RolesCustomButton(
                        role: PrototypeMap.roles[3],
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                          setState(() {
                            provider_data.Prototype=3;
                          });
                        },
                      ),
                      RolesCustomButton(
                        role: PrototypeMap.roles[4],
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                          setState(() {
                            provider_data.Prototype=4;
                          });
                        },
                      ),
                      RolesCustomButton(
                        role: PrototypeMap.roles[5],
                        onPressed: () {
                          setState(() {
                            provider_data.Prototype=5;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
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