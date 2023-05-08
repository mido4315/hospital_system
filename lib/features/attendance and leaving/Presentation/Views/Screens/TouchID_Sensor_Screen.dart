import 'package:flutter/material.dart';

import 'package:local_auth/local_auth.dart';


class TouchIDSensor extends StatefulWidget {
  const TouchIDSensor({Key? key}) : super(key: key);

  @override
  State<TouchIDSensor> createState() => _TouchIDSensorState();
}


class _TouchIDSensorState extends State<TouchIDSensor> with SingleTickerProviderStateMixin {
  bool isTouched = false;
  bool showBiometrics = false;
  bool isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    isBiometricAvailable();
  }

  isBiometricAvailable() async {
    showBiometrics = await BiometricHelper().hasEnrolledBiometrics();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF22C7B8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
          height: height * .2,),
            GestureDetector(
              onTap: () async {
                setState(() {
                  isTouched = true;
                });

                bool authenticated = await BiometricHelper().authenticate();
                setState(() {
                  isAuthenticated = authenticated;
                });
              },

              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: isAuthenticated
                    ? Container(
                  key: const ValueKey(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color(0xFFffffff), width: 2),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 100,
                    child: Icon(
                      Icons.check,
                      size: 120,
                      color: Color(0xFFffffff),
                    ),
                  ),
                )
                    : Image.asset(
                  'images/FingerPrint/Group 355.png',
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: isAuthenticated
                  ? const Text(
                'Your attendance has been registered',
                style: TextStyle(
                  color: Color(0xFFffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
                  : const Text(
                'Please touch ID sensor to verify',
                style: TextStyle(
                  color: Color(0xFFffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height*.2),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: isAuthenticated
                  ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color(0xFFffffff), width: 2),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color(0xFFffffff),
                      size: 40,
                    ),
                  ),
                ),
              )
                  : const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
  class BiometricHelper {
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> hasEnrolledBiometrics() async {
    final List<BiometricType> availableBiometric =
    await _auth.getAvailableBiometrics();
    if (availableBiometric.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> authenticate() async {
    final bool didAuthenticate = await _auth.authenticate(
        localizedReason: "Please Authenticte to Procceds",
        options: const AuthenticationOptions(
            biometricOnly: true, stickyAuth: true, useErrorDialogs: true));
    return didAuthenticate;
  }
}


