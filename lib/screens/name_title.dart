import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/responsive.dart';

class CenterPanel extends StatelessWidget {
  const CenterPanel({super.key});

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
          Text(
            textAlign: TextAlign.center,
            "Soumi Guria".toUpperCase(),
            style: GoogleFonts.architectsDaughter(
              fontSize: titleSize,
              letterSpacing: (isMobile) ? 5 : 10,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "and I'm a",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: subtitleSize,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 400,
            child: CarouselSlider(
              options: CarouselOptions(
                scrollDirection: Axis.vertical,
                height: carouselheight,
                initialPage: 0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
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
        ],
      ),
    );
  }
}
