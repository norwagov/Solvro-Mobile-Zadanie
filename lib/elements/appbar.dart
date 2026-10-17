import 'package:flutter/material.dart';

class CtlAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CtlAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: Navigator.canPop(context)
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
        title: Text(
            'Koktajle',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.normal
            ),
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
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
}