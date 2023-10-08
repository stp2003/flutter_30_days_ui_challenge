import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_challenge/Day7_Day8__TravelApp/screens/detail/widgets/hotel_info.dart';

class Day8DetailScreen extends StatelessWidget {
  const Day8DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 225.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://indonesia.tripcanvas.co/wp-content/uploads/2020/08/Bali-pool-villa-feature.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 12.0,
                top: 15.0,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_sharp),
                      ),
                    ),
                    const SizedBox(width: 230.0),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white70,
                            ),
                          ),
                          child: const Icon(Icons.share),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white70,
                            ),
                          ),
                          child: const Icon(Icons.favorite_border_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 205.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 650.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: const HotelInfo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
