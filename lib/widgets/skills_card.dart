import 'package:flutter/material.dart'; 
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/data/skills_data.dart';

class SkillsCard extends StatefulWidget {
  final String imageFileName;
  const SkillsCard({super.key, required this.imageFileName});

  @override
  State<SkillsCard> createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isPressed = true;
        });
      },
      onExit: (event) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 80),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: isPressed ? 5 : 20,
              offset: isPressed ? const Offset(-10, -10) : const Offset(-10,-10),
              color: Theme.of(context).colorScheme.surface,
            ),
            BoxShadow(
              blurRadius: isPressed ? 5 : 20,
              offset: isPressed ? const Offset(10, 10) : const Offset(10,10),
              color: Theme.of(context).colorScheme.shadow,
            ),
            
          ]
        ),
        child: SvgPicture.asset(
          "$skillsIconPath${widget.imageFileName}",
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}