import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/f042_controller/f042_controller.dart';
import '../../widgets/custom_textform_field/my_text_form_field.dart';
import '../../widgets/custome_text/my_title_text.dart';

class F042 extends StatelessWidget {

  var f042Controller = Get.put(F042Controller());
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<F042Controller>(builder: (_) =>
        Scaffold(

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset('assets/ic_app.jpg',
                          height: 70,

                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 5,
                        child: MyTitleText(
                          title: 'IN-SERVICE SCHEDULE BOOKING',
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  MyTitleText(title: 'Please select your topic and date',
                      color: Colors.black,
                      fontSize:15,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          //Staff Name
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: Colors.teal.shade400,
                              child: MyTitleText(
                                title: 'STAFF NAME',
                                textAlign: TextAlign.center,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          //Topic
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: Colors.teal.shade400,
                              child: MyTitleText(
                                title: 'TOPIC\n',
                                textAlign: TextAlign.center,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          //Date
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: Colors.teal.shade400,
                              child: MyTitleText(
                                title: 'DATE\n',
                                textAlign: TextAlign.center,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          //DONE OR NOT DONE
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              color: Colors.teal.shade400,
                              child: MyTitleText(
                                title: 'DONE/NOT DONE',
                                textAlign: TextAlign.center,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Table(
                    columnWidths: ColumnWidth(context),
                    border: TableBorder.all(),
                    children: [
                      //Todo: 1th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController1,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController1,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                           title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController1,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 2th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController2,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController2,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController2,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 3th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController3,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController3,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController3,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 4th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController4,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController4,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController4,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 5th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController5,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController5,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController5,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 6th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController6,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController6,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController6,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 7th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController7,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController7,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController7,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 8th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController8,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController8,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController8,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 9th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController9,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController9,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController9,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 10th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController10,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController10,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController10,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 11th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController11,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController11,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController11,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 12th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController12,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController12,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController12,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 13th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController13,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController13,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController13,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 14th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController14,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController14,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController14,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 15th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController15,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController15,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController15,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 16th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController16,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController16,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController16,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 17th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController17,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController17,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController17,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 18th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController18,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController18,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController18,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 19th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController19,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController19,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController19,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 20th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController20,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController20,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController20,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 21th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController21,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController21,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController21,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 22th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController22,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController22,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController22,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 23th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController23,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController23,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController23,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 24th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController24,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController24,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController24,
                            ),
                          ),

                        ],
                      ),

                      //Todo: 25th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController25,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController25,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController25,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 26th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController26,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController26,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController26,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 27th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController27,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController27,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController27,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 28th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController28,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController28,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController28,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 29th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController29,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController29,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController29,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 30th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController30,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController30,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController30,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 31th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController31,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController31,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController31,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 32th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController32,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController32,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController32,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 33th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController33,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController33,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController33,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 34th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController34,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController34,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController34,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 35th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController35,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController35,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController35,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 36th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController36,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController36,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController36,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 37th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController37,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController37,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController37,
                            ),
                          ),

                        ],
                      ),
                      //Todo: 38th Table
                      TableRow(
                        children: [
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.nameController38,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.topicController38,
                            ),
                          ),
                          myCell(
                            child: MyTitleText(
                              title: '${f042Controller.date}',
                              color: Colors.black,
                              fontSize: 15,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          myCell(
                            child: MyTextFormField(
                              controller:
                              f042Controller.doneOrNotDoneController38,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  MyTitleText(
                    title: 'According to THHC-034 STAFF DEVELOPMENT, MANDATORY INSERVICES, CERTIFICATIONS) all professional staff must present 2 in-services annually.',
                    color: Colors.black,
                    fontSize:15,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  MyTitleText(
                    title: 'F042-THHC IN-SERVICE SCHEDULE BOOKING',
                    color: Colors.black,
                    fontSize:9,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
  TableCell myCell({required Widget child}){
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: child,
    );
  }
  Map<int, TableColumnWidth> ColumnWidth(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return {
      0: FlexColumnWidth(width * 0.5),
      1: FlexColumnWidth(width * 0.5),
      2: FlexColumnWidth(width * 0.5),
      3: FlexColumnWidth(width * 0.5),
    };
  }
}
