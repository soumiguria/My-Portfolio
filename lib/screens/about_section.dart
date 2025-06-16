import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/skills_data.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/skills_card.dart';
import 'package:portfolio/widgets/timeline_widget.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  bool _pythonHovered = false;
  bool _uiuxHovered = false;
  bool _threedDHovered = false;
  bool _flutterHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);
    int gridRowCount;
    double gridHeight;

    if (isDesktop) {
      gridRowCount = 6;
      gridHeight = 424;
    } else if (isTablet) {
      gridRowCount = 4;
      gridHeight = 792;
    } else {
      gridRowCount = 2;
      gridHeight = 1400;
    }

    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.of(context).size.width / 1.5, // Or some fixed width
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About Me".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Results-driven Computer Science and Engineering professional with a strong foundation in Programming and Problem-Solving. Adept in ",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _uiuxHovered = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _uiuxHovered = false;
                          });
                        },
                        child: Text(
                          " UI/UX Design,",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: _uiuxHovered
                                ? Theme.of(context).colorScheme.tertiary
                                : Theme.of(context).colorScheme.secondary,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _flutterHovered = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _flutterHovered = false;
                          });
                        },
                        child: Text(
                          " Cross-Platform App Development.",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: _flutterHovered
                                ? Theme.of(context).colorScheme.tertiary
                                : Theme.of(context).colorScheme.secondary,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                        text:
                            " Highly skilled in leveraging emerging technologies to deliver innovative solutions. Eager to contribute technical expertise and passion for programming to a dynamic software development team.")
                  ]),
            ),
            const SizedBox(height: 100),
            Text(
              "Skills".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              // (mainAxisExtent * (length/gridRowCount)) + (mainAxisSpacing * (length/gridRowCount + 1))
              height: gridHeight,
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: skillsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridRowCount,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    mainAxisExtent: 120,
                  ),
                  itemBuilder: (context, index) {
                    return SkillsCard(imageFileName: skillsList[index]);
                  }),
            ),
            const SizedBox(height: 100),
            Text(
              "Experience".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            isDesktop
                ? const TimelineCustomWidget()
                : const SingleSideTimeline(),
            const SizedBox(height: 100),
            Text(
              "Education".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            isDesktop
                ? const EducationCustomWidget()
                : const EducationSingleSideTimeline(),
          ],
        ),
      ),
    );
  }
}
