class PlanetsModel {
  final String? image;
  final String? name;
  final double? size;
  final int? distanceFromSun;

  PlanetsModel({
    required this.size,
    required this.distanceFromSun,
    required this.image,
    required this.name,
  });
}

List<PlanetsModel> planets = [
  PlanetsModel(
    image: 'mercury.png',
    name: 'Mercury',
    size: 4879,
    distanceFromSun: 57900000,
  ),
  PlanetsModel(
    image: 'venus.png',
    name: 'Venus',
    size: 12104,
    distanceFromSun: 108200000,
  ),
  PlanetsModel(
    image: 'earth.png',
    name: 'Earth',
    size: 12756,
    distanceFromSun: 149600000,
  ),
  PlanetsModel(
    image: 'mars.png',
    name: 'Mars',
    size: 6805,
    distanceFromSun: 227900000,
  ),
  PlanetsModel(
    image: 'jupiter.png',
    name: 'Jupiter',
    size: 142984,
    distanceFromSun: 778300000,
  ),
  PlanetsModel(
    image: 'saturn.png',
    name: 'Saturn',
    size: 120536,
    distanceFromSun: 1426720000,
  ),
  PlanetsModel(
      image: 'uranus.png',
      name: 'Uranus',
      size: 51118,
      distanceFromSun: 2870970000),
  PlanetsModel(
    image: 'neptune.png',
    name: 'Neptune',
    size: 49528,
    distanceFromSun: 4498250000,
  ),
  PlanetsModel(
    image: 'pluto.png',
    name: 'Pluto',
    size: 2376.6,
    distanceFromSun: 5906376272,
  ),
];
String astronomicalNews =
    'Around the world, people have long gazed up at the stars and found meaning in them. The Renaissance polymath Nicolaus Copernicus once wrote, “Of all things visible, the highest is the heaven of the fixed stars.” Five centuries later, Kalpana Chawla, the first Indian woman in space, said, “When you look at the stars and the galaxy, you feel that you are not just from one particular piece of land, but from the solar system.”';
