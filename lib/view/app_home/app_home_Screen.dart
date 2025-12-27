import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/constant.dart';
import 'package:football_live_score_app/model/live_match_model.dart';
import 'package:football_live_score_app/model/up_comming_match.dart';
import 'package:football_live_score_app/view/app_home/widgets/home_header_part.dart';
import 'package:football_live_score_app/view/app_home/widgets/live_match_scroll.dart';
import 'package:football_live_score_app/view/app_home/widgets/live_match_text.dart';
import 'package:football_live_score_app/view/app_home/widgets/up_comming_matches.dart';

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
      body: Column(
        children: [
          //live match text
          LiveMatchText(),

          //live match slider
          SizedBox(
            height: 230,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemCount: liveMatches.length,
              itemBuilder: (context, index) {
                final liveMatch = liveMatches[index];
                return LiveMatchScroll(liveMatch: liveMatch);
              },
            ),
          ),

          // Up Comming Matches Text
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Row(
              children: [
                Text(
                  "Up-Comming Matches",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: kprimaryColor),
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //upcomming match list view
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: upcomingMatches.length,
                itemBuilder: (context, index) {
                  final upComMatch = upcomingMatches[index];
                  return UpCommingMatches(upComMatch: upComMatch);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}