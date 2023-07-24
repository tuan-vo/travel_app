import 'package:flutter/material.dart';
import 'package:travel_app/utils/style.dart';

class CardRecommended extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String location;

  const CardRecommended(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(26),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      width: 200,
      height: 250,
      margin: EdgeInsets.only(right: medium),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 0.75),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: medium, bottom: medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: accentLight,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 68,
                      height: 36,
                      child: Center(
                        child: Text(
                          '\$$price',
                          style: pPrice,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: pBold),
                  Text(location, style: pLocation)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
