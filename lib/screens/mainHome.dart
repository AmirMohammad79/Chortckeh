import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MainHome extends StatefulWidget {
static String id = 'mainHome';
  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  Widget fakeData = Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      child: Container(
        width: 100,
        height: 69.2,
        decoration: BoxDecoration(
          color: const Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
              child: Container(
                width: 90,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('41,000 تومان',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: kPrimaryTextStyle),
                    Text('1402/01/02', style: kSeconderyTextStyle),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('بدهکار به امیرمحمد عبدپور',
                          style: kSeconderyTextStyle),
                      Text('همبرگر بوفه اقتصاد', style: kPrimaryTextStyle),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
              child: Container(
                width: 60,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/alex-suprun-ZHvM3XIOHoE-unsplash.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ));
  Widget fakeData2 = Padding(
      padding:
      const EdgeInsetsDirectional
          .fromSTEB(
          8, 0, 8, 8),
      child: Container(
        width: 230,
        height: 100,
        decoration:
        BoxDecoration(
          border: Border.all(
              color: Colors
                  .black12),
          gradient:
          const LinearGradient(
            colors: [
              kSecondaryColor,
              Color(0xC4F5F5F5)
            ],
            stops: [0, 1],
            begin:
            AlignmentDirectional(
                0, -1),
            end:
            AlignmentDirectional(
                0, 1),
          ),
          borderRadius:
          BorderRadius
              .circular(15),
        ),
        child: Column(
          mainAxisSize:
          MainAxisSize.max,
          mainAxisAlignment:
          MainAxisAlignment
              .spaceEvenly,
          children: [
            Padding(
              padding:
              const EdgeInsetsDirectional
                  .fromSTEB(
                  8,
                  8,
                  8,
                  8),
              child: Row(
                mainAxisSize:
                MainAxisSize
                    .max,
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                children: [
                  Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(
                        8,
                        8,
                        8,
                        8),
                    child:
                    Container(
                      clipBehavior:
                      Clip.antiAlias,
                      decoration:
                      const BoxDecoration(
                        shape: BoxShape
                            .circle,
                      ),
                      child:
                      CircleAvatar(
                        backgroundColor:
                        Colors.transparent,
                        child: Image
                            .asset(
                          'assets/images/pngegg.png',
                          fit: BoxFit
                              .cover,
                          width:
                          31,
                          height:
                          31,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional
                        .fromSTEB(
                        8,
                        8,
                        8,
                        8),
                    child: Text(
                        'بانک پارسیان',
                        textAlign:
                        TextAlign
                            .end,
                        style:
                        kPrimaryTextStyle),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
              EdgeInsetsDirectional
                  .fromSTEB(
                  8,
                  8,
                  8,
                  8),
              child: Text(
                  '6221 0611 0740 9809',
                  textAlign:
                  TextAlign
                      .center,
                  style:
                  kThiridTextStyle),
            ),
          ],
        ),
      ));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 77.6,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          // border:
                          //     Border.all(color: kPrimaryColor, width: 0),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // set the shadow color
                              spreadRadius: 2, // set the spread radius of the shadow
                              blurRadius: 18, // set the blur radius of the shadow
                              offset: const Offset(0, 3), // set the offset of the shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundColor: Colors.transparent,
                                radius: 40,
                                child: Image.asset('assets/images/logo-dark.png'),),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 0),
                                        child: Text('عصر بخیر',
                                            textAlign: TextAlign.end,
                                            style: kSeconderyTextStyle),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 5),
                                        child: Text('امیرمحمد عبدپور',
                                            textAlign: TextAlign.end,
                                            style: kPrimaryTextStyle),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                          alignment:
                                          const AlignmentDirectional(0, 0),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            child: Image.asset(
                                              'assets/images/pexels-photo-220453.png',
                                              width: 75.8,
                                              height: 65,
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 8, 0),
                              child: Container(
                                width: 100,
                                height: 66.1,
                                decoration: BoxDecoration(
                                  // color: const Color(0xFFce93d8),
                                  border: Border.all(
                                      color: kPrimaryColor, width: 1.7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text('مجموع طلبکاری',
                                            style: kPrimaryTextStyle),
                                        Text('54,000 تومان',
                                            textDirection: TextDirection.rtl,
                                            style: kPrimaryTextStyle),
                                      ],
                                    ),
                                    Padding(
                                        padding:
                                        const EdgeInsetsDirectional
                                            .fromSTEB(12, 0, 8, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: kPrimaryColor,
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_downward_rounded,
                                            color: Colors.white,
                                            // color: Color(0xFF1AC86C),
                                            size: 50,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 66.1,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffe57373),
                                    width: 2),
                                // color: kFifthColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text('مجموع بدهکاری',
                                          style: kPrimaryTextStyle),
                                      Text('65,000 تومان',
                                          textDirection: TextDirection.rtl,
                                          style: kPrimaryTextStyle),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsetsDirectional
                                          .fromSTEB(12, 0, 8, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: kPinkColor,
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                        child: const Icon(
                                          Icons.arrow_upward_rounded,
                                          color: Colors.white,
                                          size: 50,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 381.8,
                        decoration: BoxDecoration(
                          // color: kSixthColor.withOpacity(0.4),
                          border: Border.all(
                              color: kPrimaryColor, width: 1.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(
                                  0, 8, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: const <Widget>[
                                  Text('آخرین حساب کتاب ها',
                                      style: kCardTitleTextStyle),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.circle_notifications_outlined,
                                    size: 26,
                                    color: kThirdColor,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 378.2,
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    fakeData,
                                    fakeData,
                                    fakeData,
                                    fakeData,
                                    fakeData,
                                    fakeData,
                                    fakeData,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        // color: kSixthColor.withOpacity(0.4),
                        // color: kSecondaryColor.withOpacity(0.6),
                        // border: Border.all(
                        //     color: kPrimaryColor, width: 1.7),
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: IconButton(
                                    hoverColor: Colors.transparent,
                                    iconSize: 70,
                                    icon: const Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, right: 20),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: const <Widget>[
                                        Text(
                                          'کارت های من',
                                          style: kCardTitleTextStyle,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.creditCard,
                                          color: kThirdColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 258.2,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding:
                                      const EdgeInsetsDirectional
                                          .fromSTEB(10, 10, 10, 10),
                                      child: ListView(
                                        reverse: true,
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection:
                                        Axis.horizontal,
                                        children: [
                                          fakeData2,
                                          fakeData2,
                                          fakeData2,
                                          fakeData2,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
