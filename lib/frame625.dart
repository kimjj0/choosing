import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//배경불투명미완성

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
          debugShowCheckedModeBanner: false,
          home: Frame625(),
        );
      },
    );
  }
}

class Frame625 extends StatefulWidget {
  const Frame625({Key? key}) : super(key: key);

  @override
  State<Frame625> createState() => _Frame005State();
}

class _Frame005State extends State<Frame625> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Image.asset(
                  'assets/images/frame003.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff000000).withOpacity(0.8), Color(0xff000000).withOpacity(0)]
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Color(0xff000000).withOpacity(0.8), Color(0xff000000).withOpacity(0)]
                    )
                ),
              ),
            ),
            Positioned(
                top: 58,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      color: Colors.white,
                    ),
                  ],
                )
            ),
            Positioned(
              top: 74,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.circle, color: Colors.white, size: 32,),
                      SizedBox(width: 8,),
                      Text(
                        "asdf1234",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset("assets/icons/frame625_1.svg")
                      ),
                      SizedBox(width: 14,),
                      Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset("assets/icons/frame625_2.svg")
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                ],

              ),
            ),
            Positioned(
              top:148,
              left:20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "12시에 사라져요",
                    style: TextStyle(color: Color(0xffABABAB), fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  Text(
                    "함께 눈사람 만들고 싶은 사람",
                    style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 260,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Flexible(
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 10,
                    text: TextSpan(
                      text: "김태현엉덩이방구계쏙나와 지려싿앙ㄷ기모띠",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: 439.h,
                padding: EdgeInsets.fromLTRB(20, 0, 23.5, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Container(
                      width: 31,
                      height: 2,
                      color: Color(0xff999999),
                    ),
                    SizedBox(height: 28,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "조회한 사람 100명",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff222222),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Color(0xffF6F7F9),
                    ),
                    SizedBox(height: 14,),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 8,
                        itemBuilder: (context, index){
                          return
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.circle, color: Color(0xffDDDDDD),size: 48,),
                                        SizedBox(width: 8,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "홍길동",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff222222),
                                                height: 1
                                              ),
                                            ),
                                            Text(
                                              "byeontae1010",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffABABAB)
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SvgPicture.asset('assets/icons/frame625_3.svg')
                                  ],
                                ),

                              );
                        },
                      ),
                    )

                  ],
                ),

              ),
            )
          ],
        ),
      ),

    );
  }
}
