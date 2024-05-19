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
          home: Friends_Setting(),
        );
      },
    );
  }
}

class Friends_Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context){
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
                "자주 묻는 질문",
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
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFAFAFA),
                ),
                padding: EdgeInsets.fromLTRB(12, 13, 12, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 17,),
                        SvgPicture.asset(
                          'assets/icons/frame556_1.svg',
                        ),
                        SizedBox(width: 9),
                        Text("문의하기", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SvgPicture.asset('assets/icons/arrow2.svg'),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffFAFAFA),
                ),
                padding: EdgeInsets.fromLTRB(12, 13, 12, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 17,),
                        SvgPicture.asset(
                          'assets/icons/frame556_2.svg',
                        ),
                        SizedBox(width: 9),
                        Text("자주 묻는 질문", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SvgPicture.asset('assets/icons/arrow2.svg'),
                  ],
                ),
              ),

            ],
          ),
        ),
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