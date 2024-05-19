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
          home: Frame732(),
        );
      },
    );
  }


}

class Frame732 extends StatelessWidget{
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
              width: 112.w,
              height: 112.h,
              child: Stack(
                children: [
                  SizedBox(
                    width: 112.w,
                    height: 112.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100), child: Icon(Icons.circle, size: 110,),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(

                      child: IconButton(
                        icon: SvgPicture.asset('assets/icons/camera2.svg'),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(
                                insetPadding: EdgeInsets.all(20),
                                backgroundColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                elevation: 0.0,
                                content: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  // background: rgba(179, 179, 179, 0.82);
                                  // background-blend-mode: color-dodge;
                                  // background: rgba(56, 56, 56, 1);
                                    Container(
                                      width: MediaQuery.of(context).size.width,

                                      decoration: BoxDecoration(
                                        color: Color(0xffFAFAFA),
                                        borderRadius: BorderRadius.all(Radius.circular(14))
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 16.5,),
                                          Text(
                                            "프로필 사진 추가",
                                            style: TextStyle(
                                              color: Color(0xff007AFF),
                                              fontSize: 17
                                            ),
                                          ),
                                          SizedBox(height: 16.5,),
                                          Divider(
                                            height: 0,
                                          ),
                                          SizedBox(height: 16.5,),

                                          Text(
                                            "기본 이미지로 변경",
                                            style: TextStyle(
                                              color: Color(0xffAEAEB2),
                                              fontSize: 17
                                            ),
                                          ),
                                          SizedBox(height: 16.5,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 16.5, 0, 16.5),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFAFAFA),
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                      ),
                                      child: Center(
                                          child: Text(
                                            "취소",
                                            style: TextStyle(color: Color(0xff222222), fontSize: 17),
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                          );
                        }

                      ),
                    )
                  ),
                  // Positioned(
                  //   top: 67,
                  //   left: 64,
                  //   child: SvgPicture.asset('assets/icons/camera.svg'),
                  // )
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
              Text(
                "핸드폰 번호가 변경됐어요",
                style: TextStyle(
                  color: Color(0xffFF5B79),
                  fontSize: 14,
                ),
              ),
            ],
          ),


    ],
      ),
    );
  }
}
