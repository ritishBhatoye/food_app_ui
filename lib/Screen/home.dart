import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:food_app_ui/Widgets/carouselWithIndicator.dart';
import 'package:food_app_ui/Widgets/mostPopular.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            child: Column(
              children: [
                Text(
                  "Sydney CBD",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                searchBox(),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        CarouselWithIndicator(),
                        MostPopular(),
                        MostPopular(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

Widget searchBox() {
  return Container(
    margin: EdgeInsets.only(top: 18.0),
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: TextField(
        decoration: InputDecoration(
      contentPadding: EdgeInsets.all(0),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.black,
        size: 20,
      ),
      prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
      hintText: 'Search for restaurants...',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      hintStyle: TextStyle(color: Colors.grey),
    )),
  );
}
