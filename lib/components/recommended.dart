import 'package:flutter/material.dart';
import 'package:travel_app/components/card_rec.dart';
import 'package:travel_app/models/destination.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/square-1.png', 'Janpan Temple', '120',
          'Osaka Street, Japan'),
      Destination('assets/images/square-2.png', 'Capura Mero', '100',
          'Tokyo Street, Japan'),
      Destination('assets/images/square-3.png', 'Janpan Temple', '120',
          'Osaka Street, Japan'),
      Destination('assets/images/square-4.png', 'Janpan Temple', '120',
          'Osaka Street, Japan'),
    ];
    print(destinations);
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardRecommended(
            image: dest.image,
            name: dest.name,
            price: dest.price,
            location: dest.location,
          );
        },
      ),
    );
  }
}
