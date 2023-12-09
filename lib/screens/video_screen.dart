import 'package:flutter/material.dart';
import 'package:welcome_back/screens/home_page_screen.dart';
import 'package:welcome_back/screens/info_screen.dart';

import '../widgets/text_widget.dart';

class Video_Screen extends StatefulWidget {
  const Video_Screen({super.key});

  @override
  State<Video_Screen> createState() => _Video_ScreenState();
}

class _Video_ScreenState extends State<Video_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Colors.yellow,
            Colors.green,
          ]),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Home_Page_Screen()));
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                        iconSize: 25,
                        color: Colors.white,
                        padding: const EdgeInsets.only(right: 50),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const InfoScreen()));
                        },
                        icon: const Icon(Icons.info_outline_rounded),
                        iconSize: 25,
                        color: Colors.white,
                        padding: const EdgeInsets.only(left: 50),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Legs Toning \nand Glutes Workout',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey.withOpacity(.5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '60 min',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey.withOpacity(.5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Resistant band, ketteball',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(80))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        const Text(
                          'Circuit 1 : Legs Toning',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Video_Screen()));
                              },
                              icon: const Icon(Icons.loop),
                            ),
                            // Icon(
                            //   Icons.loop,
                            //   size: 20,
                            //   color: Colors.black,
                            // ),
                            const Text(
                              '3 sets',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                            child: Card(
                              elevation: 3,
                              child: ListTile(
                                title: TextBold(
                                    text:
                                        'Zone 5, Barra Opol \nMisamis Oriental, 9016',
                                    fontSize: 16,
                                    color: Colors.black),
                                subtitle: TextBold(
                                    text: 'Neil Pagara - 09669420116',
                                    fontSize: 17,
                                    color: Colors.grey),
                                leading: const Icon(
                                  Icons.person_pin_circle_rounded,
                                  color: Colors.redAccent,
                                  size: 30,
                                ),
                                trailing: IconButton(
                                  onPressed: (() {}),
                                  icon: const Icon(
                                    Icons.call,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
