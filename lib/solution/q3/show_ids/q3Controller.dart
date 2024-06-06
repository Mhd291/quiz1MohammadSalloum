import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../../../core/helpers/cashed_a list.dart';


class Q3Controller {
 List<String> items =[] ;
 RxBool isloading = false.obs;


  Future<void> getIdValuesFromFile(String filePath) async {
    isloading.value =true ;
    List<String> idValues = [];

    String jsonString = await rootBundle.loadString(filePath);
    List<dynamic> jsonList = await jsonDecode(jsonString);

    items = jsonList.map((item) => item['id'].toString()).toList();
    await CashList.saveStringList(items, 'ids');
    isloading.value = false;
  }
}
