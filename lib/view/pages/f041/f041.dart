import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/f041_controller/f041_controller.dart';

class F041 extends StatelessWidget {
  var f041Controller = Get.put(F041Controller());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<F041Controller>(
    builder: (_)=> Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Table(
                    columnWidths: const{
                      0:  FlexColumnWidth(5),
                      1:  FlexColumnWidth(20),
                      2:  FlexColumnWidth(5),
                    },
                    border: TableBorder.all(),
                    children: [
                      //This table row is for the table header which is static
                      TableRow(children: [
                        TitleText(
                          "Date &\nTime",
                        ),
                        TitleText(
                          "Progress Notes \n",
                        ),
                        TitleText(
                          "Signature\n& ID",
                        ),


                      ]),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                        controller: f041Controller.text_Controller1,
                        signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller2,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller3,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller4,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller5,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller6,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller7,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller8,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller9,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller10,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller11,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller12,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller13,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller14,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller15,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller16,
                          signature: ''
                      ),

                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller17,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller18,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller19,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller20,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller21,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller22,
                          signature: ''
                      ),

                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller23,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller24,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller25,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller26,
                          signature: ''
                      ),
                      buildRowWidget(
                          dateTime: f041Controller.now,
                          controller: f041Controller.text_Controller27,
                          signature: ''
                      ),

                    ]),
              ],
            ),
          ),
        )),
    );
  }
  Widget TitleText(String title){
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.teal.shade400,
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
 TableRow buildRowWidget({required DateTime dateTime,required TextEditingController controller , required String signature}){
    return TableRow(children: [
      Text('${dateTime}',
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      TextFormField(
       controller: controller,
     ),
      Text(
        signature,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    ]);
 }
}
