import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  Color numberColor = Color.fromARGB(255, 252, 252, 252);
  Color numberBackground = Color.fromARGB(255, 114, 110, 102);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('iCalc'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Text(
                            controller.number.value,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(
                      "AC",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    button(
                      "+/-",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    button(
                      "%",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    button(
                      "/",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("7", numberColor, numberBackground),
                    button("8", numberColor, numberBackground),
                    button("9", numberColor, numberBackground),
                    funcButton(
                      "X",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("4", numberColor, numberBackground),
                    button("5", numberColor, numberBackground),
                    button("6", numberColor, numberBackground),
                    funcButton(
                      "-",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("1", numberColor, numberBackground),
                    button("2", numberColor, numberBackground),
                    button("3", numberColor, numberBackground),
                    funcButton(
                      "+",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    zeroButton(),
                    funcButton(" . ", Colors.white, Colors.grey),
                    funcButton(
                      "=",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget button(String button, Color textColor, Color backGroundColor) {
    return ElevatedButton(
      child: Text(
        button,
        style: TextStyle(fontSize: 30, color: textColor),
      ),
      onPressed: () {
        controller.stackData(button);
      },
      style: ElevatedButton.styleFrom(
        primary: backGroundColor,
        fixedSize: Size(80, 80),
        shape: CircleBorder(),
      ),
    );
  }

  Widget funcButton(String text, Color textColor, Color backGroundColor) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: textColor),
      ),
      onPressed: () {
        controller.stackData(text);
      },
      style: ElevatedButton.styleFrom(
        primary: backGroundColor,
        fixedSize: Size(75, 75),
        shape: CircleBorder(),
      ),
    );
  }

  Widget zeroButton() {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
              color: Color.fromARGB(255, 97, 94, 76),
              width: 2.0,
            ),
          ),
        ),
      ),
      child: Text(
        '0        ',
        style: TextStyle(fontSize: 55),
      ),
      onPressed: () {},
    );
  }
}
