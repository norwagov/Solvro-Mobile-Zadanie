import 'package:flutter/material.dart';

import 'dart:ui' as ui;
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const List<NavigationDestination> navItems =   
    [
      NavigationDestination(icon: Icon(Icons.home), label: 'Główna'),
      NavigationDestination(icon: Icon(Icons.search), label: 'Odkrywaj'),
      NavigationDestination(icon: Icon(Icons.eighteen_up_rating), label: 'Pełnoletni'),
      NavigationDestination(icon: Icon(Icons.login), label: 'Zaloguj się')
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: !Navigator.canPop(context)
          ? Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(100, 215, 215, 215),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_back),
          ) 
          : null,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Koktajle',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.normal
            ),
          )
          .animate(onPlay: (c) => c.repeat(reverse: false))
          .shimmer(duration: 5.seconds,
          colors: [Colors.black, const Color.fromARGB(255, 215, 215, 215), Colors.black]),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(100, 215, 215, 215),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.menu),
          ), 
        ],
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withAlpha(50),
                  blurRadius: 40,
                  spreadRadius: 0.0
                ),
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(204, 132, 132, 132),
              border: Border(
                top: BorderSide(color: Colors.white.withValues(alpha: 0.08))
              )
            ),
            child: NavigationBar(
              destinations: navItems,
              
            ),
          ),
        ),
      ),
    );
  }
}