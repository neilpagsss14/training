import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:welcome_back/screens/video_screen.dart';
import 'package:welcome_back/widgets/text_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: currentIndex == 0
            ? Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextBold(
                            text: 'Training',
                            fontSize: 35,
                            color: Colors.black),
                        Expanded(child: Container()),
                        const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.calendar_month_outlined,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Your Program',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        Expanded(child: Container()),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const VideoScreen()));
                          },
                          child: const Text(
                            'Details',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Icon(Icons.arrow_right_alt)
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.green,
                            Colors.yellow,
                          ]),
                          color: Colors.blue[400],
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(60),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.blueGrey)
                          ]),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 15, right: 15),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Next Training',
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Legs Toning \nand Glutes Workout',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '60 min',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 20,
                                              offset: Offset(4, 8))
                                        ]),
                                    child: const Icon(
                                      Icons.play_circle_fill_outlined,
                                      color: Colors.white,
                                      size: 55,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            // width: MediaQuery.of(context).size.width,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(colors: [
                                  Colors.yellow,
                                  Colors.green,
                                ]),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(5, 5),
                                      blurRadius: 10,
                                      color: Colors.blueGrey)
                                ]),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            margin:
                                const EdgeInsets.only(right: 200, bottom: 30),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/neil.png'),
                            )),
                          ),
                          Container(
                            width: double.maxFinite,
                            // color: Colors.redAccent.withOpacity(.2),
                            height: 100,
                            margin: const EdgeInsets.only(left: 170, top: 40),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You are doing great!',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Keep it up \nStick to your plan',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Area of focus',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Expanded(
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: ListView.builder(itemBuilder: (_, i) {
                          return Center(
                            child: Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 160,
                                  margin: const EdgeInsets.only(bottom: 15),
                                  padding: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/neil.png')),
                                  ),
                                  child: const Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Gwapo',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 150,
                                  width: 160,
                                  margin: const EdgeInsets.only(bottom: 15),
                                  padding: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent.withOpacity(.7),
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/neil.png')),
                                  ),
                                  child: const Center(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Gwapo',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_accessibility,
              ),
              label: 'Workout'),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
