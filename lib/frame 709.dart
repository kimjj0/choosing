import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

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
        /**resizeToAvoidBottomInset : false,
          appBar: AppBar(
          title: Container(
          child: Row(
          children: [
          Flexible(child:
          SizedBox(
          height: 4,
          width: 50,
          child: DecoratedBox(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Color(0xffFF5288)
          ),
          ),
          ))
          ],
          ),
          height: 4,
          width: double.infinity,
          color: Color(0xffdddddd),
          ),
          ),**/
        body: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(children: [
              SizedBox(
                height: 103,
              ),
              SizedBox(
                child: Container(
                    alignment: Alignment.topLeft,
                    child: (Text('질문이 도착하면',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: Color(0xff333333))))),
              ),
              SizedBox(
                  child: Container(
                alignment: Alignment.topLeft,
                child: (Text(
                  '알림을 받으시겠습니까?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xff333333),
                  ),
                )),
              )),
              SizedBox(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: (Text('질문이 도착하면 빠르게 츄징을 보낼 수 있어요!',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffababab)))),
                ),
              ),
              SizedBox(
                height: 94,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.608,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Lottie.asset(
                        alignment: Alignment.center,
                        width: 200,
                        height: 200,
                        'assets/lotties/Bell_animated.json'),
                    Column(
                      children: [
                        Container(
                          margin: (EdgeInsets.only(bottom: 10)),
                          child: Text(
                            '건너뛰기',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffdddddd)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 40),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffff5b79),
                              minimumSize: Size(335, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              '푸쉬 알람 허용',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}
