import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f038_controller/f038_controller.dart';

import '../../widgets/my_color_title/my_color_title.dart';
import '../../widgets/my_text_form_field.dart';
import '../../widgets/my_title_text.dart';

class F038 extends StatelessWidget {

  var f038Controller = Get.put(F038Controller());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return  GetBuilder<F038Controller>(builder: (_) =>
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Image.asset('assets/ic_app.jpg',
                          height: 70,
                        ),
                      ),
                      const Expanded(
                        flex: 50,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 20,
                        child: Container(
                          width: 200.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MyTextFormField(
                            controller: f038Controller.labelController,
                            hintText: 'PATIENT LABEL',

                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:MyTitleText(
                        title:'Wound Care/Dressing Documentation (Continuation Sheet) ',
                        color: Colors.black,
                      )
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    color: Colors.teal.shade400,
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(width * 1),
                        1: FlexColumnWidth(width * 0.5),
                        2: FlexColumnWidth(width * 1),
                        3: FlexColumnWidth(width * 1),
                        4: FlexColumnWidth(width * 1),

                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Wound  S/NO',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Date',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'DRESSSING TYPE',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'DEBRIDEMENT',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child:   Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'INITIALS',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  //TODO: 1th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [

                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController1,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController1,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController1,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController1,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 2th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController2,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController2,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController2,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController2,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 3th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController3,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController3,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController3,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController3,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),


                  //TODO: 4th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController4,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController4,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController4,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController4,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 5th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController5,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController5,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController5,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController5,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 6th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController6,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController6,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController6,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController6,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 7th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController7,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController7,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController7,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController7,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 8th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController8,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController8,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController8,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController8,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 9th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController9,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController9,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController9,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController9,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 10th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController10,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController10,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController10,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController10,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),

                  //TODO: 11th Table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 1),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 1),
                      3: FlexColumnWidth(width * 1),
                      4: FlexColumnWidth(width * 1),

                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          //Wound S/NO
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.woundController11,
                            ),
                          ),
                          //Date
                          TableCell(
                            child: Text('${f038Controller.nowDate}',maxLines: 2,),
                          ),
                          //DRESSING TYPE
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.dressingController11,
                            ),
                          ),
                          //DEBRIDEMENT type
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.debridementController11,
                            ),
                          ),
                          //initials
                          TableCell(
                            child: MyTextFormField(
                              controller: f038Controller.initialsController11,
                            ),
                          ),


                        ],
                      ),







                    ],
                  ),
                  Row(

                    children: [
                      Expanded(child: MyTitleText(title: 'DEBRIDEMENT TYPE', color: Colors.black)),
                      Expanded(child: MyTitleText(title: 'Autolytic-Enzymatic-Mechanical-Surgical', color: Colors.black)),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTitleText(title: 'F038-THHC Wound Care Dressing Documentation', color: Colors.black),
                          MyTitleText(title: 'THHC-030 Wound Care Management at Home Health Care', color: Colors.black),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Image.asset('assets/ic_app.jpg',
                          height: 70,
                        ),
                      ),
                      const Expanded(
                        flex: 50,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 20,
                        child: Container(
                          width: 200.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MyTextFormField(
                            controller: f038Controller.labelController,
                            hintText: 'PATIENT LABEL',

                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:MyTitleText(
                        title:'Formal Wound Assessment ',
                        color: Colors.black,
                      )
                  ),
                  Align(
                      alignment: Alignment.center,
                      child:MyTitleText(
                        title:'Complete Initial Assessment and Reassess if wound bed changes OR 7-10 days intervals',
                        color: Colors.black,
                      )
                  ),
                  Align(
                      alignment: Alignment.center,
                      child:MyTitleText(
                        title:'Use separate column for individual wound',
                        color: Colors.black,
                      )
                  ),

                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child:   Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              color: Colors.teal.shade400,
                              child: MyTitleText(
                                title: '# of Wound',
                                textAlign: TextAlign.center,
                                color: Colors.white,
                              ),
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.ofWoundController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 1th table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Date of Assessment',
                             color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController1,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController2,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController3,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController4,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController5,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController6,
                            ),
                          ),
                           TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.dateOfAssessmentController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),


                  //Todo: 2th table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Analgesia pre dressing',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.analgesiaController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 3th table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Grade of pressure ulcer',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.gradeOfPressureController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 4th table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Wound Dimensions',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundDimensionsController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 5h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Length',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.lengthController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),


                  //Todo: 6h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Width',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.widthController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),


                  //Todo: 7h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Depth',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.depthController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 8h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Shape',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.shapeController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 9h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Is wound undermining',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.woundUnderminingController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 10h table of the Watch image
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child:   Image.network('https://target.scene7.com/is/image/Target/GUEST_8b4aa560-7af5-44b5-a81c-e4d80b0e5709',
                            height: 60,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.timeController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                  //Todo: 11h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Photography',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController1,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController2,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController3,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController4,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController5,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController6,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.photographyController7,
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                      color: Colors.teal.shade400,
                      child: MyColorTitle(title: 'Tissue type on wound bed ',textAlign: TextAlign.center,)),

                  //Todo: 12h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Necrotic',
                              color: Colors.black,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController1,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController2,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController3,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController4,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController5,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController6,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.necroticController7,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),


                  //Todo: 13h table
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(width * 2),
                      1: FlexColumnWidth(width * 0.5),
                      2: FlexColumnWidth(width * 0.5),
                      3: FlexColumnWidth(width * 0.5),
                      4: FlexColumnWidth(width * 0.5),
                      5: FlexColumnWidth(width * 0.5),
                      6: FlexColumnWidth(width * 0.5),
                      7: FlexColumnWidth(width * 0.5),

                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child:   MyTitleText(
                              title: 'Sloughy',
                              color: Colors.black,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController1,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController2,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController3,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController4,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController5,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController6,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),
                          TableCell(
                            child:   MyTextFormField(
                              controller: f038Controller.sloughyController7,
                              suffixIcon: Icon(Icons.percent,size: 15,color: Colors.black,),
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
    );

  }
}
