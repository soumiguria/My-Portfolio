import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/neumorphism_button.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 24),
        NeumorphismButton(
            link: "https://github.com/soumiguria",
            child: SvgPicture.asset(
              "assets/icons/github.svg",
              height: 32,
              width: 32,
              color: Theme.of(context).colorScheme.secondary,
            )),
        const SizedBox(height: 24),
        NeumorphismButton(
            link: "https://x.com/guria_soumi",
            child: SvgPicture.asset(
              "assets/icons/twitter.svg",
              height: 32,
              width: 32,
              color: Theme.of(context).colorScheme.secondary,
            )),
        const SizedBox(height: 24),
        NeumorphismButton(
            link: "https://www.linkedin.com/in/soumi-guria-8882b224a/",
            child: SvgPicture.asset(
              "assets/icons/linkedin.svg",
              height: 32,
              width: 32,
              color: Theme.of(context).colorScheme.secondary,
            )),
      ],
    );
  }
}
