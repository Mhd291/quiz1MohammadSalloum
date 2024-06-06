import 'package:get/get.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_user/show_user_controller.dart';


class ShowUserBinding extends Bindings{
  @override
  void dependencies()
  {
    Get.put<ShowUserController>(ShowUserController(),permanent: false);
  }

}