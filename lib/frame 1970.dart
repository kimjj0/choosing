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
              length: 2,
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
                            '츄징 랭킹',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff777777)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 39.5.h),
                    SizedBox(
                      child: TabBar(
                        tabs: [
                          SizedBox(
                            height: 40.h,
                            width: 98.h,
                            child: Tab(
                              child: Text("오늘의 랭킹"),
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                            width: 84.h,
                            child: Tab(
                              child: Text("전체 랭킹"),
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
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
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
                    SizedBox(height: 12.h),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            height: 66,
                            margin: EdgeInsets.fromLTRB(20, 2, 20, 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 6.5),
                                      child: SizedBox(
                                        height: 29,
                                        width: 29,
                                        child: Text('120', style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color(0xffff5b79)
                                        ),),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 44,
                                        height: 44,
                                        child: SvgPicture.asset('assets/icons/circle.svg')),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(6, 16, 0, 16),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '홍길동',
                                              style: TextStyle(
                                                  height: 1.h,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Color(0xff666666)),
                                            ),
                                            Text(
                                              'byeontae1010',
                                              style: TextStyle(
                                                height: 1.4.h,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xffababab)),
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 20,
                                        child: SvgPicture.asset('assets/icons/burger.svg')),
                                    Text('300', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff666666)
                                    ),),
                                  ],
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

