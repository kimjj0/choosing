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
              height: 227,
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
                                '12시에 사라져요\n햄버거를 가장\n많이 먹는 사람\n300\n내가 받은 츄징',
                                patternList: [
                                  EasyRichTextPattern(
                                      targetString: '12시에 사라져요',
                                      style: TextStyle(
                                          height: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff333333))),
                                  EasyRichTextPattern(
                                      targetString: '햄버거를 가장\n많이 먹는 사람',
                                      style: TextStyle(
                                          height: 1.2,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff333333))),
                                  EasyRichTextPattern(
                                      targetString: '300',
                                      style: TextStyle(
                                          letterSpacing: -4,
                                          height: 1.2,
                                          fontSize: 62,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffff5b79))),
                                  EasyRichTextPattern(
                                      targetString: '내가 받은 츄징',
                                      style: TextStyle(
                                          height: 1,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
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
            Container(
                margin: EdgeInsets.only(top: 22),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(0, 14, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('최신순', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff666666)
                  ),),
                  Container(
                      padding: EdgeInsets.fromLTRB(4, 10, 0, 8),
                      child: SvgPicture.asset('assets/icons/pass3.svg'))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 126,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '익명의 사용자',
                    style: TextStyle(
                        height: 2,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffababab)),
                  ),
                  Flexible(
                      child: RichText(
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        text: TextSpan(
                          text:
                          '함께 눈사람을 만들고 싶은 이유는 예쁘기 때문이다. 그리고 이사람이랑 데이트를 하고싶다.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff666666)),
                        ),
                      )),
                  Text(
                    '보관하기 | 삭제하기',
                    style: TextStyle(
                        height: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffcccccc)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
