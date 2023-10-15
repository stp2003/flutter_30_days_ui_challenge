class MovieModel {
  String? imageAsset;
  String? movieName;
  String? movieRating;
  String? year;
  final List<Map>? cast;
  final List<Map>? comments;

  MovieModel({
    this.imageAsset,
    this.movieName,
    this.movieRating,
    this.year,
    this.comments,
    this.cast,
  });
}

// data
final forYouImages = [
  MovieModel(imageAsset: "assets/images/for_your_image_1.jpeg"),
  MovieModel(imageAsset: "assets/images/for_your_image_2.jpeg"),
  MovieModel(imageAsset: "assets/images/for_your_image_3.jpeg"),
  MovieModel(imageAsset: "assets/images/for_your_image_4.jpeg"),
];

final popularImages = [
  MovieModel(
    imageAsset: "assets/images/popular_image_1.jpeg",
    movieName: "Dune",
    cast: [
      {
        "name": "Timothee Chalamet",
        "role": "Paul Atreides",
        "image": "assets/images/actor_1.jpeg",
      },
      {
        "name": "Zendaya",
        "role": "Chani",
        "image": "assets/images/actor_2.jpeg",
      },
      {
        "name": "Rebecca Ferguson",
        "role": "Lady Jessica",
        "image": "assets/images/actor_3.jpeg",
      },
      {
        "name": "Oscar Isaac",
        "role": "Duke Leto",
        "image": "assets/images/actor_4.jpeg",
      },
      {
        "name": "Jaon Momoa",
        "role": "Duncan Idaho",
        "image": "assets/images/actor_5.jpeg",
      },
    ],
    comments: [
      {
        "name": "Cody Fisher",
        "imageUrl": "assets/images/actor_1.png",
        "date": "June 14, 2022",
        "rating": "5.0",
        "comment":
            "Great movie! I will review ite more than once. Special thanks to one the operator!"
      },
      {
        "name": "Theresa Webb",
        "imageUrl": "assets/images/actor_2.png",
        "date": "Aug 2, 2021",
        "rating": "4.0",
        "comment": "Not a bad movie, but not much impressed"
      },
      {
        "name": "Caitriona Balfe",
        "imageUrl": "assets/images/actor_3.png",
        "date": "June 26, 2020",
        "rating": "4.8",
        "comment": "Love the way it is designed."
      },
    ],
    year: "2021",
    movieRating: "8.3",
  ),
  MovieModel(
      imageAsset: "assets/images/popular_image_2.jpeg",
      movieName: "Shang-Chi",
      year: "2022",
      movieRating: "6.4"),
  MovieModel(
    imageAsset: "assets/images/popular_image_3.jpeg",
    movieName: "Narcos",
    year: "2020",
    movieRating: "9.7",
  ),
  MovieModel(
    imageAsset: "assets/images/for_your_image_2.jpeg",
    movieName: "Shazam!",
    year: "2021",
    movieRating: "7.5",
  ),
  MovieModel(
    imageAsset: "assets/images/for_your_image_3.jpeg",
    movieName: "Stranger Things",
    year: "2021",
    movieRating: "9.2",
  ),
];
final legendaryImages = [
  MovieModel(
    imageAsset: "assets/images/legendary_movie_1.jpeg",
    movieName: "Alien",
    year: "1979",
    movieRating: "7.3",
  ),
  MovieModel(
    imageAsset: "assets/images/legendary_movie_2.jpeg",
    movieName: "300",
    year: "2006",
    movieRating: "9.4",
  ),
  MovieModel(
    imageAsset: "assets/popular_image_3.jpeg",
    movieName: "Narcos",
    year: "2020",
    movieRating: "8.7",
  ),
  MovieModel(
    imageAsset: "assets/images/for_your_image_2.jpeg",
    movieName: "Shazam!",
    year: "2021",
    movieRating: "7.5",
  ),
  MovieModel(
    imageAsset: "assets/images/for_your_image_1.jpeg",
    movieName: "Cruella",
    year: "2021",
    movieRating: "9.2",
  ),
];

final genresList = [
  MovieModel(movieName: "Horror", imageAsset: "assets/images/genres_1.png"),
  MovieModel(movieName: "Fantasy", imageAsset: "assets/images/genres_2.jpeg"),
  MovieModel(movieName: "History", imageAsset: "assets/images/genres_3.jpeg"),
  MovieModel(movieName: "Detective", imageAsset: "assets/images/genres_4.jpeg"),
  MovieModel(movieName: "Action", imageAsset: "assets/images/genres_5.jpeg"),
];
