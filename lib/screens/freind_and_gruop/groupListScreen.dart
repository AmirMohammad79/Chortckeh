import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroupListWidget extends StatefulWidget {
  static String id = 'friendList';
  @override
  _GroupListWidgetState createState() => _GroupListWidgetState();
}

class _GroupListWidgetState extends State<GroupListWidget> {
  Widget fakeData = Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
    child: Material(
      color: Colors.transparent,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        height: 77.1,
        decoration: BoxDecoration(
          color: const Color(0xFFF0F0F0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  FaIcon(
                    FontAwesomeIcons.trashAlt,
                    color: Colors.black,
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.edit,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('خودمونیا', style: kPrimaryTextStyle),
                    ],
                  ),
                ),
              ),
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  color: kThirdColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44),
                    child: Image.asset(
                      'assets/images/alex-suprun-ZHvM3XIOHoE-unsplash.jpg',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: kSecondaryColor),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('گروه های من', style: kCardTitleTextStyle),
                      ),
                      FaIcon(FontAwesomeIcons.users ,
                      color: kTextLogoColor,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width ,
                        height: MediaQuery.of(context).size.height * 0.68,
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
                      child: const Text('اضافه کردن گروه جدید',
                          style: kPrimaryTextStyle),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
