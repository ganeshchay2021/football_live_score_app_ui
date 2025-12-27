import 'package:flutter/material.dart';
import 'package:football_live_score_app/model/live_match_model.dart';
import 'package:football_live_score_app/view/match_details/widget/live_match_details.dart';
import 'package:football_live_score_app/view/match_details/widget/live_match_status.dart';
import 'package:iconsax/iconsax.dart';

class MatchDetailsScreen extends StatefulWidget {
  final LiveMatch liveMatch;
  const MatchDetailsScreen({super.key, required this.liveMatch});

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  final List<String> tabs = ["Status", "H2H", "Table"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: headerPart(context),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 120),
              padding: EdgeInsets.only(top: 160, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey)],
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(tabs.length, (index) {
                      final tabsText = tabs[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 80,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: selectedIndex == index
                                ? Colors.amberAccent
                                : Colors.grey.shade200,
                          ),
                          child: Text(
                            tabsText,
                            style: TextStyle(
                              fontSize: 16,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: selectedIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 20),
                  LiveMatchStatus(
                    homeState: widget.liveMatch.shotOnTarget,
                    awayState: widget.liveMatch.shotOnTarget * 2,
                    title: "Shots on Target",
                    isWinner: false,
                    homeValue: 0.3,
                    awayValue: 0.7,
                  ),
                  SizedBox(height: 10,),
                  LiveMatchStatus(
                    homeState: widget.liveMatch.homeGoal,
                    awayState: widget.liveMatch.homeGoal * 3,
                    title: "Goals",
                    isWinner: true,
                    homeValue: 0.55,
                    awayValue: 0.45,
                  ),
                  LiveMatchStatus(
                    homeState: widget.liveMatch.awayGoal,
                    awayState: widget.liveMatch.awayGoal * 2,
                    title: "Possession",
                    isWinner: false,
                    homeValue: 0.2,
                    awayValue: 0.6,
                  ),
                  LiveMatchStatus(
                    homeState: widget.liveMatch.yelloCard,
                    awayState: widget.liveMatch.yelloCard * 2,
                    title: "Yellow Card",
                    isWinner: false,
                    homeValue: 0.15,
                    awayValue: 0.20,
                  ),
                  LiveMatchStatus(
                    homeState: widget.liveMatch.redCard,
                    awayState: widget.liveMatch.redCard * 2,
                    title: "Red Card",
                    isWinner: true,
                    homeValue: 0.47,
                    awayValue: 0.37,
                  ),
                  // // LiveMatchStatus(
                  // //   homeState: widget.liveMatch.corner,
                  // //   awayState: widget.liveMatch.corner * 2,
                  // //   title: "Corners Kicks",
                  // //   isWinner: false,
                  // //   homeValue: 0.7,
                  // //   awayValue: 0.3,
                  // // ),
                ],
              ),
            ),
            LiveMatchDetails(liveMatch: widget.liveMatch),
          ],
        ),
      ),
    );
  }

  //page header Part
  AppBar headerPart(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[50],
      automaticallyImplyLeading: false,
      actions: [
        SizedBox(width: 20),
        Padding(
          padding: EdgeInsetsGeometry.all(5),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Material(
              elevation: 2,
              borderOnForeground: true,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Iconsax.arrow_square_left),
              ),
            ),
          ),
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Champions League",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                wordSpacing: 2,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
                height: 0,
              ),
            ),
            Text(
              "Group Stage".toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                wordSpacing: 2,
                color: Colors.black38,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
                height: 0,
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsetsGeometry.all(5),
          child: Material(
            elevation: 2,
            borderOnForeground: true,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.more_vert_rounded),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
