import 'package:flutter/material.dart';

class PageSize {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

class Show {
  static snackBar({required BuildContext context, required String content,int? duration}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        duration: Duration(seconds: duration!),
      ),
    );
  }
}
