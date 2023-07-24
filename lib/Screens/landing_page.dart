import 'package:flutter/material.dart';

import '../Widgets/navigation.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "images/img1.png",
            height: height * 0.75,
            width: width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 78,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Log In With Instagram',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Zuck',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "images/img2.png",
                            height: 13,
                            width: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset("images/img3.png"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "Switch Account",
              style: TextStyle(color: Colors.black38),
            ),
          )
        ],
      ),
    );
  }
}
