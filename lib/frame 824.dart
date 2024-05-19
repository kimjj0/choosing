import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 56,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/back_btn3.svg'))),
              ],
            ),
            SizedBox(height: 14),
            SizedBox(
              height: 125,
              child: Column(
                children: [
                  Row(
                    children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          EasyRichText(
                            '이미 츄징하였습니다.\n햄버거를 가장\n많이 먹는 사람',
                            patternList: [
                              EasyRichTextPattern(
                                  targetString: '이미 츄징하였습니다.',
                                  style: TextStyle(
                                      height: 2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffff5b79))),
                              EasyRichTextPattern(
                                  targetString: '햄버거를 가장\n많이 먹는 사람',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff333333))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Transform.scale(
                      scale: 1.6,
                      child: Transform.translate(
                        offset: Offset(50, 3),
                        child: SvgPicture.asset(
                          'assets/icons/burger.svg',
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            Container(
              height: 76,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 48,
                      height: 48,
                      child: SvgPicture.asset('assets/icons/rectangle.svg')),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: EasyRichText(
                      '이태수\nbyeontae1010님을 츄징하였습니다.',
                      patternList: [
                        EasyRichTextPattern(
                            targetString: '이태수',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff222222))),
                        EasyRichTextPattern(
                            targetString: 'byeontae1010님을 츄징하였습니다.',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff666666))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 22),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
                )),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: double.infinity,
              height: 86,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                    height: 58,
                    width: 58,
                    child: SvgPicture.asset('assets/icons/circle.svg'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(6, 22, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '300츄징',
                          style: TextStyle(
                            height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          '김점수',
                          style: TextStyle(
                            height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          'byeontae1010',
                          style: TextStyle(
                            height: 1.3,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffababab)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              width: double.infinity,
              height: 86,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                    height: 58,
                    width: 58,
                    child: SvgPicture.asset('assets/icons/circle.svg'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(6, 22, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '300츄징',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          '김점수',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          'byeontae1010',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffababab)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              width: double.infinity,
              height: 86,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                    height: 58,
                    width: 58,
                    child: SvgPicture.asset('assets/icons/circle.svg'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(6, 22, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '300츄징',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          '김점수',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff222222)),
                        ),
                        Text(
                          'byeontae1010',
                          style: TextStyle(
                              height: 1.3,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffababab)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
