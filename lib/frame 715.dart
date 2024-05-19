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
      body: Column(
        children: [
          SizedBox(height: 48),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 40,
                    // desired size
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    icon: SvgPicture.asset('assets/icons/back_btn3.svg'),
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 40,
                    // desired size
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    icon: SvgPicture.asset('assets/icons/Group 1655.svg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: SvgPicture.asset(
                        'assets/icons/circle.svg',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    EasyRichText(
                      '홍길동\nbyeontae1010•10k 츄징',
                      patternList: [
                        EasyRichTextPattern(
                            targetString: '홍길동',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff000000),
                            )),
                        EasyRichTextPattern(
                            targetString: 'byeontae1010•10k 츄징',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffababab),
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                          backgroundColor: Color(0xffFF5b79),
                          minimumSize: Size(69, 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      child: Text(
                        '팔로우',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
              )),
          SizedBox(height: 24),
          Container(
            height: MediaQuery.of(context).size.width * 1.4,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('햄버거를 가장 많이 먹는 사람', style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff222222)
                        ),),
                        Container(
                            margin: EdgeInsets.only(left: 4),
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset('assets/icons/burger.svg'))
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('생일파티를 맥도날드에서 했는데 햄버거를 5개나 먹는 모습을 보고 충격을 받아서 햄버거를 많이먹는다.',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff666666)
                    ),),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF5b79),
                          minimumSize: Size(335, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          )),
                      child: Text(
                        '힌트권 사용하기',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
