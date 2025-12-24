import 'package:flutter/material.dart';
import 'package:football_live_score_app/view/app_home/widgets/home_header_part.dart';
import 'package:football_live_score_app/view/app_home/widgets/live_match.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeScreenHeaderPart(),
      body: Column(children: [LiveMatchText()]),
    );
  }
}
