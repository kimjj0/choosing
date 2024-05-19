import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 818),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(fontFamily: "AppleSDGothicNeo"),
            home: DefaultTabController(
              length: 3,
              child: Scaffold(
                body: Column(
                  children: [
                    SizedBox(height: 63.5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: SizedBox(
                            child: IconButton(
                              onPressed: () {},
                              // desired size
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              style: ButtonStyle(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: SvgPicture.asset('assets/icons/back_btn3.svg'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '츄징',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffababab)),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 23.5.h),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '다음 예정츄징',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffff5b79)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '햄버거를 가장 많이 먹는 사람',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff222222)),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 4),
                                          width: 24,
                                          height: 24,
                                          child: SvgPicture.asset(
                                              'assets/icons/burger.svg'))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(height: 28.h),
                    SizedBox(
                      child: TabBar(
                        tabs: [
                          SizedBox(
                            width: 98.h,
                            height: 40.h,
                            child: Tab(
                              child: Text("진행중인 츄징"),
                            ),
                          ),
                          SizedBox(
                            width: 84.h,
                            height: 40.h,
                            child: Tab(
                              child: Text("마감된 츄징"),
                            ),
                          ),
                        ],
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 2.h,
                            color: Color(0xffff5b79)),
                            borderRadius: BorderRadius.circular(1.5),
                        ),
                        overlayColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
                        labelColor: Color(0xffff5b79),
                        unselectedLabelColor: Color(0xffdddddd),
                        labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        unselectedLabelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        indicatorColor: Color(0xffff5b79),
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            height: 84,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: SvgPicture.asset('assets/icons/soccer.svg')),
                                Container(
                                  padding: EdgeInsets.fromLTRB(6, 16, 0, 16),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '300츄징',
                                          style: TextStyle(
                                              height: 1.2,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              color: Color(0xff222222)),
                                        ),
                                        Text(
                                          '축구에서 공을 가장 많이 넣는 사람',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xff666666)),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

