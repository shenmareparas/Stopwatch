import 'package:flutter/material.dart';
import '../../res/neumorphic_theme.dart';

class CircularSoftButton extends StatelessWidget {
  final double radius;
  final Widget? icon;
  final Color lightColor;
  const CircularSoftButton({
    super.key,
    double? radius,
    this.icon,
    this.lightColor = Colors.white,
  }) : radius = radius ?? 32;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).extension<NeumorphicTheme>()!.backgroundColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).extension<NeumorphicTheme>()!.shadowColor,
                  offset: const Offset(8, 6),
                  blurRadius: 12,
                ),
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).extension<NeumorphicTheme>()!.lightShadowColor,
                  offset: const Offset(-8, -6),
                  blurRadius: 12,
                ),
              ],
            ),
          ),
          Positioned.fill(child: icon!),
        ],
      ),
    );
  }
}
