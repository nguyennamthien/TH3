// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:bai3/Screens/Home/Components/app_bar.dart';
import 'package:bai3/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder( // Use OrientationBuilder to detect screen orientation
          builder: (context, orientation) {
            // Determine the current screen orientation
            String backgroundImage = orientation == Orientation.landscape
                ? "assets/images/bg.png"
                : "assets/images/bg-stand.png";

            return Container(
              height: MediaQuery.of(context).size.height, // Fill available height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(backgroundImage),
                  fit: BoxFit.cover, // Use BoxFit.cover to cover the entire container
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    const SizedBox(height: 16), // Add some space for better layout
                    Body(),
                    const SizedBox(height: 16), // Add some space for better layout
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
