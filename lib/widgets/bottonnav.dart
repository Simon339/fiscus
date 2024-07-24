// ignore_for_file: non_constant_identifier_names

import 'package:fiscus/screens/add.dart';
import 'package:fiscus/screens/homescreen.dart';
import 'package:flutter/material.dart';
import '../screens/aboutscreen.dart';
import '../screens/cardscreen.dart';
import '../screens/statsscreen.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int index_color = 0;
  List Screen = [
    const HomeScreen(),
    const Statistics(),
    const CardsView(),
    const AboutScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFCA7B80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddScreen()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
          weight: 80,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //color: Color(0xff0E0E12),
        //shadowColor: Color(0xff0E0E12),
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(Icons.home,
                    size: 30,
                    color: index_color == 0
                        ? const Color(0xFFCA7B80)
                        : Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color:
                      index_color == 1 ? const Color(0xFFCA7B80) : Colors.black,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.credit_card,
                  size: 30,
                  color:
                      index_color == 2 ? const Color(0xFFCA7B80) : Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 3;
                  });
                },
                child: Icon(
                  Icons.info_outline_rounded,
                  size: 30,
                  color:
                      index_color == 3 ? const Color(0xFFCA7B80) : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
