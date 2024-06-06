import 'dart:async';

import 'package:quiz_mohammad_salloum/attachments/question2/get_items.dart';
import 'package:quiz_mohammad_salloum/core/helpers/cashed_a%20list.dart';
import 'package:get/get.dart';

class Controller {
  List<String> list = [];
  RxBool isLoading = false.obs;

  void getCategory() async {
    list = await CashList.getStringList('c');
    if (list.isEmpty) {
      isLoading.value = true;
      list = await getCategories();
      await CashList.saveStringList(list, 'c');

      await Future.delayed(const Duration(seconds: 3));
      isLoading.value = false;
    } else {
      isLoading.value = true;
      isLoading.value = false;
    }
  }

  void getVenus() async {
    list = await CashList.getStringList('v');
    if (list.isEmpty) {
      isLoading.value = true;
      list = await getVenues();
      await CashList.saveStringList(list, 'v');
      await Future.delayed(const Duration(seconds: 3));
      isLoading.value = false;
    } else {
      isLoading.value = true;

      isLoading.value = false;
    }
  }

  void getLanguage() async {
    list = await CashList.getStringList('l');
    if (list.isEmpty) {
      isLoading.value = true;
      list = await getLanguages();
      await CashList.saveStringList(list, 'l');

      await Future.delayed(const Duration(seconds: 3));
      isLoading.value = false;
    } else {
      isLoading.value = true;
      isLoading.value = false;
    }
  }
}
