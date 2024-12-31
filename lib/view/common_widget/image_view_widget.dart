import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewWidget extends StatelessWidget {
  const ImageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
            child: Center(
              child: Hero(tag: "Das", child: PhotoView(imageProvider: NetworkImage(url))),
            ),
      )),
    );
  }
}
