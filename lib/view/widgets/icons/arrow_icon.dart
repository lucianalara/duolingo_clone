import 'package:duolingo_clone/globals/assets.dart';
import 'package:duolingo_clone/view/widgets/click_tap.dart';
import 'package:flutter/cupertino.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ClickTap(
        child: Image.asset(
          arrowAsset,
          height: 25,
          width: 28,
          alignment: Alignment.center,
        ),
        onPressed: onPressed);
  }
}
