
import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/assets.dart';

class LiveMatchText extends StatelessWidget {
  const LiveMatchText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            "Live Match",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: -1.5,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 5,
                  color: Colors.black12.withOpacity(0.08),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(Assets.pl, height: 30, width: 30),
                SizedBox(width: 3),
                Text(
                  "Premier League",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
