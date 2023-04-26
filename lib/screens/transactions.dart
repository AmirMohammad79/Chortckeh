import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TranzactionWidget extends StatefulWidget {
  static String id = 'transaction';
  @override
  _TranzactionWidgetState createState() => _TranzactionWidgetState();
}

class _TranzactionWidgetState extends State<TranzactionWidget> {
  Widget fakeData = Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
    child: Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3F3),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x33000000),
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Text(
                          '41,000 تومان',
                          style: kPrimaryTextStyle,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '1402/02/06',
                    style: kSeconderyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 165.5,
                height: 100,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('بدهکاری به  جاسم', style: kSeconderyTextStyle),
                      Text('پیتزا تشریفات', style: kPrimaryTextStyle),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 10, 8),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(),
                  child: const FaIcon(
                    FontAwesomeIcons.donate,
                    color: Color(0xFFDD7586),
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10 ,left: 10),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const FaIcon(FontAwesomeIcons.circleArrowLeft,
                          size: 40, color: kSecondaryColor))
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 841.1,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: kThirdColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(88),
                                    child: Image.asset(
                                      'assets/images/alex-suprun-ZHvM3XIOHoE-unsplash.jpg',
                                      width: 44,
                                      height: 44,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const Text('امیر مهدی صدقی',
                                  style: kPrimaryTextStyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 15, 0),
                                      child: Text('صورت حساب',
                                          style: kCardTitleTextStyle),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            8, 8, 8, 8),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        fakeData,
                                        fakeData,
                                        fakeData,
                                        fakeData,
                                        fakeData,
                                        fakeData,
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
                              ),
                            ],
                          ),
                        ),
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
