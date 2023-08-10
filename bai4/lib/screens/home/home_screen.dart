// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bai4/components/coustom_bottom_nav_bar.dart';
import 'package:bai4/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}