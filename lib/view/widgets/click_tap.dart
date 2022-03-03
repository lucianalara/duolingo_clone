import 'package:flutter/cupertino.dart';

class ClickTap extends StatelessWidget {
  const ClickTap({Key? key, required this.child, required this.onPressed})
      : super(key: key);
  final Widget child;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.opaque,
        child: child,
      ),
    );
  }
}
