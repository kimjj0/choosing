import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          debugShowCheckedModeBanner: false,
          home: Frame831(),
        );
      },
    );
  }
}

class Frame831 extends StatefulWidget {
  const Frame831({Key? key}) : super(key: key);

  @override
  State<Frame831> createState() => _Frame005State();
}

class _Frame005State extends State<Frame831> {
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
                      SizedBox(width: 4,),
                      Text(
                        "3시간",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                            onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/as.svg"),
                            padding: EdgeInsets.zero)
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: IconButton(
                              onPressed: (){},
                              icon: SvgPicture.asset("assets/icons/frame625_2.svg"),
                              padding: EdgeInsets.zero)
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                ],

              ),
            ),
            Positioned(
              top: 148,
              left: 20,
              child: Text(
                "12시에 사라져요",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
              ),
            ),
            Positioned(
              top:170,
              left:20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "함께 눈사람 만들고 싶은 사람",
                    style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 320,
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
                      text: "나는 의자에 앉아 응가를 하곤 합니다. 응가가 잘 안나올 땐 똥꾸멍을 손가락으로 자극해주곤 합니다. 나는 일원사는 양지원입니다. 이태수 엉덩이를 양지원이 쪽쪽",
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
              bottom: 38,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 50,
                width: 100,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/frame626_1.svg'),
                    SizedBox(width: 12,),
                    Text(
                      "100명의 사용자가 조회하였습니다.",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    ),
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
