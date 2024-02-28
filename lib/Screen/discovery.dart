import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/Models/disModel.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    DiscoveryModel dModel = DiscoveryModel.Dmodel[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discovery",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: _DiscoveryModel(Dmodel: DiscoveryModel.Dmodel),
      ),
    );
  }
}

class _DiscoveryModel extends StatelessWidget {
  const _DiscoveryModel({
    Key? key,
    required this.Dmodel,
  }) : super(key: key);
  final List<DiscoveryModel> Dmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[0].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[0].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[0].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[1].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[1].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[1].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[2].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[2].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[2].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[3].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[3].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[3].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[4].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[4].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[4].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 195,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 1),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 80,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(Dmodel[5].imgUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      Dmodel[5].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    SizedBox(height: 6),
                    Text(
                      Dmodel[5].places,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text("hi"),
        //     Text("hi"),
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text("hi"),
        //     Text("hi"),
        //   ],
        // )
      ],
    );
  }
}
