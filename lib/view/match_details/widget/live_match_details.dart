import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/assets.dart';
import 'package:football_live_score_app/constant/constant.dart';
import 'package:football_live_score_app/model/live_match_model.dart';

class LiveMatchDetails extends StatefulWidget {
  final LiveMatch liveMatch;
  const LiveMatchDetails({super.key, required this.liveMatch});

  @override
  State<LiveMatchDetails> createState() => _LiveMatchDetailsState();
}

class _LiveMatchDetailsState extends State<LiveMatchDetails> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 5, right: 20, left: 20,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.liveMatch.color,
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -230,
                    child: Transform.rotate(
                      angle: 45,
                      child: Opacity(
                        opacity: 0.2,
                        child: Image.asset(Assets.cl),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          widget.liveMatch.stadium,
                          style: TextStyle(
                            fontSize: 14,
                            color: widget.liveMatch.textColors,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              height: 110,
                              width: 110,
                              widget.liveMatch.homeLogo,
                              fit: BoxFit.cover,
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.amber[50],
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 2),
                                      Icon(
                                        Icons.circle,
                                        color: kprimaryColor,
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Live",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: kprimaryColor,
                                        ),
                                      ),
                                      SizedBox(width: 2),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      color: widget.liveMatch.textColors,
                                      fontSize: 42,
                                      height: 0,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: widget.liveMatch.homeGoal
                                            .toString(),
                                        style: TextStyle(
                                          color:
                                              widget.liveMatch.homeGoal >
                                                  widget.liveMatch.awayGoal
                                              ? kprimaryColor
                                              : widget.liveMatch.textColors,
                                        ),
                                      ),
                                      TextSpan(text: " : ".toString()),
                                      TextSpan(
                                        text: widget.liveMatch.awayGoal
                                            .toString(),
                                        style: TextStyle(
                                          color:
                                              widget.liveMatch.awayGoal >
                                                  widget.liveMatch.homeGoal
                                              ? kprimaryColor
                                              : widget.liveMatch.textColors,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              height: 110,
                              width: 110,
                              widget.liveMatch.awayLogo,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          height: 20,
                          child: Stack(
                            children: [
                              Container(
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                              Positioned(
                                right: 60,
                                left: 0,
                                top: 0,
                                bottom: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kprimaryColor,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "ST",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: MediaQuery.of(context).size.width / 2 -
                              MediaQuery.of(context).size.width / 8,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "MT",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -1,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "FT",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}