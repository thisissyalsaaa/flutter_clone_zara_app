import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.side,
  });

  final void Function()? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: BeveledRectangleBorder(
              side: side ?? BorderSide.none,
            )),
        child: child);
  }
}
