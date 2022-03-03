import 'package:duolingo_clone/ui/colors.dart';
import 'package:duolingo_clone/view_model/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/base_button.dart';

class InitialViewMobile extends StatelessWidget {
  const InitialViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SignInModel>(context);
    return Scaffold(
      backgroundColor: initialBackground,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              'duolingo',
              style: TextStyle(
                color: featherGreen,
                fontSize: 54,
                fontFamily: 'Feather',
              ),
            ),
            const Spacer(),
            BaseButton(
              backgroundColor: featherGreen,
              title: 'GET STARTED',
              borderColor: buttonGreen,
              topColor: buttonGreen,
              fontColor: initialBackground,
              onPressed: () {},
            ),
            Container(height: 20),
            BaseButton(
              backgroundColor: initialGrey,
              title: 'I ALREADY HAVE AN ACCOUNT',
              borderColor: darkestBlue,
              topColor: darkestBlue,
              fontColor: fontGreen,
              onPressed: () {
                model.nextPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
