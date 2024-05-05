import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:restaurantorders/model/order_details/order_details_m.dart';

class HomePageViewModel with ChangeNotifier {
  Random random1 = Random();
  Random random2 = Random();
  List<AnimatedText> textListForContainer1 = [];
  List<AnimatedText> textListForContainer2 = [];
  int loopVal1 = 1;
  int loopVal2 = 1;
  int? orderId;
  bool initialView = true;
  bool pending = false;
  bool completed = false;
  bool empty = false;

  OrderDetails orderDetailsPending = OrderDetails(
    orderId: 214,
    emptyBox: false,
    status: "In Process",
    orderReady: false,
    inProcess: true,
  );

  OrderDetails orderDetailsCompleted = OrderDetails(
    orderId: 327,
    emptyBox: false,
    status: "Ready",
    orderReady: true,
    inProcess: false,
  );

  OrderDetails orderDetailsEmpty = OrderDetails(
    emptyBox: true,
    status: "Empty Box",
    orderReady: false,
    inProcess: false,
  );

  modelSelector(
      {bool isPending = false, bool isEmpty = false, bool isCompleted = false}) {

    if (isPending) {
      return orderDetailsPending;
    } else if (isEmpty) {
      return orderDetailsEmpty;
    } else if (isCompleted) {
      return orderDetailsCompleted;
    }
    notifyListeners();
  }

  randomValuesGenerator1() {
    while (loopVal1 != 100) {
      textListForContainer1.add(RotateAnimatedText('${random1.nextInt(1000)}',
          rotateOut: true, textStyle: const TextStyle(fontSize: 20)));
      loopVal1++;
    }
    // notifyListeners();
    return textListForContainer1;
  }

  randomValuesGenerator2() {
    while (loopVal2 != 100) {
      textListForContainer2.add(RotateAnimatedText('${random2.nextInt(1000)}',
          rotateOut: true, textStyle: const TextStyle(fontSize: 20)));
      loopVal2++;
    }
    // notifyListeners();
    return textListForContainer2;
  }
}
