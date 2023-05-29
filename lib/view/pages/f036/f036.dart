import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f036_controller/f036_controller.dart';
import 'package:mytask1/view/widgets/my_text_form_field.dart';

class F036 extends StatelessWidget {
  var controller = Get.put(F036Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<F036Controller>(
        builder: (_) => Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: TitleText(
                          title: 'BERG BALANCE SCALE (BBS)', fontSize: 30),
                    ),
                    const Divider(
                      thickness: 3,
                      color: Colors.black,
                    ),
                    Center(
                        child: TitleText(
                            title:
                                'Test for static and dynamic balance abilities ',
                            fontSize: 20
                        )),
                    normalText(title: 'General Instructions'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55.0),
                      child: normalText(title: 'Please demonstrate each task and/or give instructions as written. When scoring, please record the lowest response category that applies for each item.'),
                    ),
                    //Score
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TitleText(title: 'Score (0-4)',fontSize: 20),
                        ),
                      ],
                    ),

                    //Todo: 1th Text
                    TitleText(
                      title: '1. Sitting unsupported with back unsupported but feet supported on floor',
                      fontSize: 15
                    ),
                    //:Todo floor Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to sit safely and securely 2 minutes'),
                          normalText(title: '3 - able to sit 2 minutes under supervision'),
                          normalText(title: '2 - able to sit 30 seconds'),
                          normalText(title: '1 - able to sit 10 seconds'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex:80,
                                  child: normalText(title: '0 - unable to sit without support 10 seconds')),
                              Expanded(
                                flex:10,
                                child: MyTextFormField(
                                    controller:controller.floorController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 2th Text
                    TitleText(
                        title: '2. Sitting to standing',
                        fontSize: 15
                    ),
                    //:Todo standing Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to stand without using hands and stabilize independently'),
                          normalText(title: '3 - able to stand independently using hands'),
                          normalText(title: '2 - able to stand using hands after several tries'),
                          normalText(title: '1 - needs minimal aid to stand or stabilize'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs moderate or maximal assist to stand')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.standingController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Todo: 3th Text
                    TitleText(
                        title: '3. Standing unsupported',
                        fontSize: 15
                    ),
                    //:Todo unsupported Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to stand safely 2 minutes'),
                          normalText(title: '3 - able to stand 2 minutes with supervision'),
                          normalText(title: '2 - able to stand 30 seconds unsupported'),
                          normalText(title: '1 - needs several tries to stand 30 seconds unsupported'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - unable to stand 30 seconds unassisted')),
                              Expanded(
                                flex:10,
                                child: MyTextFormField(
                                  controller:controller.unsupportedController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 4th Text
                    TitleText(
                        title: '4. Standing to sitting',
                        fontSize: 15
                    ),
                    //:Todo sitting Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - sits safely with minimal use of hands'),
                          normalText(title: '3 - controls descent by using hands'),
                          normalText(title: '2 - uses back of legs against chair to control descent'),
                          normalText(title: '1 - sits independently but has uncontrolled descent'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs assistance to sit')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.sittingController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 5th Text
                    TitleText(
                        title: '5. Transfers',
                        fontSize: 15
                    ),
                    //:Todo Transfers Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to transfer safely with minor use of hands'),
                          normalText(title: '3 - able to transfer safely definite need of hands'),
                          normalText(title: '2 - able to transfer with verbal cueing and/or supervision'),
                          normalText(title: '1 - needs one person to assist'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs two people to assist or supervise to be safe')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.transfersController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 6th Text
                    TitleText(
                        title: '6. Standing unsupported with eyes closed',
                        fontSize: 15
                    ),
                    //:Todo Closed Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to stand 10 seconds safely'),
                          normalText(title: '3 - able to stand 10 seconds with supervision'),
                          normalText(title: '2 - able to stand 3 seconds'),
                          normalText(title: '1 - unable to keep eyes closed 3 seconds but stays steady'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs help to keep from falling')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.closedController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 7th Text
                    TitleText(
                        title: '7. Standing unsupported with feet together',
                        fontSize: 15
                    ),
                    //:Todo Together Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to place feet together independently and stand 1 minute safely'),
                          normalText(title: '3 - able to place feet together independently and stand for 1 minute with supervision'),
                          normalText(title: '2 - able to place feet together independently but unable to hold for 30 seconds'),
                          normalText(title: '1 - needs help to attain position but able to stand 15 seconds with feet together'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs help to attain position and unable to hold for 15 seconds')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.togetherController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Todo: 8th Text
                    TitleText(
                        title: '8. Standing unsupported one foot in front',
                        fontSize: 15
                    ),
                    //:Todo Front Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to place foot tandem independently and hold 30 seconds'),
                          normalText(title: '3 - able to place foot ahead of other independently and hold 30 seconds '),
                          normalText(title: '2 - able to take small step independently and hold 30 seconds'),
                          normalText(title: '1 - needs help to step but can hold 15 seconds'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - loses balance while stepping or standing')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.frontController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 9th Text
                    TitleText(
                        title: '9. Standing on one leg',
                        fontSize: 15
                    ),
                    //:Todo Leg Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to lift leg independently and hold >10 seconds'),
                          normalText(title: '3 - able to lift leg independently and hold 5-10 seconds'),
                          normalText(title: '2 - able to lift leg independently and hold = or >3 seconds'),
                          normalText(title: '1 - tries to lift leg unable to hold 3 seconds but remains standing independently'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - unable to try or needs assist to prevent fall')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.legController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Todo: 10th Text
                    TitleText(
                        title: '10. Turning trunk (feet fixed)',
                        fontSize: 15
                    ),
                    //:Todo trunk Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - looks behind from both sides and weight shifts well'),
                          normalText(title: '3 - looks behind one side only other side shows less weight shift'),
                          normalText(title: '2 - turns sideways only but maintains balance'),
                          normalText(title: '1 - needs supervision when turning'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs assist to keep from losing balance or falling')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.trunkController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Todo: 11th Text
                    TitleText(
                        title: '11. Retrieving objects from floor',
                        fontSize: 15
                    ),
                    //:Todo ObjectsFloor Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to pick up slipper safely and easily'),
                          normalText(title: '3 - able to pick up slipper but needs supervision'),
                          normalText(title: '2 - unable to pick up but reaches 1-2 inches from slipper and keeps balance independently'),
                          normalText(title: '1 - unable to pick up and needs supervision while trying'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - unable to try/needs assist to keep from losing balance or falling')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.objectsFloorController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 12th Text
                    TitleText(
                        title: '12. Reaching forward while standing',
                        fontSize: 15
                    ),
                    //:Todo ForwardStanding Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - can reach forward confidently >25 cm (10 inches)'),
                          normalText(title: '3 - can reach forward >12 cm safely (5 inches)'),
                          normalText(title: '2 - can reach forward >5 cm safely (2 inches)'),
                          normalText(title: '1 - reaches forward but needs supervision'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - loses balance while trying/requires external support')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.forwardStandingController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 13th Text
                    TitleText(
                        title: '13. Turning 360 degrees',
                        fontSize: 15
                    ),
                    //:Todo Degrees Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to turn 360 degrees safely in 4 seconds or less'),
                          normalText(title: '3 - able to turn 360 degrees safely one side only in 4 seconds or less'),
                          normalText(title: '2 - able to turn 360 degrees safely but slowly'),
                          normalText(title: '1 - needs close supervision or verbal cueing'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs assistance while turning')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.degreesController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                    //Todo: 14th Text
                    TitleText(
                        title: '14. Placing alternate foot on step or stool while standing unsupported',
                        fontSize: 15
                    ),
                    //:Todo Degrees Column
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '4 - able to stand independently and safely and complete 8 steps in 20 seconds'),
                          normalText(title: '3 - able to stand independently and complete 8 steps in >20 seconds'),
                          normalText(title: '2 - able to complete 4 steps without aid with supervision'),
                          normalText(title: '1 - able to complete >2 steps need minimal assist'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex:80,
                                  child: normalText(title: '0 - needs assistance to keep from falling/unable to try')),
                              Expanded(
                                flex: 10,
                                child: MyTextFormField(
                                  controller:controller.placingController,
                                  hintText: '_______',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Todo: Interpretation & TOTAL Text
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Expanded(
                        flex: 70,
                        child:    TitleText(
                         title: 'Interpretation ',
                         fontSize: 15
                     ),),
                      Expanded(
                        flex: 30,
                        child:    Row(
                       children: [
                         Expanded(child:   TitleText(
                             title: 'TOTAL (56):',
                             fontSize: 15
                         ),),
                         Expanded(child:   MyTextFormField(
                           controller:controller.totalController,
                           hintText: '_______',
                           hintStyle: const TextStyle(
                             fontWeight: FontWeight.w900,
                             color: Colors.black,

                           ),
                         ),),
                       ],
                     ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          normalText(title: '>	0 – 20	Wheelchair bound'),
                          normalText(title: '>	21 - 40 	Walking with assistance'),
                          normalText(title: '>	41 - 56 	Independent'),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ));
  }

  Widget TitleText({required String title, required double fontSize}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget normalText({required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
