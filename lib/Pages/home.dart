import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return VideoThumbs(index);
        });
  }
}

VideoThumbs(int index) {
  return Container(
    child: Column(
      children: [
        Image(
          image: AssetImage("assets/images/${index}.png"),
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 50,
              ),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
              // onPressed: () {},
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text("Video Title", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account By", style: TextStyle(fontSize: 14)),
                    Text(" • 125K views", style: TextStyle(fontSize: 14)),
                    Text(" · 2 days ago", style: TextStyle(fontSize: 14))
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    ),
  );
}
