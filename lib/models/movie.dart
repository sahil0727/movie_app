// movie model demo
class Movie {
  final int id, year, numOfRating, criticsReview, metaScoreRating;
  final double rating;
  final List<String> generation;
  final String plot, title, poster, backdrop, runTime;
  final List<Map<String, String>> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.runTime,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRating,
    required this.criticsReview,
    required this.metaScoreRating,
    required this.rating,
    required this.generation,
    required this.plot,
    required this.cast,
  });
}

List<Movie> movies = [
  Movie(
    poster: 'assets/images/poster_1.jpg',
    backdrop: 'assets/images/backdrop_1.jpg',
    title: 'BloodShot',
    id: 1,
    year: 2020,
    numOfRating: 150212,
    criticsReview: 50,
    metaScoreRating: 76,
    rating: 7.3,
    runTime: '1h 49min',
    generation: [
      'Action',
      'Drama',
    ],
    plot: plotText,
    cast: [
      {
        'originalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    poster: 'assets/images/poster_2.jpg',
    backdrop: 'assets/images/backdrop_2.jpg',
    title: 'Ford v Ferrari',
    id: 2,
    year: 2019,
    numOfRating: 150212,
    criticsReview: 68,
    metaScoreRating: 98,
    rating: 8.2,
    runTime: '2h 32min',
    generation: ['Action', 'Biography', 'Drama'],
    plot: plotText,
    cast: [
      {
        'originalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
  Movie(
    poster: 'assets/images/poster_3.jpg',
    backdrop: 'assets/images/backdrop_3.jpg',
    title: 'Onward',
    id: 3,
    year: 2022,
    numOfRating: 120121,
    criticsReview: 48,
    metaScoreRating: 85,
    rating: 7.9,
    runTime: '1h 42min',
    generation: ['Action', 'Drama'],
    plot: plotText,
    cast: [
      {
        'originalName': 'James Mangold',
        'movieName': 'Director',
        'image': 'assets/images/actor_1.png',
      },
      {
        'originalName': 'Matt Damon',
        'movieName': 'Carroll',
        'image': 'assets/images/actor_2.png',
      },
      {
        'originalName': 'Christian Bale',
        'movieName': 'Ken Miles',
        'image': 'assets/images/actor_3.png',
      },
      {
        'originalName': 'Caitriona Balfe',
        'movieName': 'Mollie',
        'image': 'assets/images/actor_4.png',
      },
    ],
  ),
];

String plotText =
    "American Car Designer Carroll Shelby and Driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
