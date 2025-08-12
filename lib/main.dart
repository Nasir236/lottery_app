import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Lottery App", style: TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery Winning Number is 4")),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: x == 4 ? Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all, color: Colors.green, size: 35),
                    SizedBox(height: 25),
                    Center(
                      child: Text(
                        "You Are Win The Lottery, Your Number is $x \n Congrates",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ) : Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 35),
                    SizedBox(height: 25),
                    Center(
                      child: Text(
                        "Better Luck Your Number is $x \n Try again",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
            print(x);
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
