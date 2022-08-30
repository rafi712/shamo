import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';

class PrimaryButton extends StatelessWidget {
  final Size? size;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Function()? onPressed;

  const PrimaryButton({
    Key? key,
    this.size,
    this.padding,
    this.onPressed,
    this.borderRadius,
    required this.child, 
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: primaryColor,
          minimumSize: size,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12)
          ),
        ),
        child: child,
      );
  }
}