import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f035_controller/f035_controller.dart';

import '../../widgets/my_text_form_field.dart';

class F035 extends StatelessWidget {

  var controller = Get.put(F035Controller());
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    return GetBuilder<F035Controller>(
      builder: (controller)=> Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //TODO: Self-Care table
                Container(
                  color: Colors.teal.shade400,
                  child: Table(
                    columnWidths: {
                      0: FlexColumnWidth(x * 1.5),
                      1: FlexColumnWidth(x * 0.5),
                      2: FlexColumnWidth(x * 0.5),
                      3: FlexColumnWidth(x * 0.5),
                      4: FlexColumnWidth(x * 0.5),
                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              color: Colors.teal.shade400,
                              child: Column(
                                children: [
                                  const Spacer(),
                                  TitleText(
                                      title: 'Self-Care',
                                      textAlign: TextAlign.center),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          TableCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TitleText(
                                    title: 'Admission\n',
                                    textAlign: TextAlign.center),
                                Container(
                                  width: double.infinity,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                TitleText(
                                    title: 'Date:', textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                          TableCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TitleText(
                                    title: 'Re-\nassessment',
                                    textAlign: TextAlign.center),
                                Container(
                                  width: double.infinity,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                TitleText(
                                    title: 'Date:', textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                          TableCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TitleText(
                                    title: 'Re-\nassessment',
                                    textAlign: TextAlign.center),
                                Container(
                                  width: double.infinity,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                TitleText(
                                    title: 'Date:', textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                          TableCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TitleText(
                                    title: 'Re-\nassessment',
                                    textAlign: TextAlign.center),
                                Container(
                                  width: double.infinity,
                                  height: 1.5,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                TitleText(
                                    title: 'Date:', textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //TODO: first table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Eating
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '1.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Eating'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.eatingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.eatingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.eatingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.eatingReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Bathing
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '2.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Bathing'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bathingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bathingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bathingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bathingReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Grooming
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '3.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Grooming'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.groomingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.groomingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.groomingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.groomingReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Upper
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '4.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Dressing Upper body'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.upperAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.upperReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.upperReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.upperReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Lower
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '5.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Dressing Lower body'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.lowerAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.lowerReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.lowerReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.lowerReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Toleting
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '6.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Toileting'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletingReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              
                //TODO: Sphincter table
                TitleContainer(
                  title: 'Sphincter Control',
                  context: context
                ),

                //TODO: second table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Bladder
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '7.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Bladder Management'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bladderAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bladderReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bladderReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bladderReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: Bowel
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '8.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Bowel Management'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bowelAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bowelReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bowelReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bowelReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //TODO: Transfers table
                TitleContainer(
                    title: 'Transfers',
                    context: context
                ),

                //TODO: third table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Bed
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '9.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Transfers Bed to chair'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bedAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bedReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bedReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.bedReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                    //TODO: toilet
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '10.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Transfers: toilet'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.toiletReAssessmentController3
                          ),
                        ),
                      ],
                    ),

                    //TODO: tub
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '11.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Transfers: Tub/shower'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.tubAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.tubReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.tubReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.tubReAssessmentController3
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //TODO: Transfers table
                TitleContainer(
                    title: 'Locomotion',
                    context: context
                ),

                //TODO: forth table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Walk
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '12.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Locomotion: Walk or Wheelchair'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.walkAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.walkReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.walkReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.walkReAssessmentController3
                          ),
                        ),
                      ],
                    ),

                    //TODO: Stairs
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '13.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Locomotion: Stairs'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.stairsAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.stairsReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.stairsReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.stairsReAssessmentController3
                          ),
                        ),
                      ],
                    ),


                  ],
                ),

