import'package:intl/intl.dart';

mixin DateHelper{
  static String DateInUTC(DateTime date){
    String formattedDate = DateFormat('d-MMM, yyyy').format(date);
    return formattedDate;
  }
}