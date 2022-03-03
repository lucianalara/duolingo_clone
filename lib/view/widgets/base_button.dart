import 'package:duolingo_clone/view/widgets/click_tap.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton(
      {Key? key,
      required this.backgroundColor,
      required this.title,
      required this.borderColor,
      required this.topColor,
      required this.fontColor,
      required this.onPressed})
      : super(key: key);

  final Color borderColor;
  final Color backgroundColor;
  final String title;
  final Color topColor;
  final Color fontColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final height = 60.0;
      final innerHeight = height - 6;

      return ClickTap(
        onPressed: onPressed,
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: innerHeight,
                  // margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: topColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: innerHeight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: borderColor),
                ),
              ),
              Center(
                child: Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DINNextRound',
                    fontSize: 20,
                    color: fontColor,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
