import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          home: Android1(),
        );
      },
    );
  }
}

class Android1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("푸시 알림 설정", style: TextStyle(color: Color(0xff777777), fontSize: 16, fontWeight: FontWeight.w400),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("알림 모두 끄기", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "choosing에서는 푸시 알림을 개별 제어할 수 있습니다.\n수신할 알림 유형을 선택해주세요.",
                      style: TextStyle(color: Color(0xff777777))
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("오늘의 츄징 도착", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "오늘의 츄징이 도착했어요 확인해보세요.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("팔로우 요청", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "홍길동님이 사용자님을 팔로우 하였습니다.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("츄징 선택", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "홍길동님과 츄징하고 싶은 사람은 20명 입니다.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("츄징 마감", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "오늘의 츄징이 곧 마감됩니다. 삭제되기 전에 확인하세요.",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB),
                ),
                padding: EdgeInsets.fromLTRB(15, 14, 12, 14),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7),
                              Text("광고성 푸시", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 826.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(
                      "어떤 친구가 너를 좋아하는지 확인해봐!(광고)",
                      style: TextStyle(color: Color(0xff777777), fontSize: 14, fontWeight: FontWeight.w400)
                  ),
                ],
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
