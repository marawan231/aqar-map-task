import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCachedImage extends StatelessWidget {
  final String? image;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;

  const CustomCachedImage(
      {super.key, this.image, this.fit, this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return (image == null || image!.isEmpty || image == '' || image == 'string')
        ? Image.network(
            'https://img.freepik.com/free-photo/photorealistic-view-tree-nature-with-branches-trunk_23-2151478039.jpg?t=st=1729078447~exp=1729082047~hmac=99664fca3656c80e5ab7d084f877666ace7759d9be0c59c235087d1de6298604&w=1060',
            height: height,
            width: width,
            fit: BoxFit.cover)
        : CachedNetworkImage(
            imageUrl: image ??
                'https://img.freepik.com/free-photo/photorealistic-view-tree-nature-with-branches-trunk_23-2151478039.jpg?t=st=1729078447~exp=1729082047~hmac=99664fca3656c80e5ab7d084f877666ace7759d9be0c59c235087d1de6298604&w=1060',
            imageBuilder: (context, imageProvider) => SizedBox(
                    child: Image(
                  image: imageProvider,
                  color: color,
                  fit: fit ?? BoxFit.cover,
                  width: width,
                  height: height,
                )),
            placeholder: (context, url) => const CupertinoActivityIndicator(
                  color: Colors.white,
                ),
            errorWidget: (context, url, error) => Image.network(
                'https://img.freepik.com/free-photo/photorealistic-view-tree-nature-with-branches-trunk_23-2151478039.jpg?t=st=1729078447~exp=1729082047~hmac=99664fca3656c80e5ab7d084f877666ace7759d9be0c59c235087d1de6298604&w=1060'));
  }
}

// ImageProvider customCachedImageProvider(String? image) {
//   return image == null
//       ? const AssetImage('') as ImageProvider
//       : CachedNetworkImageProvider(image);
// }
