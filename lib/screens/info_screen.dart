import 'package:flutter/material.dart';
import 'package:welcome_back/widgets/text_widget.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          title:
              TextRegular(text: 'About us', fontSize: 20, color: Colors.black),
        ),
        body: Center(
          child: Column(
            children: [
              TextBold(text: 'Sample', fontSize: 50, color: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
