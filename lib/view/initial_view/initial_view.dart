import 'package:duolingo_clone/ui/colors.dart';
import 'package:duolingo_clone/view/widgets/fitted_text.dart';
import 'package:flutter/material.dart';

import '../widgets/base_button.dart';

class InitialView extends StatelessWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: initialBackground,
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const FittedText(
              title: 'Duolingo',
              fontFamily: 'Feather',
              fontColor: featherGreen,
              fontSize: 74,
            ),
            Spacer(),
            Expanded(
              child: BaseButton(
                backgroundColor: buttonGreen,
                title: 'GET STARTED',
                borderColor: greenShadow,
                realBorderColor: buttonGreen,
                fontColor: fontGreen,
                onPressed: () {},
              ),
            ),
            Expanded(
              child: BaseButton(
                backgroundColor: darkestBlue,
                title: 'I ALREADY HAVE AN ACCOUNT',
                borderColor: initialGrey,
                realBorderColor: initialGrey,
                fontColor: initialBackground,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
