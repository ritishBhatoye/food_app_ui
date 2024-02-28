import 'package:equatable/equatable.dart';

class BookmarkModel extends Equatable {
  final String id;
  final String userImg;
  final String userName;
  final String userReviews;
  final String userFollowers;
  final String buttonText;
  final String location;
  final String postImg;

  const BookmarkModel({
    required this.id,
    required this.userImg,
    required this.userName,
    required this.userReviews,
    required this.userFollowers,
    required this.buttonText,
    required this.location,
    required this.postImg,
  });

  static List<BookmarkModel> bmModel = [
    BookmarkModel(
      id: "1",
      userImg:
          "https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Victor Pacheco",
      userReviews: "129 Reviews",
      userFollowers: "380 Followers",
      buttonText: "Follow",
      location: "Gold Foodies",
      postImg:
          "https://images.unsplash.com/photo-1562565652-a0d8f0c59eb4?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    BookmarkModel(
      id: "2",
      userImg:
          "https://images.unsplash.com/photo-1508341591423-4347099e1f19?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Angu Tamba",
      userReviews: "129 Reviews",
      userFollowers: "380 Followers",
      buttonText: "Follow",
      location: "Gold Foodies",
      postImg:
          "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    BookmarkModel(
      id: "3",
      userImg:
          "https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Rahul",
      userReviews: "12k Reviews",
      userFollowers: "3k Followers",
      buttonText: "Follow",
      location: "McDonald's",
      postImg:
          "https://images.unsplash.com/photo-1616093098059-c94c68de5ae6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    BookmarkModel(
      id: "4",
      userImg:
          "https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Victor Pacheco",
      userReviews: "5k Reviews",
      userFollowers: "10k Followers",
      buttonText: "Follow",
      location: "Starbucks",
      postImg:
          "https://images.unsplash.com/photo-1542729779-11d8fe8e25f6?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    BookmarkModel(
      id: "5",
      userImg:
          "https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Victor Pacheco",
      userReviews: "129 Reviews",
      userFollowers: "380 Followers",
      buttonText: "Follow",
      location: "Gold Foodies",
      postImg:
          "https://images.unsplash.com/photo-1562565652-a0d8f0c59eb4?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
    BookmarkModel(
      id: "6",
      userImg:
          "https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      userName: "Victor Pacheco",
      userReviews: "129 Reviews",
      userFollowers: "380 Followers",
      buttonText: "Follow",
      location: "Gold Foodies",
      postImg:
          "https://images.unsplash.com/photo-1562565652-a0d8f0c59eb4?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        userImg,
        userName,
        userReviews,
        userFollowers,
        buttonText,
        location,
        postImg,
      ];
}
