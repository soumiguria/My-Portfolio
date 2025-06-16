import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) => 
  MediaQuery.of(context).size.width < 850;
  
  static bool isTablet(BuildContext context) => 
  MediaQuery.of(context).size.width < 1100 && 
  MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) => 
  MediaQuery.of(context).size.width >= 1100;   
}

// Desktop: > 1100px
// Tablet: > 850px & < 1100px 
// Mobile: < 850px 