import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> stack = [];
  RxString number = RxString("");
  List<String> symbols = ["+/-", "%", "/", "X", "-", "+"];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void stackData(String data) {
    print(data);
    if (data == "AC") {
      this.stack.clear();
      number.value = "";
    } else if (data == "=") {
      this.stack.add(number.value); // add number
      this.stack.add(data); // add symbol
      number.value = ""; //erase from ui
      calcResult(this.stack);
    } else {
      if (symbols.contains(data)) {
        print("saving");
        this.stack.add(number.value); // add number
        this.stack.add(data); // add symbol
        number.value = ""; //erase from ui
      } else {
        number.value = number.value + data;
      }
    }
    print(this.stack.toString());
  }

  void calcResult(List<String> listData) {
    print(listData);
    listData.forEach((element) {
      try {
        int number = int.parse(element);
      } catch (e) {}
    });
  }
}
