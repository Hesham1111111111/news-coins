import 'package:flutter/material.dart';

import '../../Model/news_view.dart';

class ArtcileWidget extends StatefulWidget {
  ArtcileWidget({super.key, required this.article});

  final Article article;

  @override
  State<ArtcileWidget> createState() => _ArtcileWidgetState();
}

bool seemore = false;

class _ArtcileWidgetState extends State<ArtcileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
          child: Image.network(
            widget.article.urlToImage ??
                "https://static.vecteezy.com/system/resources/previews/022/059/000/non_2x/no-image-available-icon-vector.jpg",

            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              seemore = !seemore;
            });
          },
          child: Text(
            widget.article.title,
            maxLines: seemore ? null : 2,
            overflow: seemore ? TextOverflow.visible : TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              seemore = !seemore;
            });
          },
          child: Text(
            widget.article.description ?? "No description",
            maxLines: seemore ? null : 2,
            overflow: seemore ? TextOverflow.visible : TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 30, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
