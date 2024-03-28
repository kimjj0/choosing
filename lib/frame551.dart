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
          home: Settings(),
        );
      },
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설정"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 26,),
              Container( //-------------프로필 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFBFBFB)
                ),
                padding: EdgeInsets.fromLTRB(12, 18, 12, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/profile2.png',
                            width: 62,
                            height: 62,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14,),
                        Column(
                          children: [
                            Text("홍길동님", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),),
                            Text("jiho10101010"),
                          ],
                        ),
                      ]
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                  ],
                ),
              ),
              SizedBox(height: 14,),//---------------프로필 끝
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("설정", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                ],
              ),
              SizedBox(height: 6,),
              Container( //---------------------설정 탭 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFBFBFB)
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
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("푸시 알림 설정", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("친구 설정", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ), //-----------------------------설정 탭 끝
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("보안", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                ],
              ),
              SizedBox(height: 6,),
              Container( //------------------보안 탭 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFBFBFB)
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
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("개인정보 및 약관", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ), //------------------------보안 탭 끝
              SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("정보", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                ],
              ),
              SizedBox(height: 6,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFBFBFB)
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
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("자주 묻는 질문", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("츄징 평가 남기기", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Colors.grey,),
                              SizedBox(width: 7),
                              Text("정보", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFBFBFB),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                child: Text("로그아웃", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFF5555)),),
              ),
            ],
          ),
        )
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



