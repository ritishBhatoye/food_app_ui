import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/Models/popModel.dart';
import 'package:food_app_ui/Widgets/image_container.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});
  static const routeName = '/';
  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    Article popModel = Article.articles[0];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 11),
      padding: EdgeInsets.only(left: 13),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 23),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.green[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          _MostPopular(articles: Article.articles)
        ],
      ),
    );
  }
}

class _MostPopular extends StatelessWidget {
  const _MostPopular({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
            height: 240,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width * 0.48,
                      margin: const EdgeInsets.only(right: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10.0,
                                    blurStyle: BlurStyle.outer,
                                    color: Colors.black38)
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ImageContainer(
                                    width: MediaQuery.of(context).size.width *
                                        0.54,
                                    imageUrl: articles[index].imageUrl),
                                const SizedBox(height: 10),
                                Text(
                                  articles[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                ),
                                const SizedBox(height: 5),
                                Text(articles[index].location,
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 15)),
                                const SizedBox(height: 5),
                                Text(articles[index].shop,
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                      ));
                }))
      ],
    );
  }
}
