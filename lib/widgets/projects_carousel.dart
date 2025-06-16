import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String projectImage;
  final String projectTitle;
  final String link;
  const ProjectCard(
      {super.key, required this.projectImage, required this.projectTitle, required this.link});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isCardHovered = false;
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return MouseRegion(
      onEnter: (event) => setState(() {
        _isCardHovered = true;
      }),
      onExit: (event) => setState(() {
        _isCardHovered = false;
      }),
      child: GestureDetector(
        onTap: (){
          launchUrl(
            Uri.parse(widget.link),
            mode: LaunchMode.inAppBrowserView,
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(10, 10),
                  color: Theme.of(context).colorScheme.shadow,
                  blurRadius: 5,
                ),
                BoxShadow(
                  offset: const Offset(-10, -10),
                  color: Theme.of(context).colorScheme.surface,
                  blurRadius: 5,
                )
              ]),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    (_isCardHovered || !isDesktop) ? Colors.transparent : Colors.grey,
                    BlendMode.saturation,
                  ),
                  child: Image.asset(
                    widget.projectImage,
                    fit: BoxFit.cover,
                    width: 500,
                    height: 300,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: (_isCardHovered || !isDesktop)
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          widget.projectTitle,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollButtons extends StatefulWidget {
  final IconData icon;
  final Function() onTap;
  const ScrollButtons({super.key, required this.icon, required this.onTap});

  @override
  State<ScrollButtons> createState() => _ScrollButtonsState();
}

class _ScrollButtonsState extends State<ScrollButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: const Color.fromARGB(255, 209, 209, 209), width: 0.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              color: Theme.of(context).colorScheme.shadow,
              blurRadius: 5,
            ),
            BoxShadow(
              offset: const Offset(-5, -5),
              color: Theme.of(context).colorScheme.surface,
              blurRadius: 5,
            )
          ],
        ),
        child: Center(child: Icon(widget.icon)),
      ),
    );
  }
}
