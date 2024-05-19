import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

int screenIndex = 0;
List<Widget> screenList = [];

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
            home: MyHomepage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                        color: Color(0xff777777)),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
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
                          EasyRichText(
                            '12시에 사라져요\n햄버거를 가장\n많이 먹는 사람\n아\n0\n내가 받은 츄징',
                            patternList: [
                              EasyRichTextPattern(
                                  targetString: '12시에 사라져요',
                                  style: TextStyle(
                                      height: 2.h,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333333))),
                              EasyRichTextPattern(
                                  targetString: '햄버거를 가장\n많이 먹는 사람',
                                  style: TextStyle(
                                      height: 1.2.h,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff333333))),
                              EasyRichTextPattern(
                                  targetString: '아',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffffffff))),
                              EasyRichTextPattern(
                                  targetString: '0',
                                  style: TextStyle(
                                      letterSpacing: -3,
                                      height: 1.h,
                                      fontSize: 62,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffff5b79))),
                              EasyRichTextPattern(
                                  targetString: '내가 받은 츄징',
                                  style: TextStyle(
                                      height: 1.h,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff999999))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Transform.scale(
                      scale: 2.3,
                      child: Transform.translate(
                        offset: Offset(50, 0),
                        child: SvgPicture.asset(
                          'assets/icons/burger.svg',
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(
                height: 26.h
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
                )),
              SizedBox(height: 94.h),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text('아무것도 없습니다.', style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff777777)
                      ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffdddddd),
                          minimumSize: Size(193, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      child: Text(
                        '츄징 스토리 바로가기',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar:
      SizedBox(
        height: 90,
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff111111),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: screenIndex,
              items: [
                BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/bottomBar1.svg'),label: ''),
                BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/bottomBar2.svg'),label: ''),
                BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/bottomBar3.svg'),label: ''),
                BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/bottomBar4.svg'),label: ''),
                BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/bottomBar5.svg'),label: '')
              ],
              // onTap: (value) {
              //   setState(() {
              //     screenIndex = value;
              //   });
              // },
            ),
          ),
        ),
      ),
    );
  }
}
