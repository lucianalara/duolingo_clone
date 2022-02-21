import 'package:flutter/cupertino.dart';

class FittedText extends StatelessWidget {
  const FittedText(
      {Key? key,
      required this.title,
      required this.fontFamily,
      required this.fontColor,
      required this.fontSize})
      : super(key: key);
  final String title;
  final String fontFamily;
  final Color fontColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Text(
        title,
        style: TextStyle(
            fontFamily: fontFamily, color: fontColor, fontSize: fontSize),
      ),
    );
  }
}
