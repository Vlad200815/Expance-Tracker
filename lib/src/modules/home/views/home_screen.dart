import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ttd_practice/src/modules/add_expence/views/add_expence_screen.dart';
import 'package:ttd_practice/src/modules/home/views/main_screen.dart';
import 'package:ttd_practice/src/modules/stats/views/stats_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddExpenceScreen(),
              ));
        },
        shape: const CircleBorder(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: const GradientRotation(pi / 4),
                colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
              ),
            ),
            child: const Icon(CupertinoIcons.add),
          ),
        ),
      ),
      body: number == 0 ? const MainScreen() : const StatsScreen(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              number = value;
              debugPrint(number.toString());
            });
          },
          backgroundColor: Colors.grey[200],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          fixedColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: number == 0 ? Colors.blue : Colors.grey,
              ),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.graph_square_fill,
                color: number == 1 ? Colors.blue : Colors.grey,
              ),
              label: "STATUS",
            ),
          ],
        ),
      ),
    );
  }
}
