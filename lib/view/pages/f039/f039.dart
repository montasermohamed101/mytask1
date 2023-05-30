import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f039_controller/f039_controller.dart';
import 'package:mytask1/view/widgets/padding_title_text.dart';

import '../../widgets/my_color_title/my_color_title.dart';
import '../../widgets/my_text_form_field.dart';
import '../../widgets/my_title_text.dart';

class F039 extends StatelessWidget {

  var f039Controller = Get.put(F039Controller());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<F039Controller>(builder: (_) =>
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              child: Column(
                children: [

                  Table(
                    border: TableBorder.all(),
                    children: [
                     TableRow(
                       children:[
                         TableCell(
                           child: Column(
                             children: [
                               Image.asset(
                                 'assets/ic_app.jpg',
                                 height: 70,
                               ),
                               MyTitleText(title: 'Oxygen Content',color: Colors.black,)
                             ],
                           ),
                         ),
                         TableCell(
                           child: Column(
                             children: [
                               Image.asset(
                                 'assets/ic_app.jpg',
                                 height: 70,
                               ),
                               MyTitleText(title: 'Oxygen Content',color: Colors.black,)
                             ],
                           ),
                         ),
                         TableCell(
                           child: Column(
                             children: [
                               Image.asset(
                                 'assets/ic_app.jpg',
                                 height: 70,
                               ),
                               MyTitleText(title: 'Oxygen Content',color: Colors.black,)
                             ],
                           ),
                         ),
                       ]
                     ),
                      TableRow(
                          children:[
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                   Row(
                                     children: [
                                     MyTitleText(title: 'Dept:', color: Colors.black),
                                     Expanded(child:   MyTextFormField(controller: f039Controller.firstDeptController,
                                       hintText: ':____________',
                                     ),),
                                     ],
                                   ),
                                   Row(
                                     children: [
                                     MyTitleText(title: 'Month/Year:', color: Colors.black),
                                     Expanded(child:   MyTextFormField(controller: f039Controller.firstmonth_yearController,
                                       hintText: ':____________',
                                     ),),
                                     ],
                                   ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        MyTitleText(title: 'Dept:', color: Colors.black),
                                        Expanded(child:   MyTextFormField(controller: f039Controller.secondDeptController,
                                          hintText: ':____________',
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        MyTitleText(title: 'Month/Year:', color: Colors.black),
                                        Expanded(child:   MyTextFormField(controller: f039Controller.secondmonth_yearController,
                                          hintText: ':____________',
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        MyTitleText(title: 'Dept:', color: Colors.black),
                                        Expanded(child:   MyTextFormField(controller: f039Controller.thirdDeptController,
                                          hintText: ':____________',
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        MyTitleText(title: 'Month/Year:', color: Colors.black),
                                        Expanded(child:   MyTextFormField(controller: f039Controller.thirdmonth_yearController,
                                          hintText: ':____________',
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ]
                      ),
                    ],
                  ),

                  Container(
                    color: Colors.teal.shade400,
                    child: Table(
                      columnWidths: ColumnWidth(context),
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Day',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Reading',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'SIGN',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Day',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Reading',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'SIGN',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Day',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'Reading',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                child: MyColorTitle(
                                  title: 'SIGN',
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
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '1',
                            color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController1,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController1,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController1,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController1,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController1,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController1,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController1,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController1,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),


                  //TODO: 2th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '2',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController2,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController2,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController2,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController2,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController2,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController2,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController2,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController2,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 3th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '3',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController3,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController3,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController3,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController3,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController3,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController3,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController3,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController3,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 4th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '4',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController4,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController4,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController4,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController4,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController4,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController4,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController4,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController4,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 5th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '5',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController5,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController5,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController5,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController5,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController5,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController5,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController5,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController5,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 6th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '6',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController6,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController6,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController6,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController6,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController6,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController6,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController6,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController6,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 7th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '7',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController7,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController7,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController7,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController7,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController7,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController7,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController7,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController7,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 8th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '8',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController8,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController8,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController8,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController8,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController8,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController8,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController8,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController8,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 9th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '9',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController9,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController9,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController9,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController9,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController9,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController9,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController9,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController9,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 10th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '10',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController10,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController10,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController10,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController10,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController10,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController10,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController10,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController10,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 11th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '11',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController11,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController11,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController11,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController11,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController11,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController11,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController11,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController11,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 12th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '12',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController12,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController12,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController12,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController12,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController12,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController12,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController12,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController12,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 13th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '13',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController13,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController13,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController13,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController13,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController13,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController13,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController13,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController13,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 14th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '14',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController14,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController14,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController14,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController14,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController14,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController14,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController14,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController14,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 15th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '15',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController15,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController15,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController15,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController15,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController15,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController15,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController15,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController15,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 16th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '16',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController16,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController16,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController16,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController16,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController16,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController16,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController16,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController16,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 17th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '17',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController17,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController17,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController17,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController17,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController17,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController17,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController17,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController17,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 18th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '18',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController18,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController18,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController18,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController18,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController18,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController18,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController18,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController18,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 19th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '19',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController19,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController19,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController19,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController19,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController19,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController19,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController19,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController19,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 20th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '20',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController20,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController20,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController20,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController20,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController20,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController20,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController20,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController20,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 21th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '21',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController21,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController21,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController21,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController21,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController21,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController21,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController21,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController21,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 22th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '22',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController22,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController22,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController22,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController22,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController22,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController22,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController22,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController22,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 23th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '23',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController23,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController23,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController23,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController23,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController23,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController23,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController23,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController23,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 24th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '24',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController24,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController24,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController24,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController24,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController24,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController24,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController24,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController24,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 25th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '25',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController25,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController25,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController25,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController25,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController25,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController25,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController25,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController25,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 26th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '26',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController26,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController26,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController26,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController26,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController26,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController26,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController26,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController26,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 27th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '27',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController27,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController27,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController27,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController27,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController27,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController27,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController27,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController27,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),


                  //TODO: 28th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '28',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController28,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController28,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController28,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController28,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController28,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController28,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController28,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController28,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),


                  //TODO: 29th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '29',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController29,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController29,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController29,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController29,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController29,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController29,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController29,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController29,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 30th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '30',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController30,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController30,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController30,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController30,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController30,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController30,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController30,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController30,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  //TODO: 31th Table
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Day
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: PaddingTitleText(title: '31',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstReadingController31,

                            ),
                          ),
                          //SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstSignController31,

                            ),
                          ),
                          //Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.firstDayController31,

                            ),
                          ),
                          //Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondReadingController31,

                            ),
                          ),
                          //second SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondSignController31,

                            ),
                          ),
                          //Second Day
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.secondDayController31,

                            ),
                          ),
                          //Third Reading
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdReadingController31,

                            ),
                          ),
                          //third SIGN
                          TableCell(
                            child: MyTextFormField(
                              controller: f039Controller.thirdSignController31,

                            ),
                          ),

                        ],
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SizedBox()),
                     Expanded(child:  Column(
                       children: [
                         MyTitleText(
                           title: 'F039-THHC COMPRESS GAS CYLINDER STORAGE AND HANDLING',
                           color: Colors.black,
                         ),
                         MyTitleText(
                           title: 'THHC-031 COMPRESS GAS CYLINDER STORAGE AND HANDLING',
                           color: Colors.black,
                         ),
                       ],
                     ),),

                    ],
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
  Map<int, TableColumnWidth> ColumnWidth(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  {
      0: FlexColumnWidth(width * .5),
      1: FlexColumnWidth(width * 1),
      2: FlexColumnWidth(width * .5),
      3: FlexColumnWidth(width * .5),
      4: FlexColumnWidth(width * 1),
      5: FlexColumnWidth(width * .5),
      6: FlexColumnWidth(width * .5),
      7: FlexColumnWidth(width * 1),
      8: FlexColumnWidth(width * .5),
    };
  }
}
