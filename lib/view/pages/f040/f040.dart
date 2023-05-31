import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f040_controller/f040_controller.dart';
import 'package:mytask1/view/widgets/custom_textform_field/my_text_form_field.dart';
import 'package:mytask1/view/widgets/custome_text/my_title_text.dart';
import 'package:mytask1/view/widgets/custome_text/text_checkbox.dart';

class F040 extends StatelessWidget {
  var f040Controller = Get.put(F040Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<F040Controller>(
      builder: (_) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 40,
                      child: Image.asset('assets/ic_app.jpg',
                        height: 70,
                      ),
                    ),
                    Expanded(
                      flex: 40,
                      child: Column(
                        children: [
                          MyTitleText(
                            title: 'MEDICATION ERROR REPORTING FORM',
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          MyTitleText(
                            title: '(A blame free reporting toolM)',
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ],
                      ),
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
                          controller: f040Controller.labelController1,
                          hintStyle: const TextStyle(
                            fontSize: 10,

                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //Todo:
                Row(
                  children: [
                    MyTitleText(
                      title: 'Date of report:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.dateOfReportController,
                        hintText:
                            '_____________________________________________________________________',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyTitleText(
                      title: 'Reported Name& ID:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.reportedNameController,
                        hintText:
                            '_____________________________________________________________________',
                      ),
                    ),
                    MyTitleText(
                      title: 'Location:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.locationController,
                        hintText: '___________________________',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyTitleText(
                      title: 'Date of event& time',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.dateOfEventController,
                        hintText:
                            '_____________________________________________________________________',
                      ),
                    ),
                    MyTitleText(
                      title: 'Patient Name:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.patientNameController,
                        hintText: '___________________________',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyTitleText(
                      title: 'Age',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        textInputType: TextInputType.number,
                        controller: f040Controller.ageController,
                        hintText:
                            '_____________________________________________________________________',
                      ),
                    ),
                    MyTitleText(
                      title: 'Sex:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.sexController,
                        hintText:
                            '_____________________________________________________________________',
                      ),
                    ),
                    MyTitleText(
                      title: 'MRN:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.mrnController,
                        hintText: '___________________________',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyTitleText(
                      title: 'Diagnosis:',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.diagnosisController,
                        hintText:
                            '_____________________________________________________________________________________________________________________________________________',
                      ),
                    ),
                  ],
                ),
                MyTitleText(
                  title: 'Type of error : [Select only One]',
                  color: Colors.black,
                  textAlign: TextAlign.start,
                  fontSize: 17,
                ),
                //Todo:Check Box Table
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.omission,
                                  onChanged: (value) {
                                    f040Controller.omission = value!;
                                    if (f040Controller.omission) {
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Omission',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongRate,
                                  onChanged: (value) {
                                    f040Controller.wrongRate = value!;
                                    if (f040Controller.wrongRate) {
                                      f040Controller.omission = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Rate',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.clinical,
                                  onChanged: (value) {
                                    f040Controller.clinical = value!;
                                    if (f040Controller.clinical) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Clinical',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.improperDose,
                                  onChanged: (value) {
                                    f040Controller.improperDose = value!;
                                    if (f040Controller.improperDose) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title:
                                        'improper Dose(over,under,extra dose)',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongDuration,
                                  onChanged: (value) {
                                    f040Controller.wrongDuration = value!;
                                    if (f040Controller.wrongDuration) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Duration',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.drugDrug,
                                  onChanged: (value) {
                                    f040Controller.drugDrug = value!;
                                    if (f040Controller.drugDrug) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Monitoring Error-Drug-Drug',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongPatient,
                                  onChanged: (value) {
                                    f040Controller.wrongPatient = value!;
                                    if (f040Controller.wrongPatient) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Patient',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongDosage,
                                  onChanged: (value) {
                                    f040Controller.wrongDosage = value!;
                                    if (f040Controller.wrongDosage) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Dosage Form',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.drugFood,
                                  onChanged: (value) {
                                    f040Controller.drugFood = value!;
                                    if (f040Controller.drugFood) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Monitoring Error-Drug-Food',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongDrug,
                                  onChanged: (value) {
                                    f040Controller.wrongDrug = value!;
                                    if (f040Controller.wrongDrug) {
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.omission = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Drug',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongTime,
                                  onChanged: (value) {
                                    f040Controller.wrongTime = value!;
                                    if (f040Controller.wrongTime) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Time of administration',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.drugDisease,
                                  onChanged: (value) {
                                    f040Controller.drugDisease = value!;
                                    if (f040Controller.drugDisease) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Monitoring Error-Drug-Disease',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongStrength,
                                  onChanged: (value) {
                                    f040Controller.wrongStrength = value!;
                                    if (f040Controller.wrongStrength) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong strength/ concentration',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongTechnique,
                                  onChanged: (value) {
                                    f040Controller.wrongTechnique = value!;
                                    if (f040Controller.wrongTechnique) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Administration Technique',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.other,
                                  onChanged: (value) {
                                    f040Controller.other = value!;
                                    if (f040Controller.other) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title:
                                        'Other ________________________________',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.wrongRoute,
                                  onChanged: (value) {
                                    f040Controller.wrongRoute = value!;
                                    if (f040Controller.wrongRoute) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.wrongTechnique = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.expiredMedication = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Wrong Route',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: f040Controller.expiredMedication,
                                  onChanged: (value) {
                                    f040Controller.expiredMedication = value!;
                                    if (f040Controller.expiredMedication) {
                                      f040Controller.omission = false;
                                      f040Controller.wrongRate = false;
                                      f040Controller.clinical = false;
                                      f040Controller.improperDose = false;
                                      f040Controller.wrongDuration = false;
                                      f040Controller.drugDrug = false;
                                      f040Controller.wrongPatient = false;
                                      f040Controller.wrongDosage = false;
                                      f040Controller.drugFood = false;
                                      f040Controller.wrongDrug = false;
                                      f040Controller.drugDisease = false;
                                      f040Controller.wrongStrength = false;
                                      f040Controller.wrongTime = false;
                                      f040Controller.other = false;
                                      f040Controller.wrongRoute = false;
                                      f040Controller.wrongTechnique = false;
                                    }
                                    f040Controller.update();
                                  },
                                ),
                                TextCheckbox(
                                    title: 'Deteriorated/ Expired Medication',
                                    color: Colors.black,
                                    size: 12),
                              ],
                            ),
                          ),
                          TextCheckbox(
                            title: '_____________________________________',
                            color: Colors.black,
                            size: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    TextCheckbox(
                        title: 'Did the event reach the patient?',
                        color: Colors.black),
                    Checkbox(
                      value: f040Controller.eventReached,
                      onChanged: (val) {
                        f040Controller.eventReached = val!;
                        f040Controller.eventNotReached = false;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(title: 'Yes', color: Colors.black, size: 12),
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.red,
                      value: f040Controller.eventNotReached,
                      onChanged: (val) {
                        f040Controller.eventNotReached = val!;
                        f040Controller.eventReached = false;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(title: 'No', color: Colors.black, size: 12),
                  ],
                ),
                MyTitleText(
                  title: 'Stage(s) Involved: [May select more than one]',
                  color: Colors.black,
                  fontSize: 17,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.physicianOrdering,
                      onChanged: (val) {
                        f040Controller.physicianOrdering = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Physician ordering',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.dispensing,
                      onChanged: (val) {
                        f040Controller.dispensing = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Dispensing and Delivery',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.monitoringLevel,
                      onChanged: (val) {
                        f040Controller.monitoringLevel = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Monitoring (Level/allergy/drug-food/clinical)',
                        color: Colors.black,
                        size: 12),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.orderEntry,
                      onChanged: (val) {
                        f040Controller.orderEntry = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'order Entry & Verification',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.administration,
                      onChanged: (val) {
                        f040Controller.administration = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Administration ',
                        color: Colors.black,
                        size: 12),
                  ],
                ),

                MyTitleText(
                  title:
                      'Description of the event: (how did the event occur and how was it detected) ',
                  color: Colors.black,
                  fontSize: 17,
                ),
                MyTextFormField(
                  controller: f040Controller.descriptionController,
                  hintText:
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________',
                  hintMaxLine: 3,
                  hintStyle: const TextStyle(overflow: TextOverflow.visible),
                ),
                Row(
                  children: [
                    MyTitleText(
                      title: 'Drug Product: Brand & Generic Name ',
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.drugProductNameController,
                        hintText: '__________________________________________________________',
                        hintStyle: const TextStyle(overflow: TextOverflow.visible),

                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: MyTitleText(
                        title: 'Drug Strength',
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                      child: MyTextFormField(
                        controller: f040Controller.drugStrengthController,
                        hintText: '______________________________________________________',
                        hintStyle: const TextStyle(overflow: TextOverflow.visible),

                      ),
                    ),
                  ],
                ),
                //Todo :Dosage Form:
                MyTitleText(
                  title:
                  'Dosage Form:',
                  color: Colors.black,
                  fontSize: 15,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.tablet,
                      onChanged: (val) {
                        f040Controller.tablet = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Tablet/ Capsule/ Oral Liquid',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.cream,
                      onChanged: (val) {
                        f040Controller.cream = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Cream/ Ointment/ Gel/ Past',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.aerosol,
                      onChanged: (val) {
                        f040Controller.aerosol = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Aerosol/Inhalation/ Drops ',
                        color: Colors.black,
                        size: 12),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.injectable,
                      onChanged: (val) {
                        f040Controller.injectable = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Injectable (IV/ IM/ IT/ SC)',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.suppository,
                      onChanged: (val) {
                        f040Controller.suppository = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Suppository',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.other2,
                      onChanged: (val) {
                        f040Controller.other2 = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Other _____________________________',
                        color: Colors.black,
                        size: 12),
                  ],
                ),
                //Todo :Route of Administration:
                const SizedBox(height: 10),
                MyTitleText(
                  title:
                  'Route of Administration:',
                  color: Colors.black,
                  fontSize: 15,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.oral,
                      onChanged: (val) {
                        f040Controller.oral = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Oral',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.nose,
                      onChanged: (val) {
                        f040Controller.nose = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Eye/ Ear/ Nose',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.inhalation,
                      onChanged: (val) {
                        f040Controller.inhalation = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Inhalation/ Aerosol',
                        color: Colors.black,
                        size: 12),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: f040Controller.injectable2,
                      onChanged: (val) {
                        f040Controller.injectable2 = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Injectable (IV/ IM/ IT/ SC)',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.rectal,
                      onChanged: (val) {
                        f040Controller.rectal = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Topical Skin/ Rectal',
                        color: Colors.black,
                        size: 12),
                    Checkbox(
                      value: f040Controller.other3,
                      onChanged: (val) {
                        f040Controller.other3 = val!;
                        f040Controller.update();
                      },
                    ),
                    TextCheckbox(
                        title: 'Other _______________________',
                        color: Colors.black,
                        size: 12),
                  ],
                ),
                const SizedBox(height: 10),
                // Todo :Outcome of the event:
                MyTitleText(
                  title: 'Outcome of the event:',
                  color: Colors.black,
                  fontSize: 15,
                ),
                const SizedBox(height: 10),
                MyTitleText(
                  title: '(A)Circumstances/events with capacity to cause error.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(B)Error occurred but did not reach the patient. ',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(C)Error reached the patient but did not cause harm.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(D)Error reached the patient & required monitoring. ',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(E)	Error reached the patient & resulted in temporary harm & required intervention.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(F)Error reached the patient & resulted in temporary harm & initial or prolonged hospitalization.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(G)Error reached the patient & resulted in permanent patient harm.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(H)Error reached the patient & required intervention necessary to sustain life.',
                  color: Colors.black,
                  fontSize: 14,
                ),
                MyTitleText(
                  title: '(I)Error reached the patient & contributed to patient’s death (N.B: immediately notify the Sentinel Event',
                  color: Colors.black,
                  fontSize: 14,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTitleText(
                  title: 'F040-THHC MEDICATION ERROR REPORTING FORM ',
                  color: Colors.grey,
                  fontSize: 12,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 40,
                      child: Image.asset('assets/ic_app.jpg',
                        height: 70,
                      ),
                    ),
                    Expanded(
                      flex: 40,
                      child: Column(
                        children: [
                          MyTitleText(
                            title: 'MEDICATION ERROR REPORTING FORM',
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          MyTitleText(
                            title: '(A blame free reporting toolM',
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ],
                      ),
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
                          controller: f040Controller.labelController2,
                          hintStyle: const TextStyle(
                            fontSize: 10,

                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                //Todo:Intervention
                MyTitleText(
                  title:
                  'Intervention: [e.g., administer antidote, change to correct drug/dose, appropriate frequency was instituted, etc.]',
                  color: Colors.black,
                  fontSize: 15,
                ),
                MyTextFormField(
                  controller: f040Controller.interventionController,
                  hintText:
                  '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________'
                      '____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________',
                  hintMaxLine: 9,
                  hintStyle: const TextStyle(overflow: TextOverflow.visible),
                ),

                Row(
             children: [
               MyTitleText(
                 title:
                 'Signed by THHC Manager/Supervisor:',
                 color: Colors.black,
                 fontSize: 15,
               ),
              Expanded(child:  MyTextFormField(
                controller: f040Controller.signedManagerController,
                hintText:
                '_________________',
                hintMaxLine: 1,
                hintStyle: const TextStyle(overflow: TextOverflow.visible),
              ),),
             ],
           ),

                const SizedBox(height: 90),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTitleText(title: 'THHC-028 Medication Administration and an Independent double check procedure for high alert medication and Telephone Orders received',
                        color: Colors.black,
                        fontSize: 9),
                    MyTitleText(title:'THHC-033 PROCESS FOR REPORTING AND ACTING ON MEDICATION ERRORS AND NEAR MISSES',
                        color: Colors.black,
                        fontSize: 9),
                  ],
                ),
                const SizedBox(height: 50),
                MyTitleText(title: 'F040-THHC MEDICATION ERROR REPORTING FORM ',
                    color: Colors.grey,
                    fontSize: 9,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
