import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageNetworkPage extends StatefulWidget {
  const ImageNetworkPage({super.key});

  @override
  State<ImageNetworkPage> createState() => _ImageNetworkPageState();
}

class _ImageNetworkPageState extends State<ImageNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Network',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://i.pinimg.com/736x/56/fe/a7/56fea78c4fa0689270dd7a9d0bda478d.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
      )),
    );
  }
}

class ImageAsstsPage extends StatefulWidget {
  const ImageAsstsPage({super.key});

  @override
  State<ImageAsstsPage> createState() => _ImageAsstsPageState();
}

class _ImageAsstsPageState extends State<ImageAsstsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Assets',
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'asstes/images/FoodBanner.jpeg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
      )),
    );
  }
}
