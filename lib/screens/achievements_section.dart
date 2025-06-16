import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/certificate_data.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/certificate_card.dart';

class AchievementsSection extends StatefulWidget {
  const AchievementsSection({super.key});

  @override
  State<AchievementsSection> createState() => _AchievementsSectionState();
}

class _AchievementsSectionState extends State<AchievementsSection> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    int crossAxisCount;
    double height;
    if (isDesktop) {
      crossAxisCount = 3;
      height = 520;
    } else if (isMobile) {
      crossAxisCount = 1;
      height = 1600;
    } else {
      crossAxisCount = 2;
      height = 790;
    }
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.28,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Certificates".toUpperCase(),
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 48),
            SizedBox(
              // mainAxisExtent * (length / crossAxisCount) + (mainAxisSpacing * (length/crossAxisCount + 1))
              height: height, 
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: certificateData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context, index) {
                    return CertificateCard(
                      certificateGiver: certificateData[index].certificateGiver,
                      certificateTopic: certificateData[index].certificateTopic,
                      title: certificateData[index].title,
                      certificateAuthority: certificateData[index].certificateAuthority,
                      validityDate: certificateData[index].validityDate,
                      link: certificateData[index].link,
                    );
                  }),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
