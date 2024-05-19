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
        child: Column(children: [
          SizedBox(height: 56),
          SizedBox(
            width: double.infinity,
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
                hintText: ('친구를 검색해보세요'),
                hintStyle: TextStyle(color: Color(0xffdddddd), fontSize: 16),
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
              ),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  decorationThickness: 0),
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 28),
                  child: Text(
                    '최근 검색한 사람',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff333333)),
                  )),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: SvgPicture.asset(
                              'assets/icons/rectangle.svg',
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
                                    color: Color(0xff999999),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child:
                                SvgPicture.asset('assets/icons/red x box.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
