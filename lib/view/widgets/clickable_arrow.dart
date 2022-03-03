import 'package:duolingo_clone/view/widgets/click_tap.dart';
import 'package:duolingo_clone/view/widgets/icons/arrow_icon.dart';
import 'package:flutter/cupertino.dart';

class ClickableArrow extends StatelessWidget {
  const ClickableArrow({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ClickTap(
        child: ArrowIcon(onPressed: onPressed), onPressed: onPressed);
  }
}
