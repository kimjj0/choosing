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
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
            children: [
              SizedBox(
                  height: 56
              ),
              Row(
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
              SizedBox(height: 26),
              SizedBox(
                height: 125,
                child: Column(
                  children: [
                    Row(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EasyRichText(
                                  '12시에 사라져요\n햄버거를 가장\n많이 먹는 사람',
                                  patternList: [
                                    EasyRichTextPattern(
                                        targetString: '12시에 사라져요',
                                        style: TextStyle(
                                            height: 2,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff666666))),
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
                width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 4),
                      margin: EdgeInsets.only(top: 14),
                      child: Text('최근 선택한 사람', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333)
                      ),
                      )
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 58,
                            height: 58,
                            child: SvgPicture.asset('assets/icons/rectangle.svg')),
                        Text('김지호', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff222222)
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return
                      Container(
                        padding: EdgeInsets.fromLTRB(0,16,0,16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 6),
                                  child: SvgPicture.asset(
                                    'assets/icons/circle.svg',
                                    width: 58,
                                    height: 58,
                                  ),
                                ),
                                EasyRichText(
                                  '이태수\nbyeontae1010\n300츄징',
                                  patternList: [
                                    EasyRichTextPattern(
                                        targetString: '이태수',
                                        style: TextStyle(
                                          height: 1.3,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                        )),
                                    EasyRichTextPattern(
                                        targetString: 'byeontae1010',
                                        style: TextStyle(
                                          height: 1.3,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff666666),
                                        )),
                                    EasyRichTextPattern(
                                        targetString: '300츄징',
                                        style: TextStyle(
                                          height: 1.3,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
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
                                    padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                                      backgroundColor: Color(0xffFF5b79),
                                      minimumSize: Size(57, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )),
                                  child: Text(
                                    '선택',
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
                      );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}