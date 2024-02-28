import 'package:equatable/equatable.dart';

class DiscoveryModel extends Equatable {
  final String id;
  final String title;
  final String places;
  final String imgUrl;

  const DiscoveryModel(
      {required this.id,
      required this.title,
      required this.places,
      required this.imgUrl});

  static List<DiscoveryModel> Dmodel = [
    DiscoveryModel(
        id: "1",
        title: "Bars & Hotels",
        places: "42 Place",
        imgUrl: "assets/icons/beer.png"),
    DiscoveryModel(
        id: "2",
        title: "Fine Dining",
        places: "15 Place",
        imgUrl: "assets/icons/diningRoom.png"),
    DiscoveryModel(
        id: "3",
        title: "Cafes",
        places: "28 Place",
        imgUrl: "assets/icons/cafe.png"),
    DiscoveryModel(
        id: "4",
        title: "Nearby",
        places: "34 Place",
        imgUrl: "assets/icons/nearby.png"),
    DiscoveryModel(
        id: "5",
        title: "Fast Foods",
        places: "29 Place",
        imgUrl: "assets/icons/fastFood.png"),
    DiscoveryModel(
        id: "6",
        title: "Featured Foods",
        places: "21 Place",
        imgUrl: "assets/icons/featuredFood.png"),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        places,
        imgUrl,
      ];
}
