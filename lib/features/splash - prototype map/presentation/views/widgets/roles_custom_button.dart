import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';

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
