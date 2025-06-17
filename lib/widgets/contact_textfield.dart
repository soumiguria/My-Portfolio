import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const ContactTextfield(
      {super.key, required this.hintText, required this.controller});

  @override
  State<ContactTextfield> createState() => _ContactTextfieldState();
}

class _ContactTextfieldState extends State<ContactTextfield> {
  final FocusNode _focusNode = FocusNode();
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(
            width: _focusNode.hasFocus || _isHovered ? 2 : 1,
            color: _focusNode.hasFocus || _isHovered
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: (_focusNode.hasFocus || _isHovered)
                  ? Theme.of(context).colorScheme.secondary.withOpacity(0.2)
                  : Colors.transparent,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          controller: widget.controller,
          cursorColor: Theme.of(context).colorScheme.secondary,
          focusNode: _focusNode,
          style: GoogleFonts.roboto(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
