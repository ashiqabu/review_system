import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/db/functions/db_functions.dart';

import 'package:review_system_kottakal_om/screens/mobile/mobile_screen.dart';
import 'package:review_system_kottakal_om/screens/tablet/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllReview();
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return const TabScreen();
      } else {
        return const MobileScreen();
      }
    });
  }
}
