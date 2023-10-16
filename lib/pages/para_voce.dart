import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class ParaVoce extends StatelessWidget {
  const ParaVoce({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Para você',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 500),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 200),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            );
  }
}