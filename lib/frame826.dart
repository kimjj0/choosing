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
          home: Frame826(),
        );
      },
    );
  }
}

class Frame826 extends StatefulWidget{
  @override
  State<Frame826> createState() => _Frame826State();
}

class _Frame826State extends State<Frame826> {


  @override
  Widget build(BuildContext context){
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
              top: 67,
              left: 20,
              child: Icon(Icons.arrow_back_ios, color: Colors.white,),
            ),
            Positioned(
              top:148,
              left:20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "함께 눈사람 만들고 싶은 사람",
                    style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                  Row(
                    children: [
                      Text(
                        "100명",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SvgPicture.asset("assets/icons/frame003_1.svg",)
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              right: MediaQuery.of(context).size.width/4,
              top: 270,
              child: Container(
                width: 220,
                child: TextField(
                  textAlign: TextAlign.center,
                  maxLines: null,
                  style: TextStyle(
                      color: Color(0xffDDDDDD),
                      fontSize: 24,
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '내용을 입력해주세요.',

                  ),
                  showCursor: false,
                ),
              ),
            ),
            Positioned(
              right: 27,
              top: 67,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '사진 변경하기',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              )
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 40,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFF5288)
                ),
                alignment: Alignment.center,

                child: Text(
                  '스토리에 공유하기',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

