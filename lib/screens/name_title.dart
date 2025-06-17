import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/responsive.dart';

class CenterPanel extends StatefulWidget {
  const CenterPanel({super.key});

  @override
  State<CenterPanel> createState() => _CenterPanelState();
}

class _CenterPanelState extends State<CenterPanel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);
    double titleSize;
    double subtitleSize;
    double carouselheight;
    double carouselSize;

    if (isDesktop) {
      titleSize = 60;
      subtitleSize = 32;
      carouselSize = 48;
      carouselheight = 90;
    } else if (isTablet) {
      titleSize = 46;
      subtitleSize = 26;
      carouselSize = 32;
      carouselheight = 70;
    } else {
      titleSize = 32;
      subtitleSize = 20;
      carouselSize = 24;
      carouselheight = 50;
    }

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Text(
                textAlign: TextAlign.center,
                "Soumi Guria".toUpperCase(),
                style: GoogleFonts.architectsDaughter(
                  fontSize: titleSize,
                  letterSpacing: isMobile ? 5 : 10,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Text(
                "and I'm a",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: subtitleSize,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: SizedBox(
                width: 400,
                child: CarouselSlider(
                  options: CarouselOptions(
                    scrollDirection: Axis.vertical,
                    height: carouselheight,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 500),
                    autoPlayInterval: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                  ),
                  items: [
                    Text(
                      "Flutter Developer",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: carouselSize,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Web Developer",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: carouselSize,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Full stack Android Dev",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: carouselSize,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle style;

  const AnimatedText({
    super.key,
    required this.text,
    this.textAlign,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
    );
  }
}

class AnimatedCarousel extends StatelessWidget {
  final double width;
  final double height;
  final List<String> items;
  final TextStyle style;

  const AnimatedCarousel({
    super.key,
    required this.width,
    required this.height,
    required this.items,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: width,
      child: CarouselSlider(
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          height: height,
          initialPage: 0,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          autoPlayInterval: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
        ),
        items: items
            .map((text) => Text(
                  text,
                  textAlign: TextAlign.center,
                  style: style,
                ))
            .toList(),
      ),
    );
  }
}

class CustomAnimatedContainer extends StatelessWidget {
  final double width;
  final Widget child;

  const CustomAnimatedContainer({
    super.key,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: child,
    );
  }
}
