import 'package:duolingo_clone/view/sign_in_view_mobile.dart';
import 'package:flutter/material.dart';

class SignInModel extends ChangeNotifier {
  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInMobile(),
      ),
    );
  }

  TextEditingController controller = TextEditingController();
}

dynamic hello() {
  return '';
}
