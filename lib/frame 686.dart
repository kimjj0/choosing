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
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40,
                  child: TextFormField(
                    cursorColor: Colors.black12,
                    cursorHeight: 26,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(14, 13, 11.81, 13.81),
                        child: SvgPicture.asset(
                          'assets/icons/Group 146.svg',
                          width: 13.19,
                          height: 13.19,
                        ),
                      ),
                      hintText: ('김점수'),
                      hintStyle: TextStyle(color: Color(0xffdddddd), fontSize: 16 ),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 9),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14)),
                      filled: true,
                      fillColor: Color(0xfff6f7f9),
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0,11,0,11),
                        child: SvgPicture.asset('assets/icons/icon x.svg') ,
                      ),
                    ),
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        decorationThickness: 0),
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('취소', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffdddddd)
                  ),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            padding: EdgeInsets.fromLTRB(20, 27, 62, 27),
            width: double.infinity,
            height: 97,
            color: Color(0xffdddddd),
            child: EasyRichText(
              '초대하고 혜택받기!\n츄징으로 친구초대하고 성별 공개권 받으세요',
              patternList: [
                EasyRichTextPattern(
                    targetString: '초대하고 혜택받기!',
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff493E28),
                    )),
                EasyRichTextPattern(
                    targetString: '츄징으로 친구초대하고 성별 공개권 받으세요',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff7D6D4E),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.fromLTRB(20, 14, 14, 0),
                  child: Text(
                    '주소록에 있는 사람',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff333333)),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                child: Text('1 / 5', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffdddddd)
                )),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
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
                            '홍길동\n010-1234-5678',
                            patternList: [
                              EasyRichTextPattern(
                                  targetString: '홍길동',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xff000000),
                                  )),
                              EasyRichTextPattern(
                                  targetString: '010-1234-5678',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff333333),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child:
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffdddddd),
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(57, 32),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                              child: Text(
                                '초대',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffffffff)),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]
      ),
    );
  }
}
