import 'package:duolingo_clone/ui/colors.dart';
import 'package:flutter/material.dart';

class SignInMobile extends StatelessWidget {
  const SignInMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: initialBackground,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ClickableArrow(),
            Text('Enter your details'),
          ],
        ),
      ),
    );
  }
}

class ClickableArrow extends StatelessWidget {
  const ClickableArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
