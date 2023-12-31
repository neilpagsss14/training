import 'package:flutter/material.dart';
import 'package:welcome_back/screens/home_page_screen.dart';
import 'package:welcome_back/widgets/text_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
              ),
              accountEmail: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextRegular(
                        text: '09669420116',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextRegular(
                        text: 'neilpagara50@gmail.com',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              accountName: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextBold(
                  text: 'Neil Clifford Pagara',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: const Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 100,
                  maxRadius: 100,
                  backgroundImage: AssetImage('assets/images/male.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: TextRegular(
                text: 'Home',
                fontSize: 12,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePageScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline_rounded,
              ),
              title: TextRegular(
                text: 'About us',
                fontSize: 12,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePageScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.password_rounded,
              ),
              title: TextRegular(
                text: 'Change Password',
                fontSize: 12,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePageScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.account_box_rounded,
              ),
              title: TextRegular(
                text: "User's Profile",
                fontSize: 12,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePageScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: TextRegular(
                text: 'Logout',
                fontSize: 12,
                color: Colors.grey,
              ),
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            'Logout Confirmation',
                            style: TextStyle(
                                fontFamily: 'QBold',
                                fontWeight: FontWeight.bold),
                          ),
                          content: const Text(
                            'Are you sure you want to Logout?',
                            style: TextStyle(fontFamily: 'QRegular'),
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                    fontFamily: 'QRegular',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePageScreen()));
                              },
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                    fontFamily: 'QRegular',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
