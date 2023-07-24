import 'package:flutter/material.dart';

import '../Screens/home_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int Index = 0;
  List page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade100,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 27,
                    color: Index == 0 ? Colors.black : Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 1;
                    });
                  },
                  child: Icon(
                    Icons.search,
                    size: 27,
                    color: Index == 1 ? Colors.black : Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 2;
                    });
                  },
                  child: Icon(
                    Icons.edit_square,
                    size: 27,
                    color: Index == 2 ? Colors.black : Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 3;
                    });
                  },
                  child: Icon(
                    Icons.favorite_border,
                    size: 27,
                    color: Index == 3 ? Colors.black : Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 4;
                    });
                  },
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 27,
                    color: Index == 4 ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            ),
          )),
      body: page[Index],
    );
  }
}
