import 'package:duolingo_clone/ui/colors.dart';
import 'package:duolingo_clone/view/widgets/clickable_arrow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/sign_in_model.dart';

class SignInMobile extends StatelessWidget {
  const SignInMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: initialBackground,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: const [TopBar(), CustomTextField()],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SignInModel>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClickableArrow(
          onPressed: () {
            model.goBack(context);
          },
        ),
        const Text(
          'Enter your details',
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SignInModel>(context);
    return Container(
      height: 107,
      width: 439,
      decoration: BoxDecoration(
        border: Border.all(color: borderGrey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          TextField(
            controller: model.controller,
          ),
        ],
      ),
    );
  }
}
