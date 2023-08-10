// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                height: 25,
                alignment: Alignment.topCenter,
              ),
              const SizedBox(width: 0),
              Text(
                "Foodi".toUpperCase(),
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              // const Spacer(),
                // scrollDirection: Axis.horizontal,
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text('Home')),
                      TextButton(onPressed: (){}, child: Text('About')),
                      TextButton(onPressed: (){}, child: Text('Pricing')),
                      TextButton(onPressed: (){}, child: Text('Contact')),
                      TextButton(onPressed: (){}, child: Text('Login')),
                      TextButton(onPressed: (){}, child: Text('Get Started')),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
