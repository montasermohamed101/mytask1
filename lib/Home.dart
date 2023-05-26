// // ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names, prefer_const_constructors, file_names, unused_local_variable
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:test_2/Controllers/Var_C.dart';
// import 'package:test_2/Widget/textField.dart';
//
// import 'Controllers/Check_BoX.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// final TEXT_controller = TextEditingController();
//
// class _HomePageState extends State<HomePage> {
//   final Check_Box ctrl = Get.put(Check_Box());
//
//   final C_var var_ctrl = Get.put(C_var());
//
//   @override
//   Widget build(BuildContext context) {
//     final h = MediaQuery.of(context).size;
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: const Color(0xFF000000), style: BorderStyle.solid),
//         ),
//         child: SingleChildScrollView(
//           child: Obx(
//             () => Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 100,
//                   width: double.infinity,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           height: 100,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: const Color(0xFF000000),
//                                 style: BorderStyle.solid),
//                           ),
//                           child: Expanded(
//                             child: Image.asset(
//                               'images/tawazun-logo.png',
//                               // fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Container(
//                             alignment: Alignment.center,
//                             height: double.infinity,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                   color: const Color(0xFF000000),
//                                   style: BorderStyle.solid),
//                             ),
//                             child: const Text(
//                               'Initial Patient Assessment Nursing (Admission)',
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           height: double.infinity,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                                 color: const Color(0xFF000000),
//                                 style: BorderStyle.solid),
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'PATIENT LABEL',
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' A .ADMISSION DATA',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Admission Date and Time:   ',
//                                   style: const TextStyle(fontSize: 10)),
//
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text(' Admission Diagnosis :   ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.AdmissionDiagnosis.value)
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     0: FlexColumnWidth(2),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Admitting THHC Staff Name and ID#:   ',
//                                   style: const TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl
//                                       .AdmittingTHHCStaffNameandID.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text(' Physician:   ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.Physician.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text('', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     4: FlexColumnWidth(3),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Specialty  ',
//                                   style: const TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.Specialty.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text(' SN  ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(TEXT_controller: var_ctrl.SN.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('PT ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(TEXT_controller: var_ctrl.PT.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text(' RT  ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(TEXT_controller: var_ctrl.RT.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Other:   ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(TEXT_controller: var_ctrl.Other.value)
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     1: FlexColumnWidth(3),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Reason for THHC   ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text('', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     0: FlexColumnWidth(1),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text('Information obtained from :  ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Patient  ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line7_Patient.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text(' Family  ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line7_Family.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Text('Other:   ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line7_Other.value)
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' VITAL SIGNS',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     3: FlexColumnWidth(2),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(top: 15),
//                                   child: Row(
//                                     children: [
//                                       Text('Temp:  ',
//                                           style: TextStyle(fontSize: 10)),
//                                       C_TextFild(
//                                         TEXT_controller:
//                                             var_ctrl.line9_Temp.value,
//                                         hint_Text: '_______________',
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line9_Oral.value,
//                                             onChanged: (val) {
//                                               ctrl.line9_Oral.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('Oral  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line9_Axillary.value,
//                                             onChanged: (val) {
//                                               ctrl.line9_Axillary.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('Axillary  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('  Ear  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Rectal.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Rectal.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('Rectal  ',
//                                             style: TextStyle(fontSize: 10)),
//                                         C_TextFild(
//                                             TEXT_controller: TEXT_controller)
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text('Blood Pressure  ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text('', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(9),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(top: 20),
//                                   child: Row(
//                                     children: [
//                                       Text('Pulse Rate:  ',
//                                           style: TextStyle(fontSize: 10)),
//                                       C_TextFild(
//                                         TEXT_controller:
//                                             var_ctrl.line11_PulseRate.value,
//                                         hint_Text: '_______________',
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line11_Regular.value,
//                                             onChanged: (val) {
//                                               ctrl.line11_Regular.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' Regular  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line11_Apical.value,
//                                             onChanged: (val) {
//                                               ctrl.line11_Apical.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('  Radial  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line12_Irregular.value,
//                                             onChanged: (val) {
//                                               ctrl.line12_Irregular.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' Irregular  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line12_R_Radial.value,
//                                             onChanged: (val) {
//                                               ctrl.line12_R_Radial.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' Radial  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: const [
//                                         Text(' '),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line13_L_Radial.value,
//                                             onChanged: (val) {
//                                               ctrl.line13_L_Radial.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' L Radial  ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: const [
//                                           Text(' Standing  ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: const [
//                                           Text(' Sitting  ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: const [
//                                           Text('Lying  ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text(' R Arm   ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                             TEXT_controller:
//                                                 var_ctrl.line11_R_Arm.value,
//                                             hint_Text: ' ___/____',
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text('  R Wrist  ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                               TEXT_controller:
//                                                   var_ctrl.line12_R_Wrist.value,
//                                               hint_Text: ' ___/____')
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text('R Leg ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                               TEXT_controller:
//                                                   var_ctrl.line13_R_Leg.value,
//                                               hint_Text: ' ___/____')
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text(' L Arm ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                               TEXT_controller:
//                                                   var_ctrl.line11_L_Arm.value,
//                                               hint_Text: ' ___/____')
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text(' L Wrist  ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                               TEXT_controller:
//                                                   var_ctrl.line12_L_Wrist.value,
//                                               hint_Text: ' ___/____')
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               columnWidths: const {},
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           const Text(' L Leg   ',
//                                               style: TextStyle(fontSize: 10)),
//                                           C_TextFild(
//                                               TEXT_controller:
//                                                   var_ctrl.line13_L_Leg.value,
//                                               hint_Text: ' ___/____')
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     3: FlexColumnWidth(2),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('Respiration:  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller:
//                                     var_ctrl.line14_Respiration.value,
//                                 hint_Text: '_________',
//                               )
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('Oxygen Saturation: ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line14_OxygenSaturation.value,
//                                   hint_Text: '_________')
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('Height: ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line14_Height.value,
//                                   hint_Text: '_________  cm')
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('Weight: ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line14_Weight.value,
//                                   hint_Text: '_________  kg Actual Estimated')
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' VITAL SIGNS',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: Row(
//                             children: [
//                               Text(
//                                   ' Dose Patient Express or exhibit of Pain:   ',
//                                   style: TextStyle(fontSize: 10)),
//                               Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line16_NO.value,
//                                   onChanged: (val) {
//                                     ctrl.line16_NO.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                               Text(' No ', style: TextStyle(fontSize: 10)),
//                               Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line16_YES.value,
//                                   onChanged: (val) {
//                                     ctrl.line16_YES.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                               Text(' Yes ', style: TextStyle(fontSize: 10)),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                   '  If Yes,Initiate Pain Assessment Form (F028-THHC) ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: Row(
//                     children: [
//                       Text(
//                         ' ALLERGIES  ',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line17_NO.value,
//                                 onChanged: (val) {
//                                   ctrl.line17_NO.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text(' No ', style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line17_YES.value,
//                                 onChanged: (val) {
//                                   ctrl.line17_YES.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text(' Yes ', style: TextStyle(fontSize: 10)),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text('  NKA ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 // // line 18 ------------------------------------------------------------------------
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Medication ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text(' 1 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line18_Medication_1.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('2 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line18_Medication_2.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('3 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line18_Medication_3.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Food ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text(' 1 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line19_Food_1.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('2 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line19_Food_2.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('3 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller: var_ctrl.line19_Food_3.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Other ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text(' 1 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line20_Other_1.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('2 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line20_Other_2.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('3 ', style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                   TEXT_controller:
//                                       var_ctrl.line20_Other_3.value)
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' CONSENT',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               '   Signed: ',
//                               style: TextStyle(fontSize: 10),
//                             ),
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line22_NO.value,
//                                     onChanged: (val) {
//                                       ctrl.line22_NO.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 Text(' No ', style: TextStyle(fontSize: 10)),
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line22_YES.value,
//                                     onChanged: (val) {
//                                       ctrl.line22_YES.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 Text(' Yes ', style: TextStyle(fontSize: 10)),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Text('  NKA ', style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               '   Signed By : ',
//                               style: TextStyle(fontSize: 10),
//                             ),
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line22_Patient.value,
//                                     onChanged: (val) {
//                                       ctrl.line22_Patient.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 Text(' Patient   ',
//                                     style: TextStyle(fontSize: 10)),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Text('  Other', style: TextStyle(fontSize: 10)),
//                                 SizedBox(
//                                   width: 100,
//                                   child: C_TextFild(
//                                     TEXT_controller:
//                                         var_ctrl.line22_Other.value,
//                                     hint_Text: '____________',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     '   PATIENT BILL OF RIGHTS',
//                     style: TextStyle(fontSize: 10),
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               '   Patients Copy/Explanation given to:  ',
//                               style: TextStyle(fontSize: 10),
//                             ),
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line24_Patient.value,
//                                     onChanged: (val) {
//                                       ctrl.line24_Patient.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 Text(' Patient        ',
//                                     style: TextStyle(fontSize: 10)),
//                                 Text(' Other(Specify):  ',
//                                     style: TextStyle(fontSize: 10)),
//                                 SizedBox(
//                                   width: 100,
//                                   child: C_TextFild(
//                                     TEXT_controller:
//                                         var_ctrl.line24_Other.value,
//                                     hint_Text: '____________',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 30,
//                   width: double.infinity,
//                   color: Color.fromARGB(255, 29, 189, 154),
//                   child: Table(
//                     border: TableBorder.all(),
//                     columnWidths: const {},
//                     children: [
//                       TableRow(
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 '   ORIENTATION :  ',
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               Row(
//                                 children: [
//                                   Obx(
//                                     () => Checkbox(
//                                       value: ctrl.line25_Patient.value,
//                                       onChanged: (val) {
//                                         ctrl.line25_Patient.value = val ?? true;
//                                       },
//                                     ),
//                                   ),
//                                   Text(' Patient        ',
//                                       style: TextStyle(fontSize: 10)),
//                                   Text(' Other:  ',
//                                       style: TextStyle(fontSize: 10)),
//                                   SizedBox(
//                                     width: 100,
//                                     child: C_TextFild(
//                                       TEXT_controller:
//                                           var_ctrl.line25_Other.value,
//                                       hint_Text: '____________',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line26_THHCWorkingHours.value,
//                                 onChanged: (val) {
//                                   ctrl.line26_THHCWorkingHours.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' THHC Working Hours  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line26_THHCDischargeplan.value,
//                                 onChanged: (val) {
//                                   ctrl.line26_THHCDischargeplan.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  THHC Discharge plan  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value:
//                                     ctrl.line26_EmergencyTelephoneNumbers.value,
//                                 onChanged: (val) {
//                                   ctrl.line26_EmergencyTelephoneNumbers.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Emergency Telephone Numbers',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl
//                                     .line27_THHCdisciplinesinvolveinpatientcare
//                                     .value,
//                                 onChanged: (val) {
//                                   ctrl.line27_THHCdisciplinesinvolveinpatientcare
//                                       .value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(
//                                 ' THHC disciplines involve in patient care  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line27_THHCTelephoneNumbers.value,
//                                 onChanged: (val) {
//                                   ctrl.line27_THHCTelephoneNumbers.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' THHC Telephone Numbers  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line27_ServiceCharges.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Service Charges ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     4: FlexColumnWidth(3),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value:
//                                     ctrl.line28_VisitFrequencydaysandtime.value,
//                                 onChanged: (val) {
//                                   ctrl.line28_VisitFrequencydaysandtime.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Visit Frequency,days and time  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line28_EmergencyPlan.value,
//                                 onChanged: (val) {
//                                   ctrl.line28_EmergencyPlan.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Emergency Plan  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               const Text('  Others:  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: var_ctrl.line28_Other.value,
//                                 hint_Text: '____________',
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 26,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' B . HEALTH HISTORY',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 1,
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 26,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' CUURENT AND / OR PAST HEALTH PROBLEMS ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line31_NoPreviousProblems.value,
//                                 onChanged: (val) {
//                                   ctrl.line31_NoPreviousProblems.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' No Previous Problems ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line31_Stroke.value,
//                                 onChanged: (val) {
//                                   ctrl.line31_Stroke.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Stroke  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line31_Asthma.value,
//                                 onChanged: (val) {
//                                   ctrl.line31_Asthma.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Asthma/Bronchitis',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line31_MentalHealthDisorder.value,
//                                 onChanged: (val) {
//                                   ctrl.line31_MentalHealthDisorder.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Mental Health Disorder',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line32_Cancer.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Cancer  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line32_Renal.value,
//                                 onChanged: (val) {
//                                   ctrl.line32_Renal.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Renal/Prostate/Bladder Problem ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line32_Tuberculosis.value,
//                                 onChanged: (val) {
//                                   ctrl.line32_Tuberculosis.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Tuberculosis',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line32_Sexually.value,
//                                 onChanged: (val) {
//                                   ctrl.line32_Sexually.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Sexually Transmitted Diseases ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {
//                     4: FlexColumnWidth(3),
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line33_RespiratoryDisease.value,
//                                 onChanged: (val) {
//                                   ctrl.line33_RespiratoryDisease.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Respiratory Disease  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line33_Gastrointestinal.value,
//                                 onChanged: (val) {
//                                   ctrl.line33_Gastrointestinal.value =
//                                       val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Gastrointestinal/Bowel Problem',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line33_Jundice.value,
//                                 onChanged: (val) {
//                                   ctrl.line33_Jundice.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Jundice/Hepatitis ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line33_Seizure.value,
//                                   onChanged: (val) {
//                                     ctrl.line33_Seizure.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                               const Text(
//                                   '   Seizure/Epilepsy/Neurological disorder ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line35_HeartDisease.value,
//                                 onChanged: (val) {
//                                   ctrl.line35_HeartDisease.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Heart Disease  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line35_Blood.value,
//                                 onChanged: (val) {
//                                   ctrl.line35_Blood.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Blood/Bleeding Disorder ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line35_Other.value,
//                                 onChanged: (val) {
//                                   ctrl.line35_Other.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               const Text('  Others:  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: var_ctrl.line35_Other.value,
//                                 hint_Text: '____________',
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text(
//                                   'Previous Hospitalizations/Past Surgeries (Where/When/Reasons):  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: var_ctrl
//                                     .line36_PreviousHospitalizations.value,
//                                 hint_Text: '__________________',
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 // //
//                 // // line 36 =============================================================================
//                 // //
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Container(
//                           alignment: Alignment.centerLeft,
//                           height: 25,
//                           width: double.infinity,
//                           color: const Color.fromARGB(255, 29, 189, 154),
//                           child: const Text(
//                             '  SLEEP/REST',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.centerLeft,
//                           height: 25,
//                           width: double.infinity,
//                           color: const Color.fromARGB(255, 29, 189, 154),
//                           child: const Text(
//                             '   PSYCHOLOGICAL ASSESSMENT',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line38_NoProblems_1.value,
//                                 onChanged: (val) {
//                                   ctrl.line38_NoProblems_1.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' No Problems ',
//                                 style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line38_Difficulty.value,
//                                 onChanged: (val) {
//                                   ctrl.line38_Difficulty.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Difficulty falling sleep',
//                                 style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line38_Notrested.value,
//                                 onChanged: (val) {
//                                   ctrl.line38_Notrested.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Not rested after sleep   ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line38_Noproblem_2.value,
//                                 onChanged: (val) {
//                                   ctrl.line38_Noproblem_2.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' No problem identified ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                                 TEXT_controller:
//                                     var_ctrl.line38_Noproblemidentified.value)
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               const Text('Other:  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: TEXT_controller,
//                                 hint_Text: '__________________',
//                               )
//                             ],
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line39_Anxious.value,
//                                     onChanged: (val) {
//                                       ctrl.line39_Anxious.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Anxious   ',
//                                     style: TextStyle(fontSize: 10)),
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line39_Uncooperative.value,
//                                     onChanged: (val) {
//                                       ctrl.line39_Uncooperative.value =
//                                           val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Uncooperative ',
//                                     style: TextStyle(fontSize: 10)),
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line39_Depressed.value,
//                                     onChanged: (val) {
//                                       ctrl.line39_Depressed.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Depressed ',
//                                     style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line40_Sleep.value,
//                                 onChanged: (val) {
//                                   ctrl.line40_Sleep.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Sleep routine:Bedtime  ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_________#',
//                             ),
//                             const Text(' of hours: ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_________#',
//                             ),
//                             const Text(' of pillows : ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_________#',
//                             ),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line40_Naps.value,
//                                 onChanged: (val) {
//                                   ctrl.line40_Naps.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Naps  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line40_Angry.value,
//                                 onChanged: (val) {
//                                   ctrl.line40_Angry.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Angry    ',
//                                 style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line40_Agitated.value,
//                                 onChanged: (val) {
//                                   ctrl.line40_Agitated.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Agitated Combative ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               const Text('    What helps you sleep?  ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: TEXT_controller,
//                                 hint_Text: '____________________________',
//                               )
//                             ],
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Other: ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '________________',
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Center(
//                               child: const Text(
//                                   '   Page 1 of  6            F010-THHC Initial Patient Assessment Nursing(Admission) ',
//                                   style: TextStyle(fontSize: 15)),
//                             ),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '____________________________',
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     '  C. PHYSICAL ASSESSMENT   Check appropriate box if present,If none check No Problem Identified',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 1,
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' GASTROINTESTINAL ',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//
//                 // //
//                 // // line 44 =============================================================================
//                 // //
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(' Bowel Sounds ',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text(' Abdomen ',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text('Tubes ',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Absent ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Soft ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('NGT ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Present ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Distended ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('PEG ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Hypoactive ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Firm ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('PEG ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('Hyperactive ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(7),
//                                       child: Row(
//                                         children: const [
//                                           Text('   ELIMINATION ',
//                                               style: TextStyle(fontSize: 15)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('  No Problem Identified: ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text('Tenderness ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' Ascites',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Obx(
//                                           () => Checkbox(
//                                             value: ctrl.line10_Ear.value,
//                                             onChanged: (val) {
//                                               ctrl.line10_Ear.value =
//                                                   val ?? true;
//                                             },
//                                           ),
//                                         ),
//                                         const Text(' Girth : ',
//                                             style: TextStyle(fontSize: 10)),
//                                         C_TextFild(
//                                           TEXT_controller: TEXT_controller,
//                                           hint_Text: '______________ CM',
//                                         )
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line10_Ear.value,
//                                     onChanged: (val) {
//                                       ctrl.line10_Ear.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Jejunostomy: ',
//                                     style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Row(
//                               children: [
//                                 const Text('  Size:',
//                                     style: TextStyle(fontSize: 10)),
//                                 C_TextFild(
//                                   TEXT_controller: TEXT_controller,
//                                   hint_Text: '_______________',
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Row(
//                               children: [
//                                 const Text('  Size:',
//                                     style: TextStyle(fontSize: 10)),
//                                 C_TextFild(
//                                   TEXT_controller: TEXT_controller,
//                                   hint_Text: '_______________',
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Constipation ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: const [
//                               Text(' General ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             const Text('  Ballon intact : ',
//                                 style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text('  Yes ', style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text(' No ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Enema ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Rectal pain ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Date inserted / Changed: ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_______________',
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Diarrhea ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_______________ / day',
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Indigestion ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Change every: ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_______________ days/months',
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text('  Black/Tarry stools ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text(' Ostomy Type: ',
//                                             style: TextStyle(fontSize: 10)),
//                                         C_TextFild(
//                                           TEXT_controller: TEXT_controller,
//                                           hint_Text: '_________________',
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text('  Stoma size: ',
//                                             style: TextStyle(fontSize: 10)),
//                                         C_TextFild(
//                                           TEXT_controller: TEXT_controller,
//                                           hint_Text: '_________________',
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text('  Vomiting ',
//                                             style: TextStyle(fontSize: 10)),
//                                         C_TextFild(
//                                           TEXT_controller: TEXT_controller,
//                                           hint_Text: '_______________ / day',
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text(' Hematemesis ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Checkbox(
//                                           onChanged: (val) {},
//                                           value: false,
//                                         ),
//                                         const Text('  Difficulyt chewing ',
//                                             style: TextStyle(fontSize: 10)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               top: 40, bottom: 40, left: 10),
//                           child: Row(
//                             children: [
//                               const Text(' Others: ',
//                                   style: TextStyle(fontSize: 10)),
//                               C_TextFild(
//                                 TEXT_controller: TEXT_controller,
//                                 hint_Text:
//                                     '______________________________________',
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' GENTOURINARY ',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 //
//                 // line 68 =============================================================================
//                 //
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  No Problem Identified  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Burning ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Nocturia',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Catheter ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Dialysis  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Hematuria ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Incontinence',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               child: const Text(' Urethral',
//                                   style: TextStyle(fontSize: 10)),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               child: Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line10_Ear.value,
//                                   onChanged: (val) {
//                                     ctrl.line10_Ear.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                             ),
//                             const Text(' Suprapubic',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Hemodialysis  ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_____________ /Week',
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Oliquria ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Retention',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Type and size  ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_______________',
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Peritoneal  ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_____________ / day or week',
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Polyuria ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Cloudy Urine',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('Urine color ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_____________',
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Painful urination  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Dribbling ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Condom catheter',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Other : ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_____________',
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' SKIN/INTEGUMENTARY  Refer to  F038-THHC Wound Care Dressing Documentation Sheet 1 and 2  ',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             const Text('  Color ',
//                                 style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '_______________',
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Jaundice ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Moisture', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: const [
//                               Text(' Turgor ', style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' No Problem Identified  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Cyanotic ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Dry', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Poor', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Pale  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: const [
//                             Text(' Tepreature ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Moisture',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Fair ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Flushed  ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Warm ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Diaphoretic',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Good ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Mottled ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text('  Cool ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Night sweat',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: const [
//                             Text(' Lesions ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             const Text(' Petechiae ',
//                                 style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                         Row(
//                           children: const [],
//                         ),
//                         Row(
//                           children: const [],
//                         ),
//                         Row(
//                           children: [
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text(' No ', style: TextStyle(fontSize: 10)),
//                             Obx(
//                               () => Checkbox(
//                                 value: ctrl.line10_Ear.value,
//                                 onChanged: (val) {
//                                   ctrl.line10_Ear.value = val ?? true;
//                                 },
//                               ),
//                             ),
//                             Text(' Yes ', style: TextStyle(fontSize: 10)),
//                             C_TextFild(
//                               TEXT_controller: TEXT_controller,
//                               hint_Text: '   __________',
//                             ),
//                             Text('  wounds ', style: TextStyle(fontSize: 10)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Wound (1) Type ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                   Text(' Location ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Size ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_________',
//                                   ),
//                                   Text(' CM long X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text(' CM wide X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text('  CM Deep ',
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Wound (4) Type ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                   Text(' Location ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Size ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_________',
//                                   ),
//                                   Text(' CM long X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text(' CM wide X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text('  CM Deep ',
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Wound (2) Type ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                   Text(' Location ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Size ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_________',
//                                   ),
//                                   Text(' CM long X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text(' CM wide X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text('  CM Deep ',
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Wound (5) Type ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                   Text(' Location ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Size ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_________',
//                                   ),
//                                   Text(' CM long X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text(' CM wide X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text('  CM Deep ',
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Wound (3) Type ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                   Text(' Location ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(
//                                 children: [
//                                   const Text('Size ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_________',
//                                   ),
//                                   Text(' CM long X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text(' CM wide X ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '__________',
//                                   ),
//                                   Text('  CM Deep ',
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: const [],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(6),
//                           child: Row(
//                             children: const [
//                               Text(
//                                   ' Page 2 of  6                          F010-THHC Initial Patient Assessment Nursing(Admission) ',
//                                   style: TextStyle(fontSize: 15)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 // line 87 =============================================================================
//
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' NEUROLOGICAL ',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   columnWidths: const {},
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(10),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Text('  No Problem Identified ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(20),
//                                       child: Row(
//                                         children: const [
//                                           Text('General',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line10_Ear.value,
//                                     onChanged: (val) {
//                                       ctrl.line10_Ear.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Weakness ',
//                                     style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 36, bottom: 10),
//                               child: Row(
//                                 children: [
//                                   const Text(' Location: ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '_______________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Obx(
//                                   () => Checkbox(
//                                     value: ctrl.line10_Ear.value,
//                                     onChanged: (val) {
//                                       ctrl.line10_Ear.value = val ?? true;
//                                     },
//                                   ),
//                                 ),
//                                 const Text(' Seizure :',
//                                     style: TextStyle(fontSize: 10)),
//                                 C_TextFild(
//                                   TEXT_controller: TEXT_controller,
//                                   hint_Text: '____________',
//                                 ),
//                                 Text('/years', style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 36, bottom: 10),
//                               child: Row(
//                                 children: [
//                                   const Text('Frequency: ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '___________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 36, bottom: 10),
//                               child: Row(
//                                 children: [
//                                   const Text('Medication: ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '___________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//
//                         // ===============================
//
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(15),
//                                       child: Row(
//                                         children: const [
//                                           Text(' Responsiveness ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           const Text('To verbal stimuli ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           const Text('To touch',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     Obx(
//                                       () => Checkbox(
//                                         value: ctrl.line10_Ear.value,
//                                         onChanged: (val) {
//                                           ctrl.line10_Ear.value = val ?? true;
//                                         },
//                                       ),
//                                     ),
//                                     Text(' Numbness: ',
//                                         style: TextStyle(fontSize: 10)),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 43),
//                                 child: Row(
//                                   children: [
//                                     Text('Location:',
//                                         style: TextStyle(fontSize: 10)),
//                                     C_TextFild(
//                                       TEXT_controller: TEXT_controller,
//                                       hint_Text: '_______________',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     Obx(
//                                       () => Checkbox(
//                                         value: ctrl.line10_Ear.value,
//                                         onChanged: (val) {
//                                           ctrl.line10_Ear.value = val ?? true;
//                                         },
//                                       ),
//                                     ),
//                                     Text(' Decreased Sensation ',
//                                         style: TextStyle(fontSize: 10)),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 43),
//                                 child: Row(
//                                   children: [
//                                     Text('Location:',
//                                         style: TextStyle(fontSize: 10)),
//                                     C_TextFild(
//                                       TEXT_controller: TEXT_controller,
//                                       hint_Text: '_______________',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 30),
//                           child: Row(
//                             children: const [
//                               Text('  Level of consciousness ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 18),
//                           child: Row(
//                             children: [
//                               Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line10_Ear.value,
//                                   onChanged: (val) {
//                                     ctrl.line10_Ear.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                               const Text(' To painful stimuli ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Column(
//                           children: [
//                             Column(
//                               children: [
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(17),
//                                           child: Column(
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(7),
//                                                 child: Row(
//                                                   children: [
//                                                     Obx(
//                                                       () => Checkbox(
//                                                         value: ctrl
//                                                             .line10_Ear.value,
//                                                         onChanged: (val) {
//                                                           ctrl.line10_Ear
//                                                                   .value =
//                                                               val ?? true;
//                                                         },
//                                                       ),
//                                                     ),
//                                                     Text(' Tingling: ',
//                                                         style: TextStyle(
//                                                             fontSize: 10)),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 43, bottom: 5),
//                                                 child: Row(
//                                                   children: [
//                                                     Text('Location:',
//                                                         style: TextStyle(
//                                                             fontSize: 10)),
//                                                     C_TextFild(
//                                                       TEXT_controller:
//                                                           TEXT_controller,
//                                                       hint_Text:
//                                                           '_______________',
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(16),
//                                           child: Column(
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(7),
//                                                 child: Row(
//                                                   children: [
//                                                     Obx(
//                                                       () => Checkbox(
//                                                         value: ctrl
//                                                             .line10_Ear.value,
//                                                         onChanged: (val) {
//                                                           ctrl.line10_Ear
//                                                                   .value =
//                                                               val ?? true;
//                                                         },
//                                                       ),
//                                                     ),
//                                                     Text(' Paralysis: ',
//                                                         style: TextStyle(
//                                                             fontSize: 10)),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 43, bottom: 5),
//                                                 child: Row(
//                                                   children: [
//                                                     Text('Location:',
//                                                         style: TextStyle(
//                                                             fontSize: 10)),
//                                                     C_TextFild(
//                                                       TEXT_controller:
//                                                           TEXT_controller,
//                                                       hint_Text:
//                                                           '_______________',
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Column(
//                               children: [
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Row(
//                                             children: [
//                                               Obx(
//                                                 () => Checkbox(
//                                                   value: ctrl.line10_Ear.value,
//                                                   onChanged: (val) {
//                                                     ctrl.line10_Ear.value =
//                                                         val ?? true;
//                                                   },
//                                                 ),
//                                               ),
//                                               const Text('Vertigo ',
//                                                   style:
//                                                       TextStyle(fontSize: 10)),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Row(
//                                             children: [
//                                               Obx(
//                                                 () => Checkbox(
//                                                   value: ctrl.line10_Ear.value,
//                                                   onChanged: (val) {
//                                                     ctrl.line10_Ear.value =
//                                                         val ?? true;
//                                                   },
//                                                 ),
//                                               ),
//                                               const Text('Ataxia ',
//                                                   style:
//                                                       TextStyle(fontSize: 10)),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Row(
//                                             children: [
//                                               Obx(
//                                                 () => Checkbox(
//                                                   value: ctrl.line10_Ear.value,
//                                                   onChanged: (val) {
//                                                     ctrl.line10_Ear.value =
//                                                         val ?? true;
//                                                   },
//                                                 ),
//                                               ),
//                                               const Text('Dizziness ',
//                                                   style:
//                                                       TextStyle(fontSize: 10)),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Table(
//                                   border: TableBorder.all(),
//                                   children: [
//                                     TableRow(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Row(
//                                             children: [
//                                               Obx(
//                                                 () => Checkbox(
//                                                   value: ctrl.line10_Ear.value,
//                                                   onChanged: (val) {
//                                                     ctrl.line10_Ear.value =
//                                                         val ?? true;
//                                                   },
//                                                 ),
//                                               ),
//                                               const Text('Headache ',
//                                                   style:
//                                                       TextStyle(fontSize: 10)),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 20),
//                                             child: Text('Alert    ',
//                                                 style: TextStyle(fontSize: 10)),
//                                           ),
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Text('Lethargic ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(right: 8),
//                                             child: Text('Stuporous ',
//                                                 style: TextStyle(fontSize: 10)),
//                                           ),
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Text('Unconscious ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: const [
//                                           Padding(
//                                             padding: EdgeInsets.all(10),
//                                             child: Text('Oriented to    ',
//                                                 style: TextStyle(fontSize: 10)),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Row(
//                                         children: [
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(right: 8),
//                                             child: Text('Person ',
//                                                 style: TextStyle(fontSize: 10)),
//                                           ),
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(right: 8),
//                                             child: Text('Place  ',
//                                                 style: TextStyle(fontSize: 10)),
//                                           ),
//                                           Obx(
//                                             () => Checkbox(
//                                               value: ctrl.line10_Ear.value,
//                                               onChanged: (val) {
//                                                 ctrl.line10_Ear.value =
//                                                     val ?? true;
//                                               },
//                                             ),
//                                           ),
//                                           Text('Time ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Table(
//                               border: TableBorder.all(),
//                               children: [
//                                 TableRow(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(18),
//                                       child: Row(
//                                         children: const [
//                                           Text(' No response ',
//                                               style: TextStyle(fontSize: 10)),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(10),
//                               child: Row(
//                                 children: [
//                                   const Text(' Other : ',
//                                       style: TextStyle(fontSize: 10)),
//                                   C_TextFild(
//                                     TEXT_controller: TEXT_controller,
//                                     hint_Text: '______________________',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Table(
//                   border: TableBorder.all(),
//                   children: [
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     Obx(
//                                       () => Checkbox(
//                                         value: ctrl.line10_Ear.value,
//                                         onChanged: (val) {
//                                           ctrl.line10_Ear.value = val ?? true;
//                                         },
//                                       ),
//                                     ),
//                                     Text(' Tremors: ',
//                                         style: TextStyle(fontSize: 10)),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 43),
//                                 child: Row(
//                                   children: [
//                                     Text('Location:',
//                                         style: TextStyle(fontSize: 10)),
//                                     C_TextFild(
//                                       TEXT_controller: TEXT_controller,
//                                       hint_Text: '_______________',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     Obx(
//                                       () => Checkbox(
//                                         value: ctrl.line10_Ear.value,
//                                         onChanged: (val) {
//                                           ctrl.line10_Ear.value = val ?? true;
//                                         },
//                                       ),
//                                     ),
//                                     Text('Syncope ',
//                                         style: TextStyle(fontSize: 10)),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 12),
//                           child: Row(
//                             children: [
//                               Obx(
//                                 () => Checkbox(
//                                   value: ctrl.line10_Ear.value,
//                                   onChanged: (val) {
//                                     ctrl.line10_Ear.value = val ?? true;
//                                   },
//                                 ),
//                               ),
//                               Text('  Confused ',
//                                   style: TextStyle(fontSize: 10)),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 18),
//                           child: Row(
//                             children: const [],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: 24,
//                   width: double.infinity,
//                   color: const Color.fromARGB(255, 29, 189, 154),
//                   child: const Text(
//                     ' CARDIOVASCULAR ',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
