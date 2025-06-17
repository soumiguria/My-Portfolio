import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Snowflake {
  final double x;
  final double y;
  final double size;
  final double speed;
  final double opacity;

  Snowflake({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
  });
}

class SnowfallBackground extends StatefulWidget {
  final Widget child;

  const SnowfallBackground({super.key, required this.child});

  @override
  State<SnowfallBackground> createState() => _SnowfallBackgroundState();
}

class _SnowfallBackgroundState extends State<SnowfallBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Snowflake> _snowflakes = [];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();

    // Generate snowflakes
    for (int i = 0; i < 100; i++) {
      _snowflakes.add(
        Snowflake(
          x: _random.nextDouble(),
          y: _random.nextDouble(),
          size: _random.nextDouble() * 3 + 1,
          speed: _random.nextDouble() * 0.5 + 0.2,
          opacity: _random.nextDouble() * 0.5 + 0.3,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        IgnorePointer(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: SnowfallPainter(
                  snowflakes: _snowflakes,
                  progress: _controller.value,
                ),
                size: Size.infinite,
              );
            },
          ),
        ),
      ],
    );
  }
}

class SnowfallPainter extends CustomPainter {
  final List<Snowflake> snowflakes;
  final double progress;

  SnowfallPainter({
    required this.snowflakes,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    for (var snowflake in snowflakes) {
      final y = (snowflake.y + progress * snowflake.speed) % 1.0;
      final x = snowflake.x + sin(progress * 2 * pi + snowflake.x * 10) * 0.02;

      canvas.drawCircle(
        Offset(x * size.width, y * size.height),
        snowflake.size,
        paint..color = Colors.white.withOpacity(snowflake.opacity),
      );
    }
  }

  @override
  bool shouldRepaint(SnowfallPainter oldDelegate) => true;
}
