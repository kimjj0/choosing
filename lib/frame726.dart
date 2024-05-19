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
        leadingWidth: MediaQuery.of(context).size.width,
        leading: Container(
          padding: EdgeInsets.fromLTRB(20, 15.5, 0, 15.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/back_btn3.svg'),
              SizedBox(width: 10,),
              Text(
                "설정",
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
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 16,),
              Container( //-------------프로필 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFAFAFA)
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
                            Text("홍길동님", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: Color(0xff222222)),),
                            Text("jiho10101010", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff999999)),),
                          ],
                        ),
                      ]
                    ),
                    SvgPicture.asset('assets/icons/arrow2.svg'),
                  ],
                ),
              ),
              SizedBox(height: 14,),//---------------프로필 끝
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("기본 설정", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff777777),fontSize: 14),),
                ],
              ),
              SizedBox(height: 6,),
              Container( //---------------------설정 탭 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFAFAFA)
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
                              SvgPicture.asset('assets/icons/Group1653.svg'),
                              SizedBox(width: 7),
                              Text("푸시 알림 설정", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                              SvgPicture.asset('assets/icons/Group1895.svg'),
                              SizedBox(width: 7),
                              Text("친구 설정", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                  Text("보안", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff777777),fontSize: 14),),
                ],
              ),
              SizedBox(height: 6,),
              Container( //------------------보안 탭 시작
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFAFAFA)
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
                              SvgPicture.asset('assets/icons/qwer.svg'),
                              SizedBox(width: 7),
                              Text("개인정보 및 약관", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                  Text("정보", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff777777),fontSize: 14),),
                ],
              ),
              SizedBox(height: 6,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    color: Color(0xffFAFAFA)
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
                              SvgPicture.asset('assets/icons/asdf.svg'),
                              SizedBox(width: 7),
                              Text("자주 묻는 질문", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                              SvgPicture.asset('assets/icons/zxcv.svg'),
                              SizedBox(width: 7),
                              Text("츄징 평가 남기기", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                              SvgPicture.asset('assets/icons/ic_name_of_icon_24px_6 1.svg'),
                              SizedBox(width: 7),
                              Text("정보", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff555555),fontSize: 16)),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/arrow2.svg'),
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
                    color: Color(0xffFAFAFA),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                child: Text("로그아웃", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFF5555)),),
              ),
            ],
          ),
        )
      ),

    );
  }
}



