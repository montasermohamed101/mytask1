import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class F038Controller extends GetxController{

  DateTime nowDate = DateTime.now();

  TextEditingController labelController = TextEditingController();

  // Todo : Wound Controller
  TextEditingController woundController1 = TextEditingController();
  TextEditingController woundController2 = TextEditingController();
  TextEditingController woundController3 = TextEditingController();
  TextEditingController woundController4 = TextEditingController();
  TextEditingController woundController5 = TextEditingController();
  TextEditingController woundController6 = TextEditingController();
  TextEditingController woundController7 = TextEditingController();
  TextEditingController woundController8 = TextEditingController();
  TextEditingController woundController9 = TextEditingController();
  TextEditingController woundController10 = TextEditingController();
  TextEditingController woundController11 = TextEditingController();

  // Todo : DRESSING Controller
  TextEditingController dressingController1 = TextEditingController();
  TextEditingController dressingController2 = TextEditingController();
  TextEditingController dressingController3 = TextEditingController();
  TextEditingController dressingController4 = TextEditingController();
  TextEditingController dressingController5 = TextEditingController();
  TextEditingController dressingController6 = TextEditingController();
  TextEditingController dressingController7 = TextEditingController();
  TextEditingController dressingController8 = TextEditingController();
  TextEditingController dressingController9 = TextEditingController();
  TextEditingController dressingController10 = TextEditingController();
  TextEditingController dressingController11 = TextEditingController();

  // Todo : DEBRIDEMENT Controller
  TextEditingController debridementController1 = TextEditingController();
  TextEditingController debridementController2 = TextEditingController();
  TextEditingController debridementController3 = TextEditingController();
  TextEditingController debridementController4 = TextEditingController();
  TextEditingController debridementController5 = TextEditingController();
  TextEditingController debridementController6 = TextEditingController();
  TextEditingController debridementController7 = TextEditingController();
  TextEditingController debridementController8 = TextEditingController();
  TextEditingController debridementController9 = TextEditingController();
  TextEditingController debridementController10 = TextEditingController();
  TextEditingController debridementController11 = TextEditingController();

  // Todo : INITIALS Controller
  TextEditingController initialsController1 = TextEditingController();
  TextEditingController initialsController2 = TextEditingController();
  TextEditingController initialsController3 = TextEditingController();
  TextEditingController initialsController4 = TextEditingController();
  TextEditingController initialsController5 = TextEditingController();
  TextEditingController initialsController6 = TextEditingController();
  TextEditingController initialsController7 = TextEditingController();
  TextEditingController initialsController8 = TextEditingController();
  TextEditingController initialsController9 = TextEditingController();
  TextEditingController initialsController10 = TextEditingController();
  TextEditingController initialsController11 = TextEditingController();

  // Todo : ofWound
  TextEditingController ofWoundController1 = TextEditingController();
  TextEditingController ofWoundController2= TextEditingController();
  TextEditingController ofWoundController3 = TextEditingController();
  TextEditingController ofWoundController4 = TextEditingController();
  TextEditingController ofWoundController5 = TextEditingController();
  TextEditingController ofWoundController6 = TextEditingController();
  TextEditingController ofWoundController7 = TextEditingController();

  // Todo : Date of Assessment
  TextEditingController dateOfAssessmentController1 = TextEditingController();
  TextEditingController dateOfAssessmentController2 = TextEditingController();
  TextEditingController dateOfAssessmentController3 = TextEditingController();
  TextEditingController dateOfAssessmentController4 = TextEditingController();
  TextEditingController dateOfAssessmentController5 = TextEditingController();
  TextEditingController dateOfAssessmentController6 = TextEditingController();
  TextEditingController dateOfAssessmentController7 = TextEditingController();


  // Todo : Analgesia
  TextEditingController analgesiaController1 = TextEditingController();
  TextEditingController analgesiaController2 = TextEditingController();
  TextEditingController analgesiaController3 = TextEditingController();
  TextEditingController analgesiaController4 = TextEditingController();
  TextEditingController analgesiaController5 = TextEditingController();
  TextEditingController analgesiaController6 = TextEditingController();
  TextEditingController analgesiaController7 = TextEditingController();

  // Todo : Grade of  pressure
  TextEditingController gradeOfPressureController1 = TextEditingController();
  TextEditingController gradeOfPressureController2 = TextEditingController();
  TextEditingController gradeOfPressureController3 = TextEditingController();
  TextEditingController gradeOfPressureController4 = TextEditingController();
  TextEditingController gradeOfPressureController5 = TextEditingController();
  TextEditingController gradeOfPressureController6 = TextEditingController();
  TextEditingController gradeOfPressureController7 = TextEditingController();

  // Todo : woundDimensions
  TextEditingController woundDimensionsController1 = TextEditingController();
  TextEditingController woundDimensionsController2 = TextEditingController();
  TextEditingController woundDimensionsController3 = TextEditingController();
  TextEditingController woundDimensionsController4 = TextEditingController();
  TextEditingController woundDimensionsController5 = TextEditingController();
  TextEditingController woundDimensionsController6 = TextEditingController();
  TextEditingController woundDimensionsController7 = TextEditingController();

  // Todo : length
  TextEditingController lengthController1 = TextEditingController();
  TextEditingController lengthController2 = TextEditingController();
  TextEditingController lengthController3 = TextEditingController();
  TextEditingController lengthController4 = TextEditingController();
  TextEditingController lengthController5 = TextEditingController();
  TextEditingController lengthController6 = TextEditingController();
  TextEditingController lengthController7 = TextEditingController();


  // Todo : width
  TextEditingController widthController1 = TextEditingController();
  TextEditingController widthController2 = TextEditingController();
  TextEditingController widthController3 = TextEditingController();
  TextEditingController widthController4 = TextEditingController();
  TextEditingController widthController5 = TextEditingController();
  TextEditingController widthController6 = TextEditingController();
  TextEditingController widthController7 = TextEditingController();


  // Todo : depth
  TextEditingController depthController1 = TextEditingController();
  TextEditingController depthController2 = TextEditingController();
  TextEditingController depthController3 = TextEditingController();
  TextEditingController depthController4 = TextEditingController();
  TextEditingController depthController5 = TextEditingController();
  TextEditingController depthController6 = TextEditingController();
  TextEditingController depthController7 = TextEditingController();


  // Todo : shape
  TextEditingController shapeController1 = TextEditingController();
  TextEditingController shapeController2 = TextEditingController();
  TextEditingController shapeController3 = TextEditingController();
  TextEditingController shapeController4 = TextEditingController();
  TextEditingController shapeController5 = TextEditingController();
  TextEditingController shapeController6 = TextEditingController();
  TextEditingController shapeController7 = TextEditingController();


  // Todo : woundUndermining
  TextEditingController woundUnderminingController1 = TextEditingController();
  TextEditingController woundUnderminingController2 = TextEditingController();
  TextEditingController woundUnderminingController3 = TextEditingController();
  TextEditingController woundUnderminingController4 = TextEditingController();
  TextEditingController woundUnderminingController5 = TextEditingController();
  TextEditingController woundUnderminingController6 = TextEditingController();
  TextEditingController woundUnderminingController7 = TextEditingController();


  // Todo : time
  TextEditingController timeController1 = TextEditingController();
  TextEditingController timeController2 = TextEditingController();
  TextEditingController timeController3 = TextEditingController();
  TextEditingController timeController4 = TextEditingController();
  TextEditingController timeController5 = TextEditingController();
  TextEditingController timeController6 = TextEditingController();
  TextEditingController timeController7 = TextEditingController();

  // Todo : photography
  TextEditingController photographyController1 = TextEditingController();
  TextEditingController photographyController2 = TextEditingController();
  TextEditingController photographyController3 = TextEditingController();
  TextEditingController photographyController4 = TextEditingController();
  TextEditingController photographyController5 = TextEditingController();
  TextEditingController photographyController6 = TextEditingController();
  TextEditingController photographyController7 = TextEditingController();




  //Todo: Tissue type on wound bed

  // Todo : Necrotic
  TextEditingController necroticController1 = TextEditingController();
  TextEditingController necroticController2 = TextEditingController();
  TextEditingController necroticController3 = TextEditingController();
  TextEditingController necroticController4 = TextEditingController();
  TextEditingController necroticController5 = TextEditingController();
  TextEditingController necroticController6 = TextEditingController();
  TextEditingController necroticController7 = TextEditingController();

  // Todo : sloughy
  TextEditingController sloughyController1 = TextEditingController();
  TextEditingController sloughyController2 = TextEditingController();
  TextEditingController sloughyController3 = TextEditingController();
  TextEditingController sloughyController4 = TextEditingController();
  TextEditingController sloughyController5 = TextEditingController();
  TextEditingController sloughyController6 = TextEditingController();
  TextEditingController sloughyController7 = TextEditingController();


  // Todo : granulating
  TextEditingController granulatingController1 = TextEditingController();
  TextEditingController granulatingController2 = TextEditingController();
  TextEditingController granulatingController3 = TextEditingController();
  TextEditingController granulatingController4 = TextEditingController();
  TextEditingController granulatingController5 = TextEditingController();
  TextEditingController granulatingController6 = TextEditingController();
  TextEditingController granulatingController7 = TextEditingController();


  // Todo : Epithelialising
  TextEditingController epithelialisingController1 = TextEditingController();
  TextEditingController epithelialisingController2 = TextEditingController();
  TextEditingController epithelialisingController3 = TextEditingController();
  TextEditingController epithelialisingController4 = TextEditingController();
  TextEditingController epithelialisingController5 = TextEditingController();
  TextEditingController epithelialisingController6 = TextEditingController();
  TextEditingController epithelialisingController7 = TextEditingController();

  // Todo : hyper granulating
  TextEditingController hyperController1 = TextEditingController();
  TextEditingController hyperController2 = TextEditingController();
  TextEditingController hyperController3 = TextEditingController();
  TextEditingController hyperController4 = TextEditingController();
  TextEditingController hyperController5 = TextEditingController();
  TextEditingController hyperController6 = TextEditingController();
  TextEditingController hyperController7 = TextEditingController();


  // Todo: Wound exudates levels and type (tick relevant box)

  // Todo : low
  TextEditingController lowController1 = TextEditingController();
  TextEditingController lowController2 = TextEditingController();
  TextEditingController lowController3 = TextEditingController();
  TextEditingController lowController4 = TextEditingController();
  TextEditingController lowController5 = TextEditingController();
  TextEditingController lowController6 = TextEditingController();
  TextEditingController lowController7 = TextEditingController();


  // Todo : medium
  TextEditingController mediumController1 = TextEditingController();
  TextEditingController mediumController2 = TextEditingController();
  TextEditingController mediumController3 = TextEditingController();
  TextEditingController mediumController4 = TextEditingController();
  TextEditingController mediumController5 = TextEditingController();
  TextEditingController mediumController6 = TextEditingController();
  TextEditingController mediumController7 = TextEditingController();


  // Todo : high
  TextEditingController highController1 = TextEditingController();
  TextEditingController highController2 = TextEditingController();
  TextEditingController highController3 = TextEditingController();
  TextEditingController highController4 = TextEditingController();
  TextEditingController highController5 = TextEditingController();
  TextEditingController highController6 = TextEditingController();
  TextEditingController highController7 = TextEditingController();


  // Todo : serous
  TextEditingController serousController1 = TextEditingController();
  TextEditingController serousController2 = TextEditingController();
  TextEditingController serousController3 = TextEditingController();
  TextEditingController serousController4 = TextEditingController();
  TextEditingController serousController5 = TextEditingController();
  TextEditingController serousController6 = TextEditingController();
  TextEditingController serousController7 = TextEditingController();


  // Todo : Sanguineous
  TextEditingController sanguineousController1 = TextEditingController();
  TextEditingController sanguineousController2 = TextEditingController();
  TextEditingController sanguineousController3 = TextEditingController();
  TextEditingController sanguineousController4 = TextEditingController();
  TextEditingController sanguineousController5 = TextEditingController();
  TextEditingController sanguineousController6 = TextEditingController();
  TextEditingController sanguineousController7 = TextEditingController();

  // Todo : Serosanguinous
  TextEditingController seroSanguinousController1 = TextEditingController();
  TextEditingController seroSanguinousController2 = TextEditingController();
  TextEditingController seroSanguinousController3 = TextEditingController();
  TextEditingController seroSanguinousController4 = TextEditingController();
  TextEditingController seroSanguinousController5 = TextEditingController();
  TextEditingController seroSanguinousController6 = TextEditingController();
  TextEditingController seroSanguinousController7 = TextEditingController();

  // Todo : Purulent
  TextEditingController purulentController1 = TextEditingController();
  TextEditingController purulentController2 = TextEditingController();
  TextEditingController purulentController3 = TextEditingController();
  TextEditingController purulentController4 = TextEditingController();
  TextEditingController purulentController5 = TextEditingController();
  TextEditingController purulentController6 = TextEditingController();
  TextEditingController purulentController7 = TextEditingController();

  // Todo : Odor
  TextEditingController odorController1 = TextEditingController();
  TextEditingController odorController2 = TextEditingController();
  TextEditingController odorController3 = TextEditingController();
  TextEditingController odorController4 = TextEditingController();
  TextEditingController odorController5 = TextEditingController();
  TextEditingController odorController6 = TextEditingController();
  TextEditingController odorController7 = TextEditingController();


  // Todo : fill The room
  TextEditingController fillTheRoomController1 = TextEditingController();
  TextEditingController fillTheRoomController2 = TextEditingController();
  TextEditingController fillTheRoomController3 = TextEditingController();
  TextEditingController fillTheRoomController4 = TextEditingController();
  TextEditingController fillTheRoomController5 = TextEditingController();
  TextEditingController fillTheRoomController6 = TextEditingController();
  TextEditingController fillTheRoomController7 = TextEditingController();

  // Todo : after dressing removal
  TextEditingController removalController1 = TextEditingController();
  TextEditingController removalController2 = TextEditingController();
  TextEditingController removalController3 = TextEditingController();
  TextEditingController removalController4 = TextEditingController();
  TextEditingController removalController5 = TextEditingController();
  TextEditingController removalController6 = TextEditingController();
  TextEditingController removalController7 = TextEditingController();


  //Todo: Skin surrounding wound

   // Todo : Macerated
  TextEditingController maceratedController1 = TextEditingController();
  TextEditingController maceratedController2 = TextEditingController();
  TextEditingController maceratedController3 = TextEditingController();
  TextEditingController maceratedController4 = TextEditingController();
  TextEditingController maceratedController5 = TextEditingController();
  TextEditingController maceratedController6 = TextEditingController();
  TextEditingController maceratedController7 = TextEditingController();

  // Todo : Edematous
  TextEditingController edematousController1 = TextEditingController();
  TextEditingController edematousController2 = TextEditingController();
  TextEditingController edematousController3 = TextEditingController();
  TextEditingController edematousController4 = TextEditingController();
  TextEditingController edematousController5 = TextEditingController();
  TextEditingController edematousController6 = TextEditingController();
  TextEditingController edematousController7 = TextEditingController();


  // Todo : Erythema
  TextEditingController erythemaController1 = TextEditingController();
  TextEditingController erythemaController2 = TextEditingController();
  TextEditingController erythemaController3 = TextEditingController();
  TextEditingController erythemaController4 = TextEditingController();
  TextEditingController erythemaController5 = TextEditingController();
  TextEditingController erythemaController6 = TextEditingController();
  TextEditingController erythemaController7 = TextEditingController();


  // Todo : Excoriated
  TextEditingController excoriatedController1 = TextEditingController();
  TextEditingController excoriatedController2 = TextEditingController();
  TextEditingController excoriatedController3 = TextEditingController();
  TextEditingController excoriatedController4 = TextEditingController();
  TextEditingController excoriatedController5 = TextEditingController();
  TextEditingController excoriatedController6 = TextEditingController();
  TextEditingController excoriatedController7 = TextEditingController();

  // Todo : Fragile
  TextEditingController fragileController1 = TextEditingController();
  TextEditingController fragileController2 = TextEditingController();
  TextEditingController fragileController3 = TextEditingController();
  TextEditingController fragileController4 = TextEditingController();
  TextEditingController fragileController5 = TextEditingController();
  TextEditingController fragileController6 = TextEditingController();
  TextEditingController fragileController7 = TextEditingController();


  // Todo : Dry
  TextEditingController dryController1 = TextEditingController();
  TextEditingController dryController2 = TextEditingController();
  TextEditingController dryController3 = TextEditingController();
  TextEditingController dryController4 = TextEditingController();
  TextEditingController dryController5 = TextEditingController();
  TextEditingController dryController6 = TextEditingController();
  TextEditingController dryController7 = TextEditingController();

  // Todo : healthy
  TextEditingController healthyController1 = TextEditingController();
  TextEditingController healthyController2 = TextEditingController();
  TextEditingController healthyController3 = TextEditingController();
  TextEditingController healthyController4 = TextEditingController();
  TextEditingController healthyController5 = TextEditingController();
  TextEditingController healthyController6 = TextEditingController();
  TextEditingController healthyController7 = TextEditingController();




























}