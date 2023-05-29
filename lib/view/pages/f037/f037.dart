import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f037_controller/f037_controller.dart';
import 'package:mytask1/view/widgets/my_text_form_field.dart';

import '../../widgets/my_color_title/my_color_title.dart';

class F037 extends StatelessWidget {

  var controller = Get.put(F037Controller());
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;

    return  GetBuilder<F037Controller>(builder: (_) =>
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/ic_app.jpg',
                  height: 50,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text('Temperature Monitoring Chart for Medication Transportation',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17
                    ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //TODO: Signature  table
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Nurse Name:'),
                          SizedBox(
                            width: x * 0.3,
                            child: MyTextFormField(
                              controller: controller.nurseNameController,
                              hintText: '__________________________________________',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,

                              ),
                            ),
                          ),
                          const Text('Badge No:'),
                          SizedBox(
                            width: x * 0.3,
                            child: MyTextFormField(
                              controller: controller.badgeNoController,
                              hintText: '______________________________',
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.teal.shade400,
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(x * 0.5),
                        1: FlexColumnWidth(x * 0.8),
                        2: FlexColumnWidth(x * 0.5),
                        3: FlexColumnWidth(x * 0.5),
                        4: FlexColumnWidth(x * 0.5),
                        5: FlexColumnWidth(x * 0.5),
                        6: FlexColumnWidth(x * 0.5),
                        7: FlexColumnWidth(x * 0.8),

                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'DATE',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Medication name',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: MyColorTitle(
                                  title: 'TIME\nIN',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'TEMP',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'MRN',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: MyColorTitle(
                                  title: 'TIME\nOUT',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                    title: 'TEMP',
                                textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                    title: 'INITIALS/ Badge No',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(x * 0.5),
                      1: FlexColumnWidth(x * 0.8),
                      2: FlexColumnWidth(x * 0.5),
                      3: FlexColumnWidth(x * 0.5),
                      4: FlexColumnWidth(x * 0.5),
                      5: FlexColumnWidth(x * 0.5),
                      6: FlexColumnWidth(x * 0.5),
                      7: FlexColumnWidth(x * 0.8),
                    },
                    border: TableBorder.all(),
                    children:  [
                     // Todo: 1th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController1,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController1,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController1,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController1,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController1,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController1,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController1,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 2th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController2,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController2,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController2,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController2,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController2,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController2,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController2,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 3th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController3,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController3,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController3,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController3,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController3,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController3,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController3,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 4th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController4,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController4,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController4,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController4,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController4,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController4,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController4,
                            ),
                          ),

                        ],
                      ),


                      // Todo: 5th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController5,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController5,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController5,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController5,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController5,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController5,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController5,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 6th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController6,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController6,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController6,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController6,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController6,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController6,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController6,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 7th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController7,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController7,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController7,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController7,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController7,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController7,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController7,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 8th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController8,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController8,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController8,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController8,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController8,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController8,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController8,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 9th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController9,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController9,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController9,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController9,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController9,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController9,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController9,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 10th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController10,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController10,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController10,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController10,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController10,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController10,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController10,
                            ),
                          ),

                        ],
                      ),


                      // Todo: 11th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController11,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController11,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController11,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController11,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController11,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController11,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController11,
                            ),
                          ),

                        ],
                      ),


                      // Todo: 12th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController12,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController12,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController12,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController12,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController12,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController12,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController12,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 13th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController13,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController13,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController13,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController13,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController13,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController13,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController13,
                            ),
                          ),

                        ],
                      ),


                      // Todo: 14th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController14,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController14,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController14,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController14,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController14,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController14,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController14,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 15th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController15,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController15,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController15,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController15,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController15,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController15,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController15,
                            ),
                          ),

                        ],
                      ),

                      // Todo: 16th
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('${DateTime.now()}',maxLines: 2,),
                          ),
                          //Medication
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.medicationController16,
                            ),
                          ),
                          //Time IN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeInController16,
                            ),
                          ),
                          //Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.tempController16,
                            ),
                          ),
                          //MRN
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.mrnController16,
                            ),
                          ),
                          //Time Out
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.timeOutController16,
                            ),
                          ),
                          //Next Temp
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.nextTempController16,
                            ),
                          ),
                          //Badge
                          TableCell(
                            child: MyTextFormField(
                              controller: controller.badgeController16,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  myText(text: '*Acceptable Temperature Range: 2°C to 8°C'),
                  myText(text: '*THHC-028 Medication Administration and an Independent double check procedure for high alert medication and Telephone Orders received'),
                  myText(text: '*IV bag(s) must have ice pack and should not be exposed or exceed more than 1 hour outside the IV bag(s).'),
                  myText(text: '*The TPN solution are stable for 30 hours in the refrigerator (2-8°C) and they are stable for 24 hours at room temperature (< 25°C) once the Administration started. (THHC-029 TOTAL PARENTERAL NUTRITION (TPN)'),

                ],
              ),
            ),
          ),
        )
    );
  }
  Widget myText({required String text}){
    return Text(
        text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
