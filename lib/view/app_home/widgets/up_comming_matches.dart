import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/constant.dart';
import 'package:football_live_score_app/model/up_comming_match.dart';

class UpCommingMatches extends StatelessWidget {
  const UpCommingMatches({super.key, required this.upComMatch});

  final UpcomingMatch upComMatch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -8),
                  color: upComMatch.isFavorite ? kprimaryColor : Colors.black12,
                ),
              ],
            ),

            child: Row(
              children: [
                Text(
                  upComMatch.homeTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey.shade700,
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset(upComMatch.homeLogo, height: 45, width: 45),
                    SizedBox(height: 5),
                    Text("Home", style: TextStyle(fontSize: 11)),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      upComMatch.time,
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(upComMatch.date, style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(upComMatch.awayLogo, height: 45, width: 45),
                    SizedBox(height: 5),
                    Text("Away", style: TextStyle(fontSize: 11)),
                  ],
                ),
                Spacer(),
                Text(
                  upComMatch.awayTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          if (upComMatch.isFavorite)
            Positioned(
              top: 8,
              left: 12,
              child: Icon(Icons.star, color: Colors.amberAccent),
            ),
        ],
      ),
    );
  }
}
