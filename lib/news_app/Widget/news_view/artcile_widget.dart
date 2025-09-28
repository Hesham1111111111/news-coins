import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(
            imageUrl:
                widget.article.urlToImage ??
                "https://png.pngtree.com/png-vector/20221125/ourmid/pngtree-no-image-available-icon-flatvector-illustration-pic-design-profile-vector-png-image_40966566.jpg",
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
