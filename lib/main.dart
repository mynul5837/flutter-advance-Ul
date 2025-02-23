import 'package:flutter/material.dart';

void main() {
  runApp(const FirstUI());
}

class FirstUI extends StatelessWidget {
  const FirstUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advanced UI - LAB 06 "),
          backgroundColor: const Color.fromARGB(255, 95, 2, 2),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://www.pixel4k.com/wp-content/uploads/2018/10/owl-colorful-art-4k_1540755489.jpg'),
            ),
          ],
        ),
      ),
    );
    // ),
    //);
  }
}

