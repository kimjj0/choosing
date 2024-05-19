import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
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
        home: Profile(),
        );
      },
    );
  }


}

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/back_arrow.svg'),
                    SizedBox(width: 10.w,),
                    Text(
                      "프로필 편집",
                      style: TextStyle(
                          color: Color(0xffABABAB),
                          fontSize: 18
                      ),
                    )
                  ],
                ),
                Text(
                  "저장",
                  style: TextStyle(
                      color: Color(0xffDDDDDD),
                      fontSize: 16
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 32.h,),

          Container(
            color: Colors.blue,
            width: 90,
            height: 90,
            child: Stack(
              children: [
                Icon(Icons.circle, color: Color(0xffABABAB), size: 90,),
                Positioned(
                  top: 56,
                  left: 56,
                  child: Icon(Icons.circle, color: Color(0xffDDDDDD), size: 32,),
                )
              ],
            )
          ),

          SizedBox(height: 40.h,),

          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 23, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "이름",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 18
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "홍길동",
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),

                    SvgPicture.asset('assets/icons/pencil.svg'),
                  ],
                ),
              ),

              SizedBox(height: 22,),

              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 23, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "아이디",
                          style: TextStyle(
                              color: Color(0xffABABAB),
                              fontSize: 18
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "asdf1234",
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),

                    SvgPicture.asset('assets/icons/pencil.svg'),
                  ],
                ),
              ),

              SizedBox(height: 22,),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "성별",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "남성",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22,),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "휴대전화",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "010-1010-1100",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22,),

              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "생년월일",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "2000.10.10",
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 110,),
              Text(
                "핸드폰 번호가 변경됐어요",
                style: TextStyle(
                  color: Color(0xffFF5B79),
                  fontSize: 14,
                ),
              )

            ],
          ),

        ],
      ),
    );
  }
}
