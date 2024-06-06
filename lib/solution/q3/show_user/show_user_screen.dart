import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_ids/q3Controller.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_user/show_user_controller.dart';
import '../../../core/helpers/cashed_a list.dart';


class ShowUser extends StatelessWidget {

ShowUserController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show User"),
        centerTitle: true,
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
        ),
        bottom: const PreferredSize(preferredSize:  Size.fromHeight(60.0),
            child:  Row(
              children: [


              ],
            ),

        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Obx((){
            if(controller.isLoading.value==true){
                return CircularProgressIndicator();
              }
            else{
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(controller.user.image)),
                  const SizedBox(height: 10,),
                  Text("Complete Name: ${controller.user.CompleteName()}",style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text("About: ${controller.user.about}",style: const TextStyle(fontSize: 17),),

                ],
              );
            }
          })
        ),
      ),

    );
  }
}

