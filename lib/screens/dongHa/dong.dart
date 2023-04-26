import 'package:chortkeh/constant/constant.dart';
import 'package:flutter/material.dart';

import 'dongMosavi.dart';
class DongScreen extends StatefulWidget {
  static String id = 'dong';

  @override
  State<DongScreen> createState() => _DongScreenState();
}

class _DongScreenState extends State<DongScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          bottom:  TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

                color: Colors.white),

            tabs: [
              Tab(child: Text('دنگ مساوی',style: kCardTitleTextStyle,),),
              Tab(child: Text('دنگ دلخواه',style: kCardTitleTextStyle,),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DongWidget(),
            DongWidget(),
          ],
        ),
      ),
    );
  }
}
