import 'package:flutter/material.dart';
import 'package:koktajle/elements/appbar.dart';
import 'package:koktajle/elements/home/ctl_searchbar.dart';
import 'package:koktajle/elements/navbar.dart';

import 'dart:developer';

class Home extends StatelessWidget {
  const Home({super.key});

  void onSearchBarChanged(String text) {
    log("zmieniono $text");
  }

  void onSearchBarSubmitted(String text) {
    log("wyszukano $text"); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false, 
      appBar: CtlAppBar(title: "AppBar"),
      body: Column(
        children: [
          CtlSearchBar(onChanged: onSearchBarChanged, onSubmitted: onSearchBarSubmitted),
          CtlCa
          ]
      ),
      bottomNavigationBar: CtlNavBar(title: "NavBar"),
    );
  }
}