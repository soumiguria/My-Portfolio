import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portfolio/data/projects_data.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/projects_carousel.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final InfiniteScrollController _controllerProgramming =
      InfiniteScrollController();
  final InfiniteScrollController _controllerUIUX = InfiniteScrollController();
  final InfiniteScrollController _controller3D = InfiniteScrollController();

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 60),
            Text(
              "Programming Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              height: isMobile ? 240 : 300,
              child: InfiniteCarousel.builder(
                controller: _controllerProgramming,
                itemCount: programmingData.length,
                itemExtent: isMobile ? 390 : 500,
                velocityFactor: 0.1,
                center: true,
                anchor: 0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index, realindex) {
                  return ProjectCard(
                    projectImage: programmingData[index].imagePath,
                    projectTitle: programmingData[index].title,
                    link: programmingData[index].link,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScrollButtons(
                    icon: Icons.arrow_back_ios_new,
                    onTap: () => _controllerProgramming.previousItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                  ScrollButtons(
                    icon: Icons.arrow_forward_ios,
                    onTap: () => _controllerProgramming.nextItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Text(
              "UI/UX Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              height: isMobile ? 240 : 300,
              child: InfiniteCarousel.builder(
                controller: _controllerUIUX,
                itemCount: uxProjectData.length,
                itemExtent: isMobile ? 390 : 500,
                velocityFactor: 0.1,
                center: true,
                anchor: 0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index, realindex) {
                  return ProjectCard(
                    projectImage: uxProjectData[index].imagePath,
                    projectTitle: uxProjectData[index].title,
                    link: uxProjectData[index].link,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScrollButtons(
                    icon: Icons.arrow_back_ios_new,
                    onTap: () => _controllerUIUX.previousItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                  ScrollButtons(
                    icon: Icons.arrow_forward_ios,
                    onTap: () => _controllerUIUX.nextItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Text(
              "3D Projects".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 24, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              height: isMobile ? 240 : 300,
              child: InfiniteCarousel.builder(
                controller: _controller3D,
                itemCount: 5,
                itemExtent: isMobile ? 390 : 500,
                velocityFactor: 0.1,
                center: true,
                anchor: 0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index, realindex) {
                  return ProjectCard(
                    projectImage: threeDProjectData[index].imagePath,
                    projectTitle: threeDProjectData[index].title,
                    link: threeDProjectData[index].link,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScrollButtons(
                    icon: Icons.arrow_back_ios_new,
                    onTap: () => _controller3D.previousItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                  ScrollButtons(
                    icon: Icons.arrow_forward_ios,
                    onTap: () => _controller3D.nextItem(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
