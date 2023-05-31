import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class F040Controller extends GetxController{

  TextEditingController labelController1 = TextEditingController();
  TextEditingController labelController2 = TextEditingController();

  TextEditingController dateOfReportController = TextEditingController();
  TextEditingController reportedNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateOfEventController = TextEditingController();
  TextEditingController patientNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController mrnController = TextEditingController();
  TextEditingController diagnosisController = TextEditingController();




  TextEditingController descriptionController = TextEditingController();

  TextEditingController drugProductNameController = TextEditingController();
  TextEditingController drugStrengthController = TextEditingController();
  TextEditingController interventionController = TextEditingController();
  TextEditingController signedManagerController = TextEditingController();


  //Todo:Type of Error

  bool omission = false;
  bool wrongRate = false;
  bool clinical = false;
  bool improperDose = false;
  bool wrongDuration = false;
  bool drugDrug = false;
  bool wrongPatient = false;
  bool wrongDosage = false;
  bool drugFood = false;
  bool wrongDrug = false;
  bool wrongTime = false;
  bool drugDisease = false;
  bool wrongStrength = false;
  bool wrongTechnique = false;
  bool other = false;
  bool wrongRoute = false;
  bool expiredMedication = false;

  //Todo:Event Reach

  bool eventReached = false;
  bool eventNotReached  = false;

  bool physicianOrdering = false;
  bool dispensing = false;
  bool monitoringLevel = false;
  bool orderEntry = false;
  bool administration  = false;

  //Todo:Dosage Form
  bool tablet = false;
  bool injectable = false;
  bool cream = false;
  bool suppository = false;
  bool aerosol = false;
  bool other2 = false;

  //Todo:Rout of Administration

  bool oral = false;
  bool nose = false;
  bool inhalation = false;
  bool injectable2 = false;
  bool rectal = false;
  bool other3 = false;





}