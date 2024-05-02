import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
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

  TextEditingController nameController = TextEditingController();

  TextEditingController dateTimeController = TextEditingController();

  DateTime selectDate = DateTime.now();

  List<String> myCategoryIcons = [
    'airplane',
    'bag',
    'burger',
    'home',
    'pawprint',
    'ticket',
  ];

  String iconSelected = "";

  @override
  void initState() {
    dateTimeController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
    super.initState();
  }

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
                  fillColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
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
                fillColor: Colors.white,
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
                        Color categoryColor = Colors.white;
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              content: SingleChildScrollView(
                                child: Column(
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
                                      fillColor: Colors.white,
                                      borderRadius: BorderRadius.circular(12),

                                      readOnly: false,
                                      controller: nameController,
                                      ///////////////////////////
                                      hint: "Name",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 17),
                                      icon: const Icon(
                                        FontAwesomeIcons.newspaper,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                      radius: 10,
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: MyInput(
                                        fillColor: Colors.white,
                                        onTap: () {
                                          setState(() {
                                            isExpanded = !isExpanded;
                                          });
                                        },
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(
                                            12,
                                          ),
                                        ),
                                        readOnly: true,
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
                                    ),
                                    isExpanded
                                        ? Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                bottom: Radius.circular(12),
                                              ),
                                            ),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 200,
                                            /////////////////////////////////////////////////////////////////////////////////
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  mainAxisSpacing: 5,
                                                  crossAxisSpacing: 5,
                                                ),
                                                itemCount:
                                                    myCategoryIcons.length,
                                                itemBuilder: (context, int i) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        iconSelected =
                                                            myCategoryIcons[i];
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 2.5,
                                                          color: iconSelected ==
                                                                  myCategoryIcons[
                                                                      i]
                                                              ? Colors.green
                                                              : Colors.grey,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        image: DecorationImage(
                                                          scale: 10,
                                                          image: AssetImage(
                                                            'assets/${myCategoryIcons[i]}.png',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          )
                                        : Container(),
                                    const SizedBox(height: 10),
                                    MyInput(
                                      fillColor: categoryColor,
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              content: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    ColorPicker(
                                                      pickerColor: Colors.white,
                                                      onColorChanged: (value) {
                                                        setState(() {
                                                          categoryColor = value;
                                                        });
                                                      },
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                      width: double.infinity,
                                                      child: MyGradientButton(
                                                        horizontal: 50,
                                                        onPressed: () {
                                                          debugPrint(
                                                              categoryColor
                                                                  .toString());
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      borderRadius: BorderRadius.circular(15),
                                      readOnly: false,
                                      hint: "Color",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 17),
                                      icon: const Icon(
                                        FontAwesomeIcons.colonSign,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                      radius: 10,
                                    ),
                                    const SizedBox(height: 45),
                                    MyGradientButton(
                                      horizontal: 80,
                                      onPressed: () {
                                        //Create Object
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
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
                fillColor: Colors.white,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                      const Duration(days: 365),
                    ),
                  );

                  if (newDate != null) {
                    setState(() {
                      dateTimeController.text =
                          DateFormat('dd/MM/yyyy').format(newDate);
                      selectDate = newDate;
                    });
                  }
                },
                borderRadius: BorderRadius.circular(12),
                readOnly: true,
                controller: dateTimeController,
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
            MyGradientButton(
              horizontal: 120,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
