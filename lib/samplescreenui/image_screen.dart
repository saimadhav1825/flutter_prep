import 'package:flutter/cupertino.dart';

class ImageViewAssest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/download.png");
    Image image = Image(image: assetImage,alignment: Alignment.centerLeft);
    return Container(child: image);
  }
}
