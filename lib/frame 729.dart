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
          home: Blocked_Users(),
        );
      },
    );
  }
}

class Blocked_Users extends StatelessWidget {
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
                "차단된 사용자",
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
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            SizedBox(height: 16,),

            Row(
              children: [
                Text(
                  "차단된 사용자 (0)",
                  style: TextStyle(color: Color(0xff333333),fontSize: 14, fontWeight: FontWeight.w500,),
                ),
              ],
            ),
            SizedBox(height: 24,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [

                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/img1.webp',
                              width: 62,
                              height: 62,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "홍길동",
                                style: TextStyle(color: Color(0xff333333),fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "asdf1234",
                                style: TextStyle(color: Color(0xff777777),fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "2024.03.06 차단됨",
                                style: TextStyle(color: Color(0xff777777), fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/frame554_1.svg',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
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