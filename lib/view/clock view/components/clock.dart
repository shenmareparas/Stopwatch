import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

import '../../../res/neumorphic_theme.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width,
            ),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).extension<NeumorphicTheme>()!.shadowColor,
                Theme.of(
                  context,
                ).extension<NeumorphicTheme>()!.lightShadowColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
          child: AnalogClock(
            isLive: true,
            hourHandColor: Colors.black,
            minuteHandColor: Colors.black54,
            numberColor: Theme.of(
              context,
            ).extension<NeumorphicTheme>()!.textColor,
            secondHandColor: Colors.pinkAccent,
            showNumbers: true,
            showAllNumbers: true,
            showDigitalClock: false,
          ),
        ),
      ],
    );
  }
}
