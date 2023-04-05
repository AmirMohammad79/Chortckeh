import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String id = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          "Wellcome back,",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "amir mohammad",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                          "https://static.vecteezy.com/system/resources/previews/002/214/642/original/web-designer-and-programmer-free-vector.jpg",
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  shape: BoxShape.rectangle,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      padding: const EdgeInsets.all(8),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xd854256f),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              "Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Text(
                                "\$50,1235",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Text(
                                    "250 14 5821212121",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  Text(
                                    "06/26",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      padding: const EdgeInsets.all(8),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff2ec17a),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              "Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Text(
                                "\$18,0233",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Text(
                                    "272 14 582812177",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  Text(
                                    "07/23",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 16),
                      padding: const EdgeInsets.all(8),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xe8e27144),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            color: const Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              "Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Text(
                                "\$18,0233",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Text(
                                    "272 14 582812177",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  Text(
                                    "04/25",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
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
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  "Total walet",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
                width: 16,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 100, 50),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4dffffff), width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            "\$ 14,206",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x5be5e5e5),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: const Color(0xff9e9e9e), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x5be5e5e5),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: const Color(0xff9e9e9e), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  "Transactions",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.blueGrey,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.black,
          textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: const TextStyle(color: Colors.black),
              ),
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomAppBar(
          color: Colors.cyanAccent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: BottomNavigationBar(
            elevation: 5,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.logout_outlined), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
