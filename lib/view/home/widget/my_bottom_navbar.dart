import 'package:flutter/material.dart';
import 'package:football_live_score_app/constant/constant.dart';

class MyBottomNavbar extends StatefulWidget {
  final String title;
  final bool isActive;
  final IconData icon;
  final VoidCallback onPressed;
  const MyBottomNavbar({
    super.key,
    required this.title,
    required this.isActive,
    required this.icon,
    required this.onPressed,
  });

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widget.isActive ? kprimaryColor : Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
        ),
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 30,
              color: widget.isActive ? Colors.white : Colors.grey.shade400,
            ),
            if (widget.isActive)
              Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
          ],
        ),
      ),
    );
  }
}
