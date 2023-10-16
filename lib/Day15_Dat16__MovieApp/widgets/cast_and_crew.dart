import 'package:flutter/material.dart';

class CastAndCrew extends StatelessWidget {
  final List cast;

  const CastAndCrew({
    super.key,
    required this.cast,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cast',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins_bold',
              fontSize: 20.0,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 165.0,
            child: ListView.builder(
              itemCount: cast.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return castCard(cast[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  //??
  Widget castCard(final Map cast) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      width: 70.0,
      child: Column(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            cast['name'],
            maxLines: 2,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.white38,
              fontFamily: 'poppins',
            ),
          )
        ],
      ),
    );
  }
}
