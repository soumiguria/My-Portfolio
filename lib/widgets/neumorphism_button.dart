import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NeumorphismButton extends StatelessWidget {
  final String link;
  final Widget child;
  const NeumorphismButton({super.key, required this.child, required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        launchUrl(
          Uri.parse(link),
          mode: LaunchMode.inAppBrowserView,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 24,
              color: Theme.of(context).colorScheme.shadow,
              offset: const Offset(10, 10),
            ),
            BoxShadow(
              blurRadius: 24,
              color: Theme.of(context).colorScheme.surface,
              offset: const Offset(-10, -10),
            ),
          ],
          gradient:  LinearGradient(
            stops: const [0,1],
            colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.onPrimaryContainer
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: child,
      ),
    );
  }
}