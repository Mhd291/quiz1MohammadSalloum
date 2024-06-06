import 'package:get/get.dart';
import 'package:quiz_mohammad_salloum/core/helpers/cashed_user.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_user/user_model.dart';

import '../../../attachments/question3/get_user.dart';

class ShowUserController extends GetxController{
  int id = 0;
  RxBool isLoading = false.obs;
  User user = User(firstName: "", lastName: "", about: "", image: "");
  @override
  void onInit()async {

    id = int.parse(Get.arguments);

   await getUser(id);
    super.onInit();
  }

  Future<void> getUser(int id) async
  {
    isLoading.value = true;
    Map<String,dynamic> cashedUser = await CashUser.getUser('id$id');
    if(cashedUser.isEmpty){
      await Future.delayed(Duration(seconds: 3));
      var mapUser =getUserById(id);
       user =  User.fromMap(mapUser);
      await CashUser.saveUser(mapUser,'id$id');
    }
    else{
      user = await User.fromMap(cashedUser);
    }
    isLoading.value = false;
  }

}