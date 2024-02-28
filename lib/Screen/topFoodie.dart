import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopFoodie extends StatefulWidget {
  const TopFoodie({super.key});

  @override
  State<TopFoodie> createState() => _TopFoodieState();
}

class _TopFoodieState extends State<TopFoodie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("TOP FOODIE"),
    );
  }
}
