import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/education_data.dart';
import 'package:portfolio/data/experience_data.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineCustomWidget extends StatelessWidget {
  const TimelineCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimelineTile(
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        indicatorStyle: IndicatorStyle(
          indicator: SvgPicture.asset(
            "assets/icons/down_arrow.svg",
            height: 24,
            width: 24,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        alignment: TimelineAlign.center,
        isFirst: true,
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isFirst: false,
        indicatorStyle: IndicatorStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        startChild: TimelineCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experienceData[0].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experienceData[0].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isFirst: false,
        indicatorStyle: IndicatorStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        endChild: TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experienceData[1].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experienceData[1].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experienceData[1].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isLast: true,
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "icons/up_arrow.svg",
          height: 24,
          width: 24,
          color: Theme.of(context).colorScheme.secondary,
        )),
      ),
    ]);
  }
}

class EducationCustomWidget extends StatelessWidget {
  const EducationCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimelineTile(
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "assets/icons/down_arrow.svg",
          height: 24,
          width: 24,
          color: Theme.of(context).colorScheme.secondary,
        )),
        alignment: TimelineAlign.center,
        isFirst: true,
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isFirst: false,
        indicatorStyle: IndicatorStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        startChild: TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                educationData[0].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[0].institution,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[0].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[0].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isLast: true,
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "assets/icons/up_arrow.svg",
          height: 24,
          width: 24,
          color: Theme.of(context).colorScheme.secondary,
        )),
      ),
      TimelineTile(
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "assets/icons/down_arrow.svg",
          height: 24,
          width: 24,
          color: Theme.of(context).colorScheme.secondary,
        )),
        alignment: TimelineAlign.center,
        isFirst: true,
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        afterLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isFirst: false,
        indicatorStyle: IndicatorStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        startChild: TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                educationData[1].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[1].institution,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[1].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                educationData[1].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      TimelineTile(
        beforeLineStyle: LineStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
        alignment: TimelineAlign.center,
        isLast: true,
        indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
          "assets/icons/up_arrow.svg",
          height: 24,
          width: 24,
          color: Theme.of(context).colorScheme.secondary,
        )),
      ),
    ]);
  }
}

class TimelineCard extends StatelessWidget {
  final Widget child;
  const TimelineCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 60, left: 32),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          width: 1,
        ),
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(-10, -10),
            color: Theme.of(context).colorScheme.surface,
          ),
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(10, 10),
            color: Theme.of(context).colorScheme.shadow,
          ),
        ],
      ),
      child: child,
    );
  }
}

class SingleSideTimeline extends StatefulWidget {
  const SingleSideTimeline({super.key});

  @override
  State<SingleSideTimeline> createState() => _SingleSideTimelineState();
}

class _SingleSideTimelineState extends State<SingleSideTimeline> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          indicatorStyle: IndicatorStyle(
              indicator: SvgPicture.asset(
            "assets/icons/down_arrow.svg",
            height: 24,
            width: 24,
            color: Theme.of(context).colorScheme.secondary,
          )),
          alignment: TimelineAlign.center,
          isFirst: true,
        ),
        TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                experienceData[0].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experienceData[0].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                experienceData[0].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          indicatorStyle: IndicatorStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                experienceData[1].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experienceData[1].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                experienceData[1].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          indicatorStyle: IndicatorStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        TimelineTile(
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          alignment: TimelineAlign.center,
          isLast: true,
          indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
              "assets/icons/up_arrow.svg",
              height: 24,
              width: 24,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}

class EducationSingleSideTimeline extends StatefulWidget {
  const EducationSingleSideTimeline({super.key});

  @override
  State<EducationSingleSideTimeline> createState() =>
      _EducationSingleSideTimelineState();
}

class _EducationSingleSideTimelineState
    extends State<EducationSingleSideTimeline> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          indicatorStyle: IndicatorStyle(
              indicator: SvgPicture.asset(
            "assets/icons/down_arrow.svg",
            height: 24,
            width: 24,
            color: Theme.of(context).colorScheme.secondary,
          )),
          alignment: TimelineAlign.center,
          isFirst: true,
        ),
        TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                educationData[0].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[0].institution,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[0].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[0].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        TimelineTile(
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
          alignment: TimelineAlign.center,
          isLast: true,
          indicatorStyle: IndicatorStyle(
            indicator: SvgPicture.asset(
              "assets/icons/up_arrow.svg",
              height: 24,
              width: 24,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        TimelineCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                educationData[1].title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[1].institution,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[1].time,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textAlign: TextAlign.center,
                educationData[1].description,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
