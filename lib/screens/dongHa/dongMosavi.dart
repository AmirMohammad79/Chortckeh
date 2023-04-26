import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DongWidget extends StatefulWidget {

  @override
  _DongWidgetState createState() => _DongWidgetState();
}

class _DongWidgetState extends State<DongWidget> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: kSecondaryColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 54.7,
                    decoration: const BoxDecoration(),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF3F3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'تاریخ',
                                          style: kCardTitleTextStyle
                                        ),
                                      ),
                                      TextFormField(
                                        cursorColor: kPrimaryColor,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        autofocus: false,
                                        textCapitalization:
                                        TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: '1402/02/22',
                                          hintStyle: kSeconderyTextStyle,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF5B6564),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPrimaryColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidCalendarDays,
                                            ),
                                          ),
                                          prefixIconColor: kSecondaryColor,
                                        ),
                                        style: kPrimaryTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF3F3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'عنوان دنگ',
                                          style: kCardTitleTextStyle
                                        ),
                                      ),
                                      TextFormField(
                                        cursorColor: kPrimaryColor,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        autofocus: false,
                                        textCapitalization:
                                        TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'مثلا غذای رستوران فلان',
                                          hintStyle: kSeconderyTextStyle ,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF5B6564),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPrimaryColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                        ),
                                        style: kPrimaryTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF3F3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'مبلغ',
                                          style: kCardTitleTextStyle
                                        ),
                                      ),
                                      TextFormField(
                                        cursorColor: kPrimaryColor,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        autofocus: false,
                                        textCapitalization:
                                        TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: '155,000 تومان',
                                          hintStyle: kSeconderyTextStyle,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF5B6564),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPrimaryColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                        ),
                                        style: kPrimaryTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF3F3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'دنگ کیه ؟ ',
                                          style: kCardTitleTextStyle
                                        ),
                                      ),
                                      TextFormField(
                                        cursorColor: kPrimaryColor,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        autofocus: false,
                                        textCapitalization:
                                        TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'جاسم ناظری',
                                          hintStyle: kSeconderyTextStyle,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF5B6564),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPrimaryColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: kPinkColor,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),

                                        ),
                                        style:kPrimaryTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    backgroundColor: Colors.white70,
                                  ),
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  child: const Text('اضافه کردن دنگ جدید',
                                      style: kPrimaryTextStyle),
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
          ),
        ),
      ),
    );
  }
}
