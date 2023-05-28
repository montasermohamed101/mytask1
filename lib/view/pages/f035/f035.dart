import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f035_controller/f035_controller.dart';

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
                          child: myTextFormFieldWidget(
                              controller: controller.eatingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.eatingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.eatingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.bathingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bathingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bathingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.groomingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.groomingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.groomingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.upperAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.upperReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.upperReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.lowerAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.lowerReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.lowerReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.toiletingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.toiletingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.toiletingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.bladderAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bladderReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bladderReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.bowelAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bowelReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bowelReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.bedAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bedReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.bedReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.toiletAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.toiletReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.toiletReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.tubAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.tubReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.tubReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.walkAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.walkReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.walkReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.stairsAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.stairsReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.stairsReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.comprehensionAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.comprehensionReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.comprehensionReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.expressionAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.expressionReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.expressionReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.socialAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.socialReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.socialReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.solvingAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.solvingReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.solvingReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                          child: myTextFormFieldWidget(
                              controller: controller.memoryAdmissionController
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.memoryReAssessmentController1
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.memoryReAssessmentController2
                          ),
                        ),
                        TableCell(
                          child: myTextFormFieldWidget(
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
                            child: myTextFormFieldWidget(
                                controller: controller.scoreAdmissionController
                            ),
                          ),
                         TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.scoreAdmissionController
                          ),
                        ),
                         TableCell(
                          child: myTextFormFieldWidget(
                              controller: controller.scoreAdmissionController
                          ),
                        ),
                         TableCell(
                          child: myTextFormFieldWidget(
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
                //TODO: Modified  table
                //Modified Dependence'


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
      color: Colors.teal.shade400,
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

  TextFormField myTextFormFieldWidget({
    required TextEditingController controller,
  }) {
   return TextFormField(
     decoration: const InputDecoration(
       contentPadding: EdgeInsets.symmetric(vertical: 10),
       isDense: true,
       border: InputBorder.none,
     ),
   );

  }
}
