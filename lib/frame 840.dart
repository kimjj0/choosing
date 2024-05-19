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
            height: 56.h,
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
                            color: Color(0xff777777)),
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Group 812.svg'),
                )
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            child: SizedBox(
              child: TabBar(
                tabs: [
                  SizedBox(
                    height: 40.h,
                    width: 98.h,
                    child: Tab(
                      child: Text("100 팔로잉"),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 84.h,
                    child: Tab(
                      child: Text("100 팔로워"),
                    ),
                  ),
                ],
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.h, color: Color(0xffff5b79)),
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
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                indicatorColor: Color(0xffff5b79),
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 14),
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
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 48,
                        height: 48,
                        child: SvgPicture.asset('assets/icons/circle.svg')),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('홍길동', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff222222)
                          ),),
                          Text('byeontae1010', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff777777)
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                      backgroundColor: Color(0xffFFced7),
                      minimumSize: Size(69, 32),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Text(
                    '팔로우',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfffff5b79)),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
