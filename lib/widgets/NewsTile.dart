import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  final String articleUrl;
  NewsTile(
      {required this.title,
      required this.description,
      required this.imgUrl,
      required this.articleUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            maxLines: 2,
          ),
          leading: ClipRect(
              child: Image.network(
            imgUrl,
            width: 50,
            height: 100,
            fit: BoxFit.cover,
          )),
          onTap: () {
            // Adding navigation in the future
            print("card Clicked");
          },
        ),
      ),
    );
  }
}
