import 'package:easy_rich_text/easy_rich_text.dart';
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
            SizedBox(
              height: 48.h,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 0),
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
                          'byeontae1010',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffababab)),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/Group 812.svg'),)
                ],
              ),
            ),
            SizedBox(
              height: 15.5.h,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: double.infinity,
              height: 106.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:4),
                        width: 70,
                        height: 32,
                        child: Row(
                          children: [
                            Text('홍길동',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff222222)
                              ),
                            ),
                            Flexible(
                              child: IconButton(
                                  padding: EdgeInsets.fromLTRB(4,0,0,0),
                                  onPressed: () {},
                                  icon: SvgPicture.asset('assets/icons/pen.svg')),
                            )
                          ],
                        ),
                      ),
                      EasyRichText(
                        '150츄징',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '150',
                              style: TextStyle(
                                height: 1,
                                  fontSize: 42,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffff5b79))),
                          EasyRichTextPattern(
                              targetString: '츄징',
                              style: TextStyle(
                                height: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffff5b79))),
                        ],
                      ),
                      Text('팔로잉 16.3k  팔로워 16.3k', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffababab),
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 106.h,
                    height: 106.h,
                    child: SvgPicture.asset('assets/icons/circle.svg'),
                  )
                ]
              ),
            ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20,0,0,0),
                    width: 300,
                    height: 34,
                    child: Stack(
                      children: <Widget> [
                        SvgPicture.asset('assets/icons/half circle.svg',
                        ),
                        Positioned(
                          left: 20,
                          child:
                          SvgPicture.asset('assets/icons/half circle.svg',
                        ),),
                        Positioned(
                          left: 40,
                          child:
                          SvgPicture.asset('assets/icons/circle.svg',
                        ),),
                        Positioned(
                          left: 80,
                          child:
                          Container(
                            padding: EdgeInsets.only(top: 5),
                              child: Text('홍길동 외 함께 아는 친구 3명',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffdddddd)
                                ),))
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff5b79),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('팔로우',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xffffffff),
                    ),),),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 8, color: Color(0xfff3f3f3))),
                  )),
              SizedBox(height: 18.h),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('최근 받은 츄징', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff222222)
                    ),),
                    Text('전체보기', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffababab)
                    ),)
                  ],
                ),
              ),
              Container(
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
              )
          ],
        ),
      )
    );
  }
}
