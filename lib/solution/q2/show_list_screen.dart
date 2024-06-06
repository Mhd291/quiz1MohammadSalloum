import 'package:flutter/material.dart';
import 'package:quiz_mohammad_salloum/solution/q2/controller.dart';
import 'package:get/get.dart';

class ShowList extends StatelessWidget {

 Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        actions:[
          TextButton(onPressed: (){Get.toNamed('/showIDs');}, child: const Text("show Ids",style: TextStyle(
            color: Colors.black
          ),),),
        ],
title: const Text("Show lists"),
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
                  onTap:  () {
                    controller.getCategory();
                  },
                  child: AnimatedContainer(
                    duration:const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: size.width*0.23,
                    height: size.height*0.06,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius:BorderRadius.circular(10),
                      border:Border.all(color: Colors.black, width: 2),

                    ),
                    child:const Center(
                      child: Text("Categories",style: TextStyle(color:Colors.black,fontSize: 15 ),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:  () {
                    controller.getVenus();
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
                      child: Text("Venues",style: TextStyle(color:Colors.black,fontSize: 15 ),),
                    ),
                  ),
                ),

              ],
            )

        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Obx((){
          if(controller.isLoading.value== true){
            return const Center(
              child: CircularProgressIndicator(),
            );

          }
          else{
            return  SingleChildScrollView(
              child:Column(
                    children: List.generate(controller.list.length, (index) =>
                        Text(controller.list[index]),
                    )
                )


            );
          }
        }),
      ),
    );
  }
}