                //TODO: Transfers table
                TitleContainer(
                    title: 'Communication',
                    context: context
                ),
                //TODO: fifth table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Comprehension
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '14.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Comprehension'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.comprehensionAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.comprehensionReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.comprehensionReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.comprehensionReAssessmentController3
                          ),
                        ),
                      ],
                    ),

                    //TODO: Stairs
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '15.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Expression'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.expressionAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.expressionReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.expressionReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.expressionReAssessmentController3
                          ),
                        ),
                      ],
                    ),


                  ],
                ),


                //TODO: Transfers table
                TitleContainer(
                    title: 'Social Cognition',
                    context: context
                ),
                //TODO: sixth table
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(x * 2),
                    1: FlexColumnWidth(x * 10),
                    2: FlexColumnWidth(x * 4),
                    3: FlexColumnWidth(x * 4),
                    4: FlexColumnWidth(x * 4),
                    5: FlexColumnWidth(x * 4),
                  },
                  border: TableBorder.all(),
                  children:  [
                    //TODO: Social Interaction
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '16.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Social Interaction'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.socialAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.socialReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.socialReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.socialReAssessmentController3
                          ),
                        ),
                      ],
                    ),

                    //TODO: Solving
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '17.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Problem Solving'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.solvingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.solvingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.solvingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.solvingReAssessmentController3
                          ),
                        ),
                      ],
                    ),

                    //TODO: Memory
                    TableRow(
                      children: [
                        TableCell(
                          child: numberText(title: '18.'),
                        ),
                        TableCell(
                          child: SelfText(title: 'Memory'),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.memoryAdmissionController
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.memoryReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.memoryReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: MyTextFormField(
                              controller: controller.memoryReAssessmentController3
                          ),
                        ),
                      ],
                    ),


                  ],
                ),

                //TODO: Total Score table
                Container(
                  color: Colors.teal.shade400,
                  child: Table(
                    columnWidths: {
                      0: FlexColumnWidth(x * 1.5),
                      1: FlexColumnWidth(x * 0.5),
                      2: FlexColumnWidth(x * 0.5),
                      3: FlexColumnWidth(x * 0.5),
                      4: FlexColumnWidth(x * 0.5),
                    },
                    border: TableBorder.all(),
                    children:  [
                      TableRow(
                        children: [
                          const TableCell(
                            child:Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                              child: Text('TOTAL SCORE:',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                          TableCell(
                            child: MyTextFormField(
                                controller: controller.scoreAdmissionController
                            ),
                          ),
                         TableCell(
                          child: MyTextFormField(
                              controller: controller.scoreAdmissionController
                          ),
                        ),
                         TableCell(
                          child: MyTextFormField(
                              controller: controller.scoreAdmissionController
                          ),
                        ),
                         TableCell(
                          child: MyTextFormField(
                              controller: controller.scoreAdmissionController
                          ),
                        ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //TODO: new table

                //TODO: Scale table
                Container(
                  color: Colors.lightGreen.shade100,
                  child: Table(
                    border: TableBorder.all(),
                    children: const [
                      TableRow(
                        children: [
                          TableCell(
                            child:Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Text('Scale:',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //TODO: Score table

                Row(
                 children: [
                 Expanded(
                   flex: 80,
                     child:    Table(
                       columnWidths: {
                         0: FlexColumnWidth(x * 3),
                         1: FlexColumnWidth(x * 30),
                       },
                       border: TableBorder.all(),
                       children:  [
                         TableRow(
                           children: [
                             TableCell(
                               child: Container(
                                 color: Colors.lightGreen.shade100,
                                 padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                 child: const Text(
                                   'Score',
                                   maxLines: 1,
                                   overflow: TextOverflow.ellipsis,
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                   ),
                                 ),
                               ),
                             ),
                             TableCell(
                               verticalAlignment: TableCellVerticalAlignment.fill,
                               child: Container(
                                 color: Colors.lightGreen.shade100,
                                 padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                 child: const Text(
                                   'Independent',
                                   maxLines: 1,
                                   overflow: TextOverflow.ellipsis,
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         TableRow(
                           children: [
                             TableCell(
                               child: numberText(title: '7'),
                             ),
                             TableCell(
                               child: SelfText(title: 'Complete Independence (Timely, Safely)'),
                             ),

                           ],
                         ),
                         TableRow(
                           children: [
                             TableCell(
                               child: numberText(title: '6'),
                             ),
                             TableCell(
                               child: SelfText(title: 'Modified Independence (Device)'),
                             ),

                           ],
                         ),


                       ],
                     ),),
                   Expanded(
                   flex: 20,
                     child: SelfText(title: 'No Helper')),

               ],),
                 Table(
                  border: TableBorder.all(),
                  children:  const [
                    TableRow(
                      children: [
                        TableCell(
                       child: SizedBox(),
                        ),

                      ],
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 80,
                      child:    Table(
                        columnWidths: {
                          0: FlexColumnWidth(x * 3),
                          1: FlexColumnWidth(x * 30),
                        },
                        border: TableBorder.all(),
                        children:  [
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  color: Colors.lightGreen.shade100,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                  child: const Text(
                                    '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.fill,
                                child: Container(
                                  color: Colors.lightGreen.shade100,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                  child: const Text(
                                    'Modified Dependence',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: numberText(title: '5'),
                              ),
                              TableCell(
                                child: SelfText(title: 'Supervision (Subject = 100%+)'),
                              ),

                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: numberText(title: '4'),
                              ),
                              TableCell(
                                child: SelfText(title: 'Minimal Assist (Subject = 75%+)'),
                              ),

                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: numberText(title: '3'),
                              ),
                              TableCell(
                                child: SelfText(title: 'Moderate Assist (Subject = 50%+)'),
                              ),

                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  color: Colors.lightGreen.shade100,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                  child: const Text(
                                    '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.fill,
                                child: Container(
                                  color: Colors.lightGreen.shade100,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                                  child: const Text(
                                    'Complete Dependence',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          TableRow(
                            children: [
                              TableCell(
                                child: numberText(title: '2'),
                              ),
                              TableCell(
                                child: SelfText(title: 'Maximal Assist (Subject = 25%+)'),
                              ),

                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: numberText(title: '1'),
                              ),
                              TableCell(
                                child: SelfText(title: 'Total Assist (Subject = less than 25%)'),
                              ),

                            ],
                          ),

                        ],
                      ),),
                    Expanded(
                        flex: 20,
                        child: SelfText(title: 'Helper')),
                  ],),
                Table(

                  border: TableBorder.all(),
                  children:  const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Note: Leave no blanks. Enter 1 if patient is not testable due to risk.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),



                  ],
                ),
                //TODO: Signature  table
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Therapist Name:'),
                        SizedBox(
                          width: 200,
                          child: MyTextFormField(
                            controller: controller.nameController,
                            hintText: '______________________________',
                          ),
                        ),
                        Text('Employee ID:'),
                        SizedBox(
                          width: 200,
                          child: MyTextFormField(
                            controller: controller.employeeController,
                            hintText: '______________________________',
                          ),
                        ),
                        Text('Signature:'),
                        SizedBox(
                          width: 200,
                          child: MyTextFormField(
                            controller: controller.signatureController,
                            hintText: '______________________________',
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }


  Widget TitleContainer({required String title,required BuildContext context}){
    double x = MediaQuery.of(context).size.height;
    return  Container(
      color: Colors.teal.shade400,
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(x * 1.5),
          1: FlexColumnWidth(x * 0.5),
          2: FlexColumnWidth(x * 0.5),
          3: FlexColumnWidth(x * 0.5),
          4: FlexColumnWidth(x * 0.5),
        },
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              TableCell(
                child:singleText(text: title),
              ),
              const TableCell(
                child:SizedBox(),
              ),
              const TableCell(
                child:SizedBox(),
              ),
              const TableCell(
                child:SizedBox(),
              ),
              const TableCell(
                child:SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget singleText({required String text}){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child:  TitleText(
          title: text,
          textAlign: TextAlign.center),
    );
  }

  Widget TitleText({required String title, required TextAlign textAlign}) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget SelfText({required String title,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        // textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget numberText({required String title,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }


}
