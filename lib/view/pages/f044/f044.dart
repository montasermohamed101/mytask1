import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/controller/f044_controller/f044_controller.dart';
import 'package:mytask1/view/widgets/custom_textform_field/my_text_form_field.dart';
import 'package:mytask1/view/widgets/custome_text/my_title_text.dart';
import 'package:mytask1/view/widgets/custome_text/text_checkbox.dart';

class F044 extends StatelessWidget {

  var f044Controller = Get.put(F044Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<F044Controller>(builder: (_) =>
        Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: Image.asset('assets/ic_app.jpg',
                      height: 70,

                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:  Align(
                        alignment: Alignment.topCenter,
                        child: MyTextFormField(
                          controller: f044Controller.labelController1,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyTitleText(title: 'General Consent Form', color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25,),
                  MyTitleText(title: ' إقرار بالموافقه على تقديم الرعايه الطبيه المنزليه', color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,),
                ],
              ),
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      myCell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                MyTitleText(title: 'I, the undersigned, (Full Name):',
                                    color: Colors.black,
                                    fontSize: 11),
                                Expanded(child:    MyTextFormField(controller: f044Controller.fullNameENController,
                               hintMaxLine: 1,
                               hintText: '________________________________',
                                  hintStyle: const TextStyle(
                                      overflow: TextOverflow.visible
                                  ),
                             )),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Checkbox(
                                    value: f044Controller.patientEN,
                                    onChanged: (val){
                                      f044Controller.patientEN=val!;
                                      f044Controller.patientAR = false;
                                      f044Controller.legalGuardianEN = false;
                                      f044Controller.legalGuardianAR = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                    title: 'Patient', color: Colors.black,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: f044Controller.legalGuardianEN,
                                    onChanged: (val){
                                      f044Controller.legalGuardianEN=val!;
                                      f044Controller.legalGuardianAR = false;
                                      f044Controller.patientEN = false;
                                      f044Controller.patientAR = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                    title: 'Legal Gurdian (__________________________________)',
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            MyTitleText(title: 'Herby gives consent to undergo treatment by the Tawazun Home Health Care Team For:',
                                color: Colors.black,
                              fontSize: 11,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: f044Controller.myselfEN,
                                    onChanged: (val){
                                      f044Controller.myselfEN=val!;
                                      f044Controller.myselfAR = false;
                                      f044Controller.legalDependentEN = false;
                                      f044Controller.legalDependentAR = false;
                                      f044Controller.relativeAR = false;
                                      f044Controller.relativeEN = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                  title: 'Myself', color: Colors.black,
                                ),
                                Checkbox(
                                    value: f044Controller.legalDependentEN,
                                    onChanged: (val){
                                      f044Controller.legalDependentEN=val!;
                                      f044Controller.legalDependentAR = false;
                                      f044Controller.myselfAR = false;
                                      f044Controller.myselfEN = false;
                                      f044Controller.relativeAR = false;
                                      f044Controller.relativeEN = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                  title: 'Legal Dependent', color: Colors.black,
                                ),
                                Checkbox(
                                    value: f044Controller.relativeEN,
                                    onChanged: (val){
                                      f044Controller.relativeEN=val!;
                                      f044Controller.relativeAR = false;
                                      f044Controller.legalDependentAR = false;
                                      f044Controller.legalDependentEN = false;
                                      f044Controller.myselfAR = false;
                                      f044Controller.myselfEN = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                  title: 'Relative', color: Colors.black,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyTitleText(
                                  title: 'Patients Name:', color: Colors.black,
                                  fontSize: 11,
                                ),
                                Expanded(
                                  child: MyTextFormField(controller: f044Controller.patientNameENController,
                                  hintText: '___________________________',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      myCell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Expanded(child:   MyTextFormField(controller: f044Controller.fullNameARController,
                                  hintMaxLine: 1,
                                  textDirection:  TextDirection.rtl,
                                  hintText: '________________________________________',
                                  hintStyle: const TextStyle(
                                    overflow: TextOverflow.visible,
                                  ),
                                )),
                                MyTitleText(title: 'انا الموقع أدناه (الاسم بالكامل):',
                                    color: Colors.black,
                                    textDirection: TextDirection.rtl,
                                    fontSize: 11),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MyTitleText(
                                  title: 'المريض',
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                                Checkbox(
                                    value: f044Controller.patientAR,
                                    onChanged: (val){
                                      f044Controller.patientAR=val!;
                                      f044Controller.patientEN = false;
                                      f044Controller.legalGuardianEN = false;
                                      f044Controller.legalGuardianAR = false;
                                      f044Controller.update();
                                    }
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextCheckbox(
                                  title: 'ولى الأمر(الصفة ________________________________)',
                                  color: Colors.black,
                                  textDirection: TextDirection.rtl,
                                ),
                                Checkbox(
                                    value: f044Controller.legalGuardianAR,
                                    onChanged: (val){
                                      f044Controller.legalGuardianAR=val!;
                                      f044Controller.legalGuardianEN = false;
                                      f044Controller.patientEN = false;
                                      f044Controller.patientAR = false;
                                      f044Controller.update();
                                    }
                                ),

                              ],
                            ),
                            MyTitleText(title: 'موافقتي على تفويض فريق الرعاية الطبيه المنزليه في توازن بتقديم الرعاية ل:',
                              color: Colors.black,
                              fontSize: 11,
                              textDirection: TextDirection.rtl,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextCheckbox(
                                  title: 'قريبى', color: Colors.black,
                                  textDirection: TextDirection.rtl,
                                ),
                                Checkbox(
                                    value: f044Controller.relativeAR,
                                    onChanged: (val){
                                      f044Controller.relativeAR=val!;
                                      f044Controller.relativeEN = false;
                                      f044Controller.legalDependentAR = false;
                                      f044Controller.legalDependentEN = false;
                                      f044Controller.myselfAR = false;
                                      f044Controller.myselfEN = false;
                                      f044Controller.update();
                                    }
                                ),
                                TextCheckbox(
                                  title: 'المريض التابع لى', color: Colors.black,
                                  textDirection: TextDirection.rtl,
                                ),
                                Checkbox(
                                    value: f044Controller.legalDependentAR,
                                    onChanged: (val){
                                      f044Controller.legalDependentAR=val!;
                                      f044Controller.legalDependentEN = false;
                                      f044Controller.myselfAR = false;
                                      f044Controller.myselfEN = false;
                                      f044Controller.relativeAR = false;
                                      f044Controller.relativeEN = false;
                                      f044Controller.update();
                                    }
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: MyTitleText(
                                      title: 'نفسى', color: Colors.black,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Checkbox(
                                      value: f044Controller.myselfAR,
                                      onChanged: (val){
                                        f044Controller.myselfAR=val!;
                                        f044Controller.myselfEN = false;
                                        f044Controller.legalDependentEN = false;
                                        f044Controller.legalDependentAR = false;
                                        f044Controller.relativeAR = false;
                                        f044Controller.relativeEN = false;
                                        f044Controller.update();
                                      }
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Spacer(),
                                const Spacer(),
                                Expanded(
                                  child: MyTextFormField(controller: f044Controller.patientNameARController,
                                    hintText: '___________________________',
                                    textDirection: TextDirection.rtl,
                                    hintStyle: const TextStyle(
                                      overflow: TextOverflow.visible
                                    ),
                                  ),
                                ),
                                MyTitleText(
                                  title: 'اسم المريض:',
                                  color: Colors.black,
                                   fontSize: 11,
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                  TableRow(
                     children: [
                       myCell(child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: [
                           MyTitleText(
                               title: '1-I understand that during the period that the Home Health Care Team will be providing care, I will be given the opportunity to:',
                               color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                               title: 'a- Be informed of, and fully understand, the nature of the medical condition.',
                               color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                               title: 'b- Be made aware of the proposed care as well as the possible alternatives and to understand the consequences of no care.',
                               color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                               title: 'c-Ask any question about any care, treatment or medical I am to receive.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: 'd-Find out the benefits of the proposed procedure and significant risks.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: 'e-Know the identity and qualifications of home health care staff responsible for my care.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           const SizedBox(height: 10),
                           MyTitleText(
                             title: '2- I understand that I have the right to make decisions concerning my Home Health Care, including the right to accept or refuse any care or procedure as ordered by physician.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: '3- I do know that it is not possible to predict or guarantee any medical results.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: '4- I also consent to such further emergency measures as may be found necessary during the course of my care.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: '5- I further consent to any investigation test, as may be deemed necessary.',
                             color: Colors.black,
                             fontSize: 11,
                           ),
                           MyTitleText(
                             title: '6- I acknowledge that I have received the statement of right and responsibility and it has been explained to me.',
                             color: Colors.black,
                             fontSize: 11,
                           ),

                         ],

                       )),
                       myCell(child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           MyTitleText(
                             title: '1- إنني ادرك أنه خلال قيام فريق الرعاية الطبيه المنزليه بتقديم الرعاية سوف تتاح لي الفرصه للآتي:',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: 'أ-معرفه وتفهم طبيعه الحاله المرضيه.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: 'ب- الاطلاع على الرعاية المقترحه لي والبدائل المحتمله وفهم العواقب والمضاعفات المترتبه على عدم تقديمها.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: 'ت-طرح اي استفسار حول الرعاية الطبيه والعلاج والادويه التي ستصرف لي.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,

                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: 'ث-التعرف على الفوائد المترتبه على الرعاية المقترحه وكذلك المضار والمخاطر التي يمكن أن تحدث من وقت لآخر.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           MyTitleText(
                             title: 'ج-معرفه هويه ومؤهلات موظفي الرعاية الطبيه المنزليه المسؤولين عن تقديم الرعاية لي.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,

                           ),
                           const SizedBox(height: 10),
                           MyTitleText(
                             title: '2- إنني ادرك أن من حقي اتخاذ كل القرارات المتعلقه بالرعايه الطبيه المنزليه المقدمه لي بما فيها حق قبول أو رفض تلقي أي رعايه أو الخضوع لأي إجراء يراه الطبيب المعالج.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: '3-إنني أدرك عدم إمكانيه التكهن أو ضمان نتائج الإجراءات الطبيه.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           MyTitleText(
                             title: '4-كما أنني أوافق على الإجراءات العلاجيه الطارئه التي قد تتطلبها حالتي المرضيه خلال فترة رعايتي.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           MyTitleText(
                             title: '5-كما أنني أوافق على إجراء أيه فحوصات طيبه تتطلبها حالتي المرضيه.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),
                           const SizedBox(height: 5),
                           MyTitleText(
                             title: '6-أقر أني قد استلمت وثيقه حقوق وواجبات (مسؤوليات) المرضى وقد تم شرحها لي.',
                             color: Colors.black,
                             fontSize: 11,
                             textDirection: TextDirection.rtl,
                           ),

                         ],

                       )),
                     ]
                  ),
                  TableRow(
                    children: [
                      myCell(child: MyTitleText(title: 'I have been informed of the nature and frequency of the visits I will receive: I have participated in the planning of my care.',
                        color: Colors.black,
                        fontSize: 11,

                      )),
                      myCell(child: MyTitleText(title: 'وقد تم إبلاغي بطبيعه وعدد الزيارات التي سيقوم بها فريق الرعاية الطبيه المنزليه لي،كما أنني شاركت في وضع خطه الرعاية التي ستقدم لي.',
                        color: Colors.black,
                        fontSize: 11,
                        textDirection: TextDirection.rtl,
                      )),
                    ],
                  ),
                  TableRow(
                    children: [
                      myCell(child: Column(
                        children: [
                          MyTitleText(
                            title: 'At any time while receiving services from THHC and in the event of any medical emergency, I authorize HHC or its employees to provide or obtain such medical treatment as they deem advisable under the circumstances, and I agree to assume sole responsibility for all charges for such treatment.',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: 'I Understand that in case of Emergency situation during home health care team visit at home, I will be responsible for providing transportation to any hospital and calling the red crescent. THHC may arrange transportation options for me or my dependent but at my own expense and responsibility',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                        ],
                      )),
                      myCell(child: Column(

                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                            title: 'في أي وقت أثناء تلقي الخدمات من الرعاية  الطبيه المنزلية في توازن وفي حالة حدوث أي حالة طبية طارئة ، أفوض الرعاية الطبيه المنزليه أو موظفيه بتقديم أو الحصول على العلاج الطبي الذي يرونه مستصوبا في ظل هذه الظروف ، وأنا أوافق على تحمل المسؤولية عن جميع الرسوم لمثل هذا العلاج.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(height: 20),
                          MyTitleText(
                            title: 'أتفهم أنه في حاله الطوارئ أثناء زياره الرعاية الطبيه المنزليه سأكون مسؤول عن توفير وسائل النقل إلى أي مستشفى وإستدعاء الهلال الاحمر،قد يقوم قسم الرعاية الطبيه المنزليه بترتيب خيارات النقل لي أو من أنوب عنه ولكن على نفقتي الخاصه ومسؤوليتي',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )),
                    ],
                  ),
                  TableRow(
                    children: [
                      myCell(child: MyTitleText(
                        title: 'In the event that all employee or other representative of Tawazun home health care sustains percutaneous, mucous membrane, or open wound exposure to my blood or other fluids, I agree to have my blood tested for HIV (AIDS) or Hepatitis infection. I agree that the results of the test shall be released to the Tawazun home health care and exposed person, but not to anyone else unless required or authorized by law.',
                        color: Colors.black,
                        fontSize: 11,

                      )),
                      myCell(child:  MyTitleText(
                        title: 'إذا تعرض أي موظف أو ممثل للرعايه الطبيه المنزليه في توازن للتلوث بملاسمه دمي أو أي من سوائل جسمي عن طريق الجلد أو ألغشاء المخاطي أو جرح مفتوح ،فأنني أوافق على إختبار عينه من دمي لفيروس نقص المناعه المكتسبه (مرض الايدز) أو التهاب الكبد الوبائي ،كما أنني أوافق على إعطاء قسم الرعاية الطبيه المنزليه في توازن والموظف المعني صوره عن نتيجه الفحص المخبري وليس لأي شخص أو جهه أخرى ما لم يكن الطلب قانونيا.',
                        color: Colors.black,
                        fontSize: 11,
                        textDirection: TextDirection.rtl,
                      )),
                    ],
                  ),
                  TableRow(
                    children: [
                      myCell(child: MyTitleText(
                        title: 'I agree to Tawazun home health care sending copies of my medical records or any other relevant information to my insurance providers or other sources of payment as well as any government agency or legal authorities requiring such information. I understand that this information will be sent when it is needed for payment of my medical bills and/or on case of legal or investigation actions.',
                        color: Colors.black,
                        fontSize: 11,

                      )),
                      myCell(child:  Column(
                        children: [
                          MyTitleText(
                            title: 'اقر بالموافقه على قيام توازن للرعايه الطبيه المنزليه بإرسال صور ممن ملفي الطبي أو البيانات والمعلومات والتقارير الطبيه عني إلى شركات التأمين الصحي أو الجهات والسلطات الأخرى المسؤوله عن تسديد فواتير العلاج أو التحقيقات القضائيه عندما تكون هذه المستندات والمعلومات والبيانات مطلوبه.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),

                        ],
                      )),
                    ],
                  ),
                  TableRow(
                    children: [
                      myCell(child: MyTitleText(
                        title: 'I understand that in some instances residents and/or other trainees may observe or participate in my health care or my dependent under direct supervision of ASH HHC health professionals, and I will be fully informed in such instances and will be offered the opportunity to accept',
                        color: Colors.black,
                        fontSize: 11,

                      )),
                      myCell(child:  Column(
                        children: [
                          MyTitleText(
                            title: 'أتفهم أنه في بعض الحالات ، قد يراقب أو يتدرب الأطباء المقيمون أو/ و غيرهم من المتدربين خلال رعايتي الطبيه  أو لمن أنوب عنه ولكن تحت الإشراف المباشر للطاقم الطبي اوالعاملين الطبيين في قسم الرعاية الطبيه المنزلية ، وسيتم اعلامي في مثل هذه الحالات ، وسوف يكون لي الحق بالقبول أو الرفض .',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),

                        ],
                      )),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MyTitleText(
                title: 'F044-THHC General Consent Form',
                color: Colors.black,
                fontSize: 11,
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: Image.asset('assets/ic_app.jpg',
                      height: 70,

                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 20,
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:  Align(
                        alignment: Alignment.topCenter,
                        child: MyTextFormField(
                          controller: f044Controller.labelController2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyTitleText(title: 'General Consent Form', color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25,),
                  MyTitleText(title: ' إقرار بالموافقه على تقديم الرعايه الطبيه المنزليه', color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,),
                ],
              ),
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyTitleText(
                            title: 'For Vaccination:',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,

                          ),
                          MyTitleText(
                            title: 'I have been informed that Flu, Pneumonia and Meningitis can be a serious illness for people who are elderly or sick with other chronic diseases, I have been informed that I must tell the nurse if I have:',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: '1- A history of allergy to egg, flu, pneumococcal or meningococcal vaccine.',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: '2- A fever or elevated temperature.',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: '3- History of Guillain-Barres Syndrome.',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: 'I am aware that normally, after the vaccine, I may have some soreness or redness (where the needle was given), fatigue, headache, elevated temperature and aches for',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(
                            title: '1-2 days. I also know that if any serious allergic reaction should occur I should either report it to the nurse or visit the nearest medical Center for urgent treatment',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                        ],
                      )),
                      myCell(child: Column(

                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                           title: 'التطعيمات:',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: 'تم إبلاغي بأن الانفلونزا والالتهاب الرئوي والتهاب السحائي (الحمى الشوكيه ) يمكن أن تشكل خطرا على صحه كبار السن أو المرضى الذين يعانون من الامراض المزمنه وقد طلب مني ضروره إبلاغ الممرضة إذا كنت أعاني من أي من الحالات المرضيه التالية:',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '1-حساسيه للبيض او لأي لقاح مضاد للإنفلونزا ، للإلتهاب الرئوي أو للإلتهاب السحائي.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '2-حمى أو ارتفاع في درجه الحرارة.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '3- متلازمه غيان باريه.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: 'إنني أدرك أنه بعد تطعيمي باللقاح قد أتعرض لألم أو احمرار بسيط في موضع الابره وقد أشعر بتعب ،بصداع، ارتفاع في درجه الحرارة أو أوجاع قد تستمر ليوم أو يومين وهذا أمر عادي كما أنني أدرك أنه في حاله تعرضي لأي حساسيه شديده يجب علي إبلاغ الممرضة بها أو مراجعه أقرب مركز طبي لتلقي العلاج اللازم.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      )),
                    ],
                  ),
                  //Todo :For Vaccination
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                            title: 'I was informed and I agree that THHC is a Non-Smoking Area.',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(title: '', color: Colors.white),
                        ],
                      )),
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                            title: 'أفيد بأني قد أبلغت وأوافق على أن قسم الرعاية الطبيه المنزلية في توازن هو منطقة خالية من التدخين.',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(title: '', color: Colors.white),
                        ],
                      )),
                    ],
                  ),
                  //Todo :Cancellation Policy
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                            title: 'Cancellation Policy:',
                            color: Colors.black,
                            fontSize: 11,

                          ),
                          MyTitleText(title: '1. In case of the pre-cancelation, contact THHC at least 2 hours before the scheduled visit. Otherwise, the service will be charged as 50% to the client’s account.', color: Colors.black),
                          MyTitleText(title: '2. In case the team arrived at the home and the patient cancelled the appointment on site, the client will be charged for a full payment of the visit.', color: Colors.black),
                          MyTitleText(title: '3.	The treatment will be cancelled if nobody opens the door and the team is waiting for more than 15 minutes, and the service will be fully charged to the client’s account.', color: Colors.black),
                          MyTitleText(
                            title: '4.	 All cancelation / rescheduling is subject to treating physician evaluation to ensure from the maximum improvement for the patient. In case the cancellation is done from the THHC side, the full paid amount will be refunded without service charges.',
                            color: Colors.black,
                          )
                        ],
                      )),
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                            title: 'سياسة الالغاء:',
                            color: Colors.black,
                            fontSize: 11,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            textDirection: TextDirection.rtl,
                              title: '1.	في حال الرغبة في الغاء زيارة او تغيير الموعد خلال مدة العقد ، يتم إشعار قسم الرعا ية  قبل 2 بساعتين على الاقل من وقت الزيارة المقررة. و في حال تم إشعارنا قبل أقل من 2 ساعتين من موعد الزيارة فإنه سيتم احتساب 50 %من قيمة الزيارة على حساب العميل .  ', color: Colors.black),
                          const SizedBox(height: 5),
                          MyTitleText(title: '2.	وفي حالة إلغاء الموعد بعد وصول الفريق  الى منزلكم فإنه سيتم احتساب تكلفة الزيارة بالكامل على حساب العميل.', color: Colors.black,textDirection: TextDirection.rtl,),
                          const SizedBox(height: 5),
                          MyTitleText(title: '3.	 سوف يتم إلغاء العلاج إذا لم يتم فتح باب المنزل و انتظار الفريق لأكثر من 15 دقيقة، و سيتم احتساب كامل قيمة الزيارة على حساب العميل .', color: Colors.black,textDirection: TextDirection.rtl,),
                          const SizedBox(height: 5),
                          MyTitleText(title: '4.	تخضع كافة طلبات  تغيير المواعيد أو الالغاء إلى تقييم الطبيب المعالج لضمان فعالية خطة العلاج وتحقيق المنفعة القصوى للمريض . في حال تم الالغاء من قِبل قسم الرعاية الطبيه المنزلية ,سيتم ارجاع المبلغ المدفوع كامل بدون أي رسوم الخدمة  . ', color: Colors.black,textDirection: TextDirection.rtl,),

                        ],
                      )),
                    ],
                  ),
                  //Todo: Discontinuation of Service
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                              title: 'Discontinuation of service by THHC:',
                              color: Colors.black),
                          MyTitleText(
                              title: '1.	Your goals have been met.',
                              color: Colors.black),
                          MyTitleText(
                              title: '2.	If admitted to hospital for more than 24 hours, unless will provide a Medical Report or arrange Physician visit.',
                              color: Colors.black),
                          MyTitleText(
                            title: '3. Lack of Funding.',
                              color: Colors.black),
                          MyTitleText(
                            title: '4.	Any Ethical misconduct by the patient / family towards the THHC Staff. ',
                              color: Colors.black),
                          MyTitleText(
                            title: '5. Three Consecutive pre-cancelled visits without notifying.',
                              color: Colors.black),
                        ],
                      )),
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                              title: 'إ يقاف برنامج الرعاية ا الطبيه المنزليه :',
                              color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(height: 5),
                          MyTitleText(
                              title: '1-	إذا تم استيفاء الاهداف الخاصة المريض .',
                              color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '2-	إذا تم تنويم المريض في أي مستشفى لمدة تزيد عن 24 ساعه, إلا في حاله إفادة القسم بتقرير طبي حديث لحالة المريض ، أو طلب زياارة طبيب.  ',
                            color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(height: 5),
                          MyTitleText(
                            title: '3-	عدم وجود تمويل مالي للخدمة.',
                            color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '4-	أي سلوك غير أخلاقي من قبل المريض او الاسره تجاە موظين الرعايه الطبيه المزليه.',
                            color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          MyTitleText(
                            title: '5-	بلوغ عدد الزيارات التي تم الغاءها دون إشعار الى 3 زيارات متتالة.  ',
                            color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ))
                    ]
                  ),
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                              title: 'I Certify that I understand all the above instructions & information and the THHC rules & regulations and I agree to follow all. And if I fail to abide by these obligations, THHC will have the right to obtain full compensation for all expenses and fees incurred.',
                              color: Colors.black),
                          MyTitleText(title: '', color: Colors.black),
                        ],
                      )),
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyTitleText(
                              title: 'أقر بأنني قرأت وفهمت جميع التعليمات والحقوق والواجبات والمعلومات الواردة أعلاه، وألتزم بكامل أنظمة وقواعد ولوائح قسم الرعاية الطبيه المنزلية وأوافق على اتباعها جميعاً.',
                              color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(height: 10),
                          MyTitleText(
                            title: 'وإذا أخفقت في الالتزام بهذه التعليمات والإجراءات،  يحق لـقسم الرعاية الطبيه المنزلية الحصول على تعويض كامل عن جميع النفقات والرسوم المترتبة على ذلك.',
                              color: Colors.black,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ))
                    ]
                  ),
                  TableRow(
                    children: [
                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              MyTitleText(title: 'Signature of Patient/Legal Guardian/Responsible Family member:', color: Colors.black),
                              MyTextFormField(
                                controller: f044Controller.signatureOfPatientENController,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyTitleText(title: 'Date and Time:', color: Colors.black),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.dateAndTimeENController1,
                                    hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          MyTitleText(title: 'Witness 01', color: Colors.black),
                         Row(
                          children: [
                            MyTitleText(title: 'THHC Staff Name:', color: Colors.black),
                            Expanded(
                              child: MyTextFormField(
                                controller: f044Controller.staffNameENController,
                                hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                              ),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            MyTitleText(title: 'ID Number:', color: Colors.black),
                            Expanded(
                              child: MyTextFormField(
                                controller: f044Controller.idNumberENController1,
                                hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                              ),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            MyTitleText(title: 'Signature:', color: Colors.black),
                            Expanded(
                              child: MyTextFormField(
                                controller: f044Controller.signatureENController1,
                                hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                              ),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            MyTitleText(title: 'Date and Time:', color: Colors.black),
                            Expanded(
                              child: MyTextFormField(
                                controller: f044Controller.dateAndTimeENController2,
                                hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                              ),
                            ),
                          ],
                        ),
                          const SizedBox(height: 20),
                          MyTitleText(title: 'Witness 02', color: Colors.black),
                          Row(
                            children: [
                              MyTitleText(title: 'THHC Staff Name:', color: Colors.black),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.staffNameENController2,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyTitleText(title: 'ID Number:', color: Colors.black),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.idNumberENController2,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyTitleText(title: 'Signature:', color: Colors.black),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.signatureENController2,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyTitleText(title: 'Date and Time:', color: Colors.black),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.dateAndTimeENController3,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),

                      myCell(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.signatureOfPatientARController,
                                  hintText: '___________________________________________',
                                  textDirection: TextDirection.rtl,
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              TextCheckbox(title: 'توقيع المريض/ولي الأمر:', color: Colors.black,
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              const Spacer(),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.dateAndTimeARController1,
                                  hintText: '_____________________________________',
                                hintStyle: myHintStyle(),

                                ),
                              ),
                              MyTitleText(title: 'التاريخ والوقت:', color: Colors.black,
                                textDirection: TextDirection.rtl,

                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          MyTitleText(title: 'الشاهد الاول', color: Colors.black,
                          textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.staffNameARController,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              TextCheckbox(title: 'إسم ممثل الرعاية الطبيه المنزليه:',
                                color: Colors.black,
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.idNumberARController1,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              TextCheckbox(
                                title: 'الرقم الوظيفي:', color: Colors.black,
                                textDirection: TextDirection.rtl,),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.signatureARController1,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              MyTitleText(title: 'التوقيع:', color: Colors.black  ,textDirection: TextDirection.rtl,),

                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.dateAndTimeARController2,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              MyTitleText(title: 'التاريخ والوقت:', color: Colors.black,  textDirection: TextDirection.rtl,),

                            ],
                          ),
                          const SizedBox(height: 20),
                          MyTitleText(title: 'الشاهد الثاني', color: Colors.black,  textDirection: TextDirection.rtl,),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.staffNameARController2,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              TextCheckbox(title: 'إسم ممثل الرعاية الطبيه المنزليه:', color: Colors.black,  textDirection: TextDirection.rtl,),

                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.idNumberARController2,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              MyTitleText(title: 'الرقم الوظيفي:', color: Colors.black,  textDirection: TextDirection.rtl,),

                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.signatureARController2,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              MyTitleText(title: 'التوقيع:', color: Colors.black,  textDirection: TextDirection.rtl,),

                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(child: SizedBox()),
                              Expanded(
                                child: MyTextFormField(
                                  controller: f044Controller.dateAndTimeARController3,
                                  hintText: '_____________________________________',
                                  hintStyle: myHintStyle(),
                                ),
                              ),
                              MyTitleText(title: 'التاريخ والوقت:', color: Colors.black,  textDirection: TextDirection.rtl,),

                            ],
                          ),
                        ],
                      )),

                    ]
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MyTitleText(
                title: 'F044-THHC General Consent Form',
                color: Colors.black,
                fontSize: 11,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    )
    );
  }

   TextStyle myHintStyle(){
    return  const TextStyle(
    overflow: TextOverflow.visible
  );
  }
  TableCell myCell({required Widget child}){
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: child,
      ),
    );
  }
}
