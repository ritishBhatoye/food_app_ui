import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/Models/bookmarkModel.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});
  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    BookmarkModel bModel = BookmarkModel.bmModel[0];
    return Scaffold(
        appBar: AppBar(
          title: Text("All Photos",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        ),
        body: Container(
          color: Colors.grey[200],
          child: _BookMarkFeed(bmModel: BookmarkModel.bmModel),
        ));
  }
}

class _BookMarkFeed extends StatelessWidget {
  const _BookMarkFeed({
    Key? key,
    required this.bmModel,
  }) : super(key: key);

  final List<BookmarkModel> bmModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: bmModel.length,
          itemBuilder: (context, index) {
            return Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                // color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: NetworkImage(
                                            bmModel[index].userImg),
                                      ),
                                      title: Text(bmModel[index].userName),
                                      subtitle: Text.rich(TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "${bmModel[index].userReviews} , ${bmModel[index].userFollowers}\n"),
                                        TextSpan(
                                            text: "${bmModel[index].location}",
                                            style:
                                                TextStyle(color: Colors.amber))
                                      ])),

                                      // Text(
                                      //     '${bmModel[index].userReviews} , ${bmModel[index].userFollowers}\n${bmModel[index].location}'),
                                      trailing: OutlinedButton(
                                        onPressed: () {
                                          // Add your onPressed function here
                                        },
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all<
                                              BorderSide>(BorderSide(
                                            color: Colors
                                                .blue, // Set border color here
                                            width: 1.5, // Set border width here
                                          )),
                                        ),
                                        child: Text(
                                          bmModel[index].buttonText,
                                          style: TextStyle(
                                            color:
                                                Colors.blue, // Set text color
                                          ),
                                        ),
                                      )),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(bmModel[index].postImg),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 22),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_off_alt_rounded,
                                  color: Colors.amber,
                                ),
                                VerticalDivider(),
                                Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.black87,
                                ),
                                VerticalDivider(),
                                Icon(Icons.share, color: Colors.black54)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
