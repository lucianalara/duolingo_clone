import 'package:flutter/cupertino.dart';

class FittedText extends StatelessWidget {
  const FittedText({
    Key? key,
    required this.title,
    required this.fontFamily,
    required this.fontColor,
  }) : super(key: key);
  final String title;
  final String fontFamily;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Text(
        title,
        style:
            TextStyle(fontFamily: fontFamily, color: fontColor, fontSize: 1000),
      ),
    );
  }
}
