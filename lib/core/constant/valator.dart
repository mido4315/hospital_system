// ignore_for_file: unnecessary_null_comparison, camel_case_types
class validator {
  static String? valditor({required String name}) {
    if (name == null) {
      return null;
    }
    if (name.isEmpty) {
      return "please enter the name";
    }
    return null;
  }

  static String? valditorPhone({required  String phone}) {
    if (phone == null) {
      return null;
    }
    if (phone.isEmpty) {
      return "please enter the phone number";
    } else if (phone.length==12) {
      return "please enter the correct phone number ";
    }
    return null;
  }
  static String? valditorAge({required String age}) {
    if (age == null) {
      return null;
    }
    RegExp regExp = RegExp(
      r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$",
      caseSensitive: true,
      multiLine: false,
    );
    if (age.isEmpty) {
      return "please enter the age";
    } else if (regExp.hasMatch(age)) {
      return "please enter the correct age ";
    }
    return null;
  }

}

