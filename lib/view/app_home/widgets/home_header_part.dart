
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreenHeaderPart extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenHeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            borderOnForeground: true,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Iconsax.category),
            ),
          ),
        ),
        Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Default text color
                  letterSpacing: -2,
                ),
                children: [
                  TextSpan(text: "S"),
                  WidgetSpan(
                    alignment:
                        PlaceholderAlignment.middle, 
                    child: Icon(
                      Icons.sports_soccer,
                      size: 25,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(text: "ccer"),
                  TextSpan(
                    text: "  Nerds",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Badge(
                textColor: Colors.amberAccent,
                child: Icon(Iconsax.notification),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
  // 5. This is required for custom AppBars
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
