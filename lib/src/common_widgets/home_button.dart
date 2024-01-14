import 'package:flutter/material.dart';

class HomeButtonOutlined extends StatelessWidget {
  const HomeButtonOutlined(
      {super.key, required this.color, required this.child, this.onTap});

  final Color color;
  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 5, color: color),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeButtonFilled extends StatelessWidget {
  const HomeButtonFilled({
    super.key,
    required this.color,
    required this.child,
    this.onTap,
  });

  final Color color;
  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Container(
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
