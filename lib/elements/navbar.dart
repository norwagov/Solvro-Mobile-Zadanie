import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CtlNavBar extends StatelessWidget {
  final String title;

  static const List<NavigationDestination> navItems =   
    [
      NavigationDestination(icon: Icon(Icons.home), label: 'Główna'),
      NavigationDestination(icon: Icon(Icons.search), label: 'Odkrywaj'),
      NavigationDestination(icon: Icon(Icons.eighteen_up_rating), label: 'Pełnoletni'),
      NavigationDestination(icon: Icon(Icons.login), label: 'Zaloguj się')
    ];

  const CtlNavBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
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
      );
  }
  
}