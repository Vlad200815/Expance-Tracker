import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ttd_practice/src/modules/stats/components/chart_widget.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          CupertinoIcons.arrow_left_circle_fill,
                          color: Colors.grey[500],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Transactions",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(width: 120),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          CupertinoIcons.speedometer,
                          color: Colors.grey[500],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
                    child: MyChart(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
