import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

int screenIndex = 0;
List<Widget> screenList = [];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 818),
      minTextAdapt: true,
      builder: (context, child){
        return MaterialApp(
          theme: ThemeData(fontFamily: "AppleSDGothicNeo"),
          home: Friends_Setting(),
        );
      },
    );
  }
}

class Friends_Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width,
        leading: Container(
          padding: EdgeInsets.fromLTRB(20, 15.5, 0, 15.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/back_btn3.svg'),
              SizedBox(width: 10,),
              Text(
                "친구 설정",
                style: TextStyle(
                    color: Color(0xff777777),
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFAFAFA),
                ),
                padding: EdgeInsets.fromLTRB(14, 12, 11, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/friends_setting2.svg',
                        ),
                        SizedBox(width: 8),
                        Text("내 전화번호로 친구 찾기", style: TextStyle(color: Color(0xff555555), fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/toggle.svg',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text(
                      "다른 사람이 내 휴대전화 번호로 나를 찾을 수 있습니다.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 19,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFAFAFA),
                ),
                padding: EdgeInsets.fromLTRB(12, 13, 12, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/friends_setting3.svg',
                        ),
                        SizedBox(width: 8),
                        Text("연락처 동기화", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff555555))),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/toggle.svg',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text(
                      "사용자님의 연락처에 접근해 친구를 추천합니다.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(12, 13, 12, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/friends_setting1.svg',
                        ),
                        SizedBox(width: 8),
                        Text("차단된 사용자", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff555555))),
                      ],
                    ),
                    SvgPicture.asset('assets/icons/arrow2.svg')
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 91,
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14)
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