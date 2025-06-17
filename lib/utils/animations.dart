import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

final fadeInAnimation = Animate()
    .fadeIn(duration: const Duration(milliseconds: 800))
    .slideY(begin: 0.2, end: 0, duration: const Duration(milliseconds: 800));

final scaleInAnimation = Animate()
    .scale(
      begin: const Offset(0.8, 0.8),
      end: const Offset(1, 1),
      duration: const Duration(milliseconds: 600),
    )
    .fadeIn(duration: const Duration(milliseconds: 600));

final slideInAnimation = Animate()
    .slideX(
      begin: 0.2,
      end: 0,
      duration: const Duration(milliseconds: 800),
    )
    .fadeIn(duration: const Duration(milliseconds: 800));

final bounceInAnimation = Animate()
    .scale(
      begin: const Offset(0.8, 0.8),
      end: const Offset(1, 1),
      duration: const Duration(milliseconds: 600),
    )
    .fadeIn(duration: const Duration(milliseconds: 600))
    .then()
    .shake(duration: const Duration(milliseconds: 400));
