import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Screens/Registered_Screen.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  bool showBiometrics = false;
  bool isAuthenticated = false;
  // main function that will allow us to use the Fingerprint sensor
  @override
  void initState() {
    super.initState();
    isBiometricAvailable();
  }

  isBiometricAvailable() async {
    showBiometrics = (await BiometricHelper().hasEnrolledBiometrics) as bool;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
      child: Column(
        children: [
          Container(
            child: GestureDetector(
              onTap: () async {
                isAuthenticated = await BiometricHelper().authenticate();
                if (isAuthenticated) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Registered()));
                }
              },
              child: Image.asset(
                'images/FingerPrint/Group 355.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please touch ID sensor to verify registration',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class BiometricHelper {
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> hasEnrolledBiometrics() async {
    final List<BiometricType>? availableBiometric =
        await _auth.getAvailableBiometrics();
    if (availableBiometric!.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> authenticate() async {
    final bool didAuthenticate = await _auth.authenticate(
        localizedReason: "Please Authenticte to Procceds",
        options: AuthenticationOptions(
            biometricOnly: true, stickyAuth: true, useErrorDialogs: true));
    return didAuthenticate;
  }
}
