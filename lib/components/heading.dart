import 'package:flutter/material.dart';
import 'package:travel_app/utils/style.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: text,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            ),
            SizedBox(width: small),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome', style: p1),
                Text('Spellthorn', style: heading3),
              ],
            ),
          ],
        ),
        Icon(Icons.notifications, color: icon, size: 28)
      ],
    );
  }
}
