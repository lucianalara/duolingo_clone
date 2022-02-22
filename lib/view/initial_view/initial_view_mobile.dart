import 'package:duolingo_clone/ui/colors.dart';
import 'package:duolingo_clone/view/widgets/fitted_text.dart';
import 'package:flutter/material.dart';

import '../widgets/base_button.dart';

class InitialViewMobile extends StatelessWidget {
  const InitialViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: initialBackground,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const FittedText(
              title: 'Duolingo',
              fontFamily: 'Feather',
              fontColor: featherGreen,
            ),
            const Spacer(),
            Expanded(
              child: BaseButton(
                backgroundColor: buttonGreen,
                title: 'GET STARTED',
                borderColor: greenShadow,
                realBorderColor: buttonGreen,
                fontColor: initialBackground,
                onPressed: () {},
              ),
            ),
            const Spacer(),
            Expanded(
              child: BaseButton(
                backgroundColor: darkestBlue,
                title: 'I ALREADY HAVE AN ACCOUNT',
                borderColor: initialGrey,
                realBorderColor: initialGrey,
                fontColor: fontGreen,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
