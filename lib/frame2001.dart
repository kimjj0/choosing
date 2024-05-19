

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const MyApp());
}

int screenIndex = 0;
List<Widget> screenList = [];

final List<String> missions = <String>[
  '오늘 츄징 1회 하기',
  '츄징 스토리 작성하기',
  '츄징 스토리 작성하기',
  '츄징 스토리 작성하기',
  '팔로우 10회 완료하기'
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 818),
      minTextAdapt: true,
      builder: (context, child){
        return MaterialApp(
          home: Frame2001(),
        );
      },
    );
  }


}

class Frame2001 extends StatelessWidget {
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
              SvgPicture.asset('assets/icons/back_arrow.svg', color: Color(0xff777777),),
              SizedBox(width: 10,),
              Text(
                "도전과제",
                style: TextStyle(
                  color: Color(0xff777777),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 90.h,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 50.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "완료",
                          style: TextStyle(
                            color: Color(0xffFF5B79),
                            fontSize: 32
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 47,
                  child: Container(
                    width: 294.w,
                    height: 16.h,
                    decoration: BoxDecoration(
                        color: Color(0xffFFCED7),
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),

                Positioned(
                  top: 53+16.h,
                  child: Text(
                    "도전과제 완료 시 힌트권이 지급됩니다.",
                    style: TextStyle(
                        color: Color(0xffDDDDDD),
                        fontSize: 14
                    ),
                  ),
                ),

                Positioned(
                  top: 15,
                  right: 0,
                  child: SvgPicture.asset('assets/icons/Star3.svg', color: Color(0xffFF5B79),),
                ),
              ],
            ),
          ),

          SizedBox(height: 18.h,),
          Container(
              width: 335.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xffFF5B79),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Center(
                child: Text(
                  '보상받기',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16
                  ),
                ),
              )
          ),
          SizedBox(height: 24.h,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 8.h,
            color: Color(0xffF3F3F3),
          ),
          SizedBox(height: 14.h,),
          Flexible(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xffFAFAFA),
                    ),
                    margin: EdgeInsets.only(bottom: 6),
                    width: 345.w,
                    height: 82.h,
                    padding: EdgeInsets.fromLTRB(14, 0, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            SvgPicture.asset('assets/icons/chipmunk.svg'),
                            // Icon(Icons.square, size: 50,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  missions[index],
                                  style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 16
                                  ),
                                ),
                                Text(
                                  '0/1',
                                  style: TextStyle(
                                      color: Color(0xff555555),
                                      fontSize: 14
                                  ),
                                )

                              ],
                            )
                          ],
                        ),
                        Text(
                          "미완료",
                          style: TextStyle(
                              color: Color(0xff777777),
                              fontSize: 16
                          ),

                        )
                      ],
                    ),
                  );
                }

            ),
          )
        ],
      ),

    );
  }
}