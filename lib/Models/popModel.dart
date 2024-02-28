import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String location;
  final String shop;
  final String imageUrl;

  const Article({
    required this.id,
    required this.title,
    required this.location,
    required this.shop,
    required this.imageUrl,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'KFC Broadway',
      location: '122 Queen Street',
      shop: 'Fried Chicken, American',
      imageUrl:
          'https://images.unsplash.com/photo-1523798724321-364e1951df59?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Article(
      id: '2',
      title: 'Greek House',
      location: '23 Queen Street',
      shop: 'Burritos, Greek',
      imageUrl:
          'https://images.unsplash.com/photo-1552526881-721ce8509abb?q=80&w=2161&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Article(
      id: '3',
      title: 'McDonald s ',
      location: 'Ramamandi,Jalandhar',
      shop: 'Cold Coffee',
      imageUrl:
          'https://images.unsplash.com/photo-1619881589316-56c7f9e6b587?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Article(
      id: '4',
      title: 'Burger King',
      location: 'Dakoha,jalandhar',
      shop: 'Fries,Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=3099&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Article(
      id: '5',
      title: 'Starbucks',
      location: 'Dakoha,jalandhar',
      shop: 'Fries,Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1589476993333-f55b84301219?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Article(
      id: '6',
      title: 'Coffee bean',
      location: 'PPR Mall,jalandhar',
      shop: 'Fries,Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1621221814951-fa755dd0c993?q=80&w=3016&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        location,
        shop,
        imageUrl,
      ];
}
