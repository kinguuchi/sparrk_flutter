import 'package:flutter/material.dart';
import 'package:sparrk/templates/index.dart';
import 'package:sparrk/types/types.dart';

class SportsCard extends StatefulWidget {
  final Facility facility;

  const SportsCard({required this.facility});

  @override
  State<SportsCard> createState() => _SportsCardState();
}

class _SportsCardState extends State<SportsCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    double facilityNameSize = (screen < tablet) ? 25 : (screen < largeDesktop) ? 15 : 25;
    double addressTextSize = (screen < tablet) ? 15 : (screen < largeDesktop) ? 12 : 15;
    double rentTextSize = (screen < tablet) ? 18 : (screen < largeDesktop) ? 15 : 18;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:
                        Image.asset(widget.facility.image, fit: BoxFit.cover, width: 400),
                    ),
                    Positioned(
                      top:
                          10, // Adjust this value to position the heart icon vertically
                      right:
                          10, // Adjust this value to position the heart icon horizontally
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite,
                              size: 24,
                              color: isFavorite ? Colors.red : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                widget.facility.name,
                style: TextStyle(
                    fontSize: facilityNameSize, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                widget.facility.address,
                style: TextStyle(
                    fontSize: addressTextSize, fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.facility.opening_time,
                  style: TextStyle(fontSize: addressTextSize)),
              Text(
                '${widget.facility.rent} per hour',
                style: TextStyle(
                    fontSize: rentTextSize, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
