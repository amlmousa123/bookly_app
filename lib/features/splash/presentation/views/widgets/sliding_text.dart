import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({Key? key, required this.slidinganimation})
      : super(key: key);
  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinganimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidinganimation,
            child: const Text(
              'Open Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
