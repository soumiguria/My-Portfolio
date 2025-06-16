import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateCard extends StatefulWidget {
  final String certificateGiver;
  final String certificateTopic;
  final String title;
  final String certificateAuthority;
  final String validityDate;
  final String link;
  const CertificateCard({
    super.key,
    required this.certificateGiver,
    required this.certificateTopic,
    required this.title,
    required this.certificateAuthority,
    required this.validityDate,
    required this.link,
  });

  @override
  State<CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<CertificateCard> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        _isHover = true;
      }),
      onExit: (event) => setState(() {
        _isHover = false;
      }),
      child: GestureDetector(
        onTap: () {
          launchUrl(
            Uri.parse(widget.link),
            mode: LaunchMode.inAppBrowserView,
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 80),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                offset:
                    _isHover ? const Offset(-10, -10) : const Offset(-10, -10),
                color: Theme.of(context).colorScheme.shadow,
                blurRadius: _isHover ? 5 : 20,
              ),
              BoxShadow(
                blurRadius: _isHover ? 5 : 20,
                offset: _isHover ? const Offset(10, 10) : const Offset(10, 10),
                color: Theme.of(context).colorScheme.shadow,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/certficate_icons/${widget.certificateGiver}",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/certficate_icons/${widget.certificateTopic}",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.validityDate,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                widget.certificateAuthority,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
