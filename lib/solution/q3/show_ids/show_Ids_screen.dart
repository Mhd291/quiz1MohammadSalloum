import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_mohammad_salloum/solution/q3/show_ids/q3Controller.dart';
import '../../../core/helpers/cashed_a list.dart';


class ShowIDs extends StatelessWidget {

 Q3Controller controller = Q3Controller();
 var items =  CashList.getStringList('ids');
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show IDs"),
        centerTitle: true,
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
        ),
        bottom: PreferredSize(preferredSize: const Size.fromHeight(60.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:  () async{
                   await controller.getIdValuesFromFile('assets/lottie/usrs.json');
                  },
                  child: AnimatedContainer(
                    duration:const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: size.width*0.23,
                    height: size.height*0.06,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:BorderRadius.circular(10),
                        border:Border.all(color: Colors.black, width: 2)

                    ),
                    child: const Center(
                      child: Text("Show IDs",style: TextStyle(color:Colors.black,fontSize: 15 ),),
                    ),
                  ),
                ),
              ],
            )

        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
            child:Obx((){
              if(controller.isloading.value==true){
                return CircularProgressIndicator();
              }
              else{
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(controller.items.length, (index){
                    //  print(controller.getIdValuesFromFile('assets/lottie/usrs.json'));
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed('/showUser',arguments: controller.items[index]);
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(controller.items[index],),
                            ),
                          ),
                        ),
                      );
                    },
                    ),
                );
              }
            })


        )
      ),
    );
  }
}

