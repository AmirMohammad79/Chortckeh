import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Home2 extends StatefulWidget {
  static String id = 'home2';
  @override
  Home2State createState() => Home2State();
}

class Home2State extends State<Home2> {
  List<dynamic> allTransactions = [];
  late List<Map<String, dynamic>> response;
  Map<String, dynamic>? error = null;


  @override
  Widget build(BuildContext context) {
    List<Widget> dashboardActions = [
      GestureDetector(
        onTap: null,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 26,
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo.png',
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      )
    ];
    List<Widget> dashboardContents = [
      Container(
          height: 240,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Color(0xFF0070BA),
            color: Color(0xff1546A0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(36),
            ),
          )),
      Positioned(
          child: Opacity(
            opacity: 0.16,
            child: Image.asset(
              "assets/images/logo.png",
              color: Colors.white,
              height: 200,
            ),
          ),

          left: 0,
          top: 0),
      Positioned(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14 , vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              SizedBox(
                height: 20,
              ),
              Text(
                "Hello,!",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ".........................................................................",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.96),
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6.18,
              ),
              Text(
                "Your balance",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
        bottom: 20,
        left: 10,
      )
    ];
    List<Widget> transactionButtons = <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
            onPressed: () => null,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.file_upload_outlined,
                    size: 24,
                  ),
                ),
                Spacer(),
                Text(
                  "Send Money",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              // primary: Color(0xFF0070BA),
              backgroundColor: Color(0xff1546A0),
              // fixedSize: Size(90, 100),
              fixedSize: Size(96, 108),
              shadowColor: Color(0xFF0070BA).withOpacity(0.618),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            )),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
            onPressed: () => null,
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.file_download_outlined,
                    size: 24,
                    color: Color(0xFF0070BA),
                  )),
              Spacer(),
              Text(
                "Request Payment",
                style: TextStyle(color: Color(0xFF0070BA), fontSize: 13),
              ),
              SizedBox(
                height: 10,
              )
            ]),
            style: ElevatedButton.styleFrom(
              // fixedSize: Size(90, 100),
              fixedSize: Size(96, 108), backgroundColor: Colors.white,
              shadowColor: Color(0xffF5F7FA).withOpacity(0.618),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            )),
      ),
      PopupMenuButton<Widget>(
        icon: Icon(
          FluentIcons.more_vertical_28_regular,
          color: Colors.grey,
        ),
        offset: Offset(119, -27),
        onSelected: (value) {},
        itemBuilder: (context) =>
        [
          PopupMenuItem(
            child: Text("Scan QR Code"),
            value: null,
          ),
          PopupMenuItem(
            child: Text("My QR Code"),
            value: null,
          )
        ],
      )
    ];

    List<Widget> homeScreenContents = <Widget>[
      Stack(
        children: dashboardContents,
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: transactionButtons,
          ),
        ),
      ),
      Expanded(
          flex: 1,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 150,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Activity",
                          style:
                          TextStyle(fontSize: 21, color: Color(0xff243656)),
                        ),
                        Spacer(),
                        InkWell(
                          child: Text("View all",
                              style:
                              TextStyle(fontSize: 16, color: Colors.grey)),
                          onTap: null,
                        )
                      ],
                    ),
                    width: double.infinity,
                  ),
                  Expanded(
                    child: Container(
                      height: 145,
                      child: Text('builder'),
                    ),
                  )
                ],
              )))
    ];

    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 253, 253, 253),
        backgroundColor: Color(0xfffcfcfc),
        appBar: AppBar(
          actions: dashboardActions,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: homeScreenContents,
              ))
        ]));
  }
}

