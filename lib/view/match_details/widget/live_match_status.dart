import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/constant.dart';

class LiveMatchStatus extends StatefulWidget {
  final int homeState, awayState;
  final String title;
  final bool isWinner;
  final double homeValue, awayValue;

  const LiveMatchStatus({
    super.key,
    required this.homeState,
    required this.awayState,
    required this.title,
    required this.isWinner,
    required this.homeValue,
    required this.awayValue,
  });

  @override
  State<LiveMatchStatus> createState() => _LiveMatchStatusState();
}

class _LiveMatchStatusState extends State<LiveMatchStatus> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.homeState.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: widget.isWinner ? kprimaryColor : ksecondryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                widget.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                widget.awayState.toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: !widget.isWinner ? kprimaryColor : ksecondryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: RotatedBox(
                  quarterTurns: 2,
                  child: LinearProgressIndicator(
                    color: Colors.grey.shade100,
                    value: widget.homeValue,
                    minHeight: 10,
                    valueColor: AlwaysStoppedAnimation(
                      widget.awayValue > widget.homeValue
                          ? kprimaryColor
                          : ksecondryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  color: Colors.grey.shade100,
                  value: widget.awayValue,
                  minHeight: 10,
                  valueColor: AlwaysStoppedAnimation(
                    widget.isWinner
                        ? kprimaryColor
                        : ksecondryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
