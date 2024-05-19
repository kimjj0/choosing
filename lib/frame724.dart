import 'package:choosing/BottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:choosing/BottomBar.dart';


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
          theme: ThemeData(fontFamily: "AppleSDGothicNeo"),
          debugShowCheckedModeBanner: false,
          home: Frame724(),
        );
      },
    );
  }
}

class Frame724 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
          onPressed:(){
            print('시ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ발');
          }
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "12시에 사라져요",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff222222)),
                      ),
                      SizedBox(height: 3,),
                      Container(
                        width: 200,
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text: "햄버거를 가장 많이 먹는 사람",
                              style: TextStyle(
                                color: Color(0xff222222),
                                fontWeight: FontWeight.w700,
                                fontSize: 32,
                              )
                          ),
                        ),
                      ),

                      Text(
                        "300",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 62, color: Color(0xffFF5B79), height: 1),
                      ),
                      Text(
                        "내가 받은 츄징",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xff999999), height: 1),
                      )
                    ],
                  ),
                  Image.asset('assets/images/Hamburger.png'),
                ],
              ),
            ),
            SizedBox(height: 6,),
            SvgPicture.asset('assets/icons/SwipeDot.svg'),
            SizedBox(height: 6,),
            Container(height: 8, color: Color(0xffF6F7F9),),
            SizedBox(height: 12,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "최근 항목",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff333333)),
                ),
                SizedBox(width: 4,),
                SvgPicture.asset('assets/icons/back_btn1.svg')
              ],
            ),
            SizedBox(height: 7,),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 61/82,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,

                children: List.generate(21, (index) => Container(
                  color: Color(0xff999999),
                  child: ((){
                    if(index == 0) {
                      return Container(
                        padding: EdgeInsets.fromLTRB(44, 69, 44, 69),
                        color: Color(0xff555555),
                        child: SvgPicture.asset("assets/images/frame002.svg", height: 5, width: 34),
                      );
                    }
                  })(),
                )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}