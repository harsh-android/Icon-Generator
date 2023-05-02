import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colorPos = 0;
  var iconPos = 0;
  @override
  Widget build(BuildContext context) {
    var icons = [
      Icons.access_alarm,
      Icons.add,
      Icons.arrow_back_ios_new,
      Icons.call,
      Icons.add_circle,
      Icons.access_time_rounded,
      Icons.location_pin,
      Icons.share,
      Icons.android,
      Icons.apple,
      Icons.color_lens,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Editor"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Card(
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  elevation: 5,
                  child: Icon(
                    icons[iconPos],
                    size: 200,
                    color: Colors.primaries[colorPos][300],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Card(
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                      alignment: Alignment.center, child: Text("SELECT COLOR")),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Card(
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  elevation: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 18; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  colorPos = i;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.primaries[i][300],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 8,
                                        spreadRadius: 1,
                                        offset: Offset(1, 3),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Card(
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                      alignment: Alignment.center, child: Text("SELECT ICON")),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Card(
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  elevation: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < icons.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  iconPos = i;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                width: 60,
                                height: 60,
                                child: Icon(icons[i]),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 8,
                                        spreadRadius: 1,
                                        offset: Offset(1, 3),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
