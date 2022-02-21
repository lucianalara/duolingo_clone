import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton(
      {Key? key,
      required this.backgroundColor,
      required this.title,
      required this.borderColor,
      required this.realBorderColor,
      required this.fontColor,
      required this.onPressed})
      : super(key: key);

  final Color borderColor;
  final Color backgroundColor;
  final String title;
  final Color realBorderColor;
  final Color fontColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 0.125;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 6,
            child: Container(
              height: height,
              width: width,
              clipBehavior: Clip.hardEdge,
              //TODO fix button radius issue
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38), color: borderColor),
            ),
          ),
          SizedBox(
            height: height,
            width: width,
            child: TextButton(
              onPressed: () {},
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'DINNextRounded',
                    fontSize: 46,
                    color: fontColor),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                    side: BorderSide(width: 6, color: realBorderColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
