import 'dart:convert';
import 'package:faker/src/faker.dart';
import 'package:flutter/services.dart';


 getCategories(){
  List<String> items=[];
  for(int i=0;i<1000;i++) {
    items.add(faker.lorem.words(3).join(' '));
  }
  return items;
}


 getVenues(){
  List<String> items=[];
  for(int i=0;i<1000;i++) {
    items.add(faker.lorem.words(2).join(' '));
  }
  return items;
}

 getLanguages() async {
  List<String> items=[];
  String filePath="assets/lottie/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  var DynamicList = await json.decode(jsonString);
  for (var item in DynamicList) {
   items.add(item.toString());
  }
  return items;
}