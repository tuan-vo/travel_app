import 'package:flutter/material.dart';
import 'package:travel_app/components/card_top.dart';
import 'package:travel_app/models/destination.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination(
          'assets/images/square-3.png', 'Janpan ', '120', 'Osaka Street'),
      Destination(
          'assets/images/square-1.png', 'Capura ', '100', 'Tokyo Street'),
      Destination(
          'assets/images/square-4.png', 'Janpan ', '120', 'Osaka Street'),
      Destination(
          'assets/images/square-2.png', 'Janpan ', '120', 'Osaka Street'),
    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardTop(
              name: dest.name, image: dest.image, location: dest.location);
        },
      ),
    );
  }
}
