import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const ContactTextfield({super.key, required this.hintText, required this.controller});

  @override
  State<ContactTextfield> createState() => _ContactTextfieldState();
}

class _ContactTextfieldState extends State<ContactTextfield> {
  final FocusNode _focusNode = FocusNode();
  Color _borderColor = Colors.grey;
  double _borderWidth = 2;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus ? Theme.of(context).colorScheme.secondary : Colors.grey;
        _borderWidth = _focusNode.hasFocus ? 3 : 2;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
            width: _borderWidth, color: _borderColor),
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextField(
        controller: widget.controller,
        cursorColor: Theme.of(context).colorScheme.secondary,
        focusNode: _focusNode,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.roboto(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
