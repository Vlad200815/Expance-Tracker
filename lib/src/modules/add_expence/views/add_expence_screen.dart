import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ttd_practice/src/modules/add_expence/components/my_gradient_button.dart';
import 'package:ttd_practice/src/modules/add_expence/components/my_input_widget.dart';

// ignore: must_be_immutable
class AddExpenceScreen extends StatefulWidget {
  const AddExpenceScreen({super.key});

  @override
  State<AddExpenceScreen> createState() => _AddExpenceScreenState();
}

class _AddExpenceScreenState extends State<AddExpenceScreen> {
  TextEditingController expenceController = TextEditingController();

  TextEditingController categoryController = TextEditingController();

  TextEditingController noteController = TextEditingController();

  TextEditingController todayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      // Colors.grey[350]
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.xmark,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Add Expence",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 50, 85, 104),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: MyInput(
                  borderRadius: BorderRadius.circular(12),
                  readOnly: false,
                  controller: expenceController,
                  icon: const Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.grey,
                  ),
                  radius: 30,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MyInput(
                borderRadius: BorderRadius.circular(12),
                readOnly: true,
                suffixIcon: IconButton(
                  icon: const Icon(
                    CupertinoIcons.add,
                    color: Colors.grey,
                    size: 23,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        bool isExpanded = false;
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Text(
                                      "Create a category",
                                      style: TextStyle(
                                        color: Colors.blueGrey[700],
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  MyInput(
                                    borderRadius: BorderRadius.circular(12),

                                    readOnly: false,
                                    controller: todayController,
                                    ///////////////////////////
                                    hint: "Name",
                                    hintStyle: TextStyle(
                                        color: Colors.grey[600], fontSize: 17),
                                    icon: const Icon(
                                      FontAwesomeIcons.newspaper,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    radius: 10,
                                  ),
                                  const SizedBox(height: 10),
                                  MyInput(
                                    onTap: () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(
                                        12,
                                      ),
                                    ),
                                    readOnly: true,
                                    controller: todayController,
                                    ///////////////////////////////////////////
                                    hint: "Icon",
                                    suffixIcon: const Icon(
                                        CupertinoIcons.chevron_down,
                                        size: 12),
                                    hintStyle: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 17,
                                    ),
                                    icon: const Icon(
                                      FontAwesomeIcons.icons,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    radius: 10,
                                  ),
                                  isExpanded
                                      ? Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(12),
                                            ),
                                          ),
                                          width: double.infinity,
                                          height: 200,
                                        )
                                      : Container(),
                                  const SizedBox(height: 10),
                                  MyInput(
                                    borderRadius: BorderRadius.circular(15),
                                    readOnly: false,
                                    controller: todayController,
                                    ///////////////////////////
                                    hint: "Color",
                                    hintStyle: TextStyle(
                                        color: Colors.grey[600], fontSize: 17),
                                    icon: const Icon(
                                      FontAwesomeIcons.colonSign,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    radius: 10,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                controller: categoryController,
                hint: "Category",
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 17),
                icon: const Icon(
                  FontAwesomeIcons.list,
                  size: 18,
                  color: Colors.grey,
                ),
                radius: 10,
              ),
            ),
            const SizedBox(height: 16),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
            //   child: MyInput(
            //     readOnly: true,
            //     controller: noteController,
            //     hint: "Note",
            //     hintStyle: TextStyle(color: Colors.grey[600], fontSize: 17),
            //     icon: const Icon(
            //       CupertinoIcons.captions_bubble_fill,
            //       color: Colors.grey,
            //     ),
            //     radius: 10,
            //   ),
            // ),
            // const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MyInput(
                borderRadius: BorderRadius.circular(12),
                readOnly: true,
                controller: todayController,
                hint: "Today",
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 17),
                icon: const Icon(
                  FontAwesomeIcons.clock,
                  size: 18,
                  color: Colors.grey,
                ),
                radius: 10,
              ),
            ),
            const SizedBox(height: 100),
            const MyGradientButton()
          ],
        ),
      ),
    );
  }
}
