import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/constant.dart';
import 'package:football_live_score_app/model/live_match_model.dart';
import 'package:football_live_score_app/view/match_details/match_details_screen.dart';

class LiveMatchScroll extends StatelessWidget {
  const LiveMatchScroll({super.key, required this.liveMatch});

  final LiveMatch liveMatch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MatchDetailsScreen(liveMatch: liveMatch,)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: liveMatch.color,
          image: liveMatch.backgroundImage,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(
              liveMatch.stadium,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: liveMatch.textColors,
                letterSpacing: -1,
              ),
            ),
            Text(
              "Week ${liveMatch.week}",
              style: TextStyle(
                fontSize: 11,
                color: liveMatch.textColors,
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      liveMatch.homeLogo,
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(height: 10),
                    Text(
                      liveMatch.homeTitle.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: liveMatch.textColors,
                        letterSpacing: -1,
                      ),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 13,
                        color: liveMatch.textColors,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "${liveMatch.time}'",
                      style: TextStyle(
                        color: liveMatch.textColors,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${liveMatch.homeGoal}",
                            style: TextStyle(
                              fontSize: 36,
                              color: liveMatch.homeGoal > liveMatch.awayGoal
                                  ? kprimaryColor
                                  : liveMatch.textColors,
                            ),
                          ),
                          TextSpan(
                            text: " : ",
                            style: TextStyle(
                              fontSize: 36,
                              color: liveMatch.textColors,
                            ),
                          ),
                          TextSpan(
                            text: "${liveMatch.awayGoal}",
                            style: TextStyle(
                              fontSize: 36,
                              color: liveMatch.awayGoal > liveMatch.homeGoal
                                  ? kprimaryColor
                                  : liveMatch.textColors,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      liveMatch.awayLogo,
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(height: 10),
                    Text(
                      liveMatch.awayTitle.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: liveMatch.textColors,
                        letterSpacing: -1,
                      ),
                    ),
                    Text(
                      "Away",
                      style: TextStyle(
                        fontSize: 13,
                        color: liveMatch.textColors,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
