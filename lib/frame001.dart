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
          home: Frame001(),
        );
      },
    );
  }
}

class Frame001 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_clock),
                          Text(
                            "28:30",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFF5288)),
                          ),
                          Text(
                            "후 새로운 츄징 오픈",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffFF8AAE)),
                          )
                        ],
                      ),
                      Text(
                        "스토리를\n선택해주세요.",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xffFF5288)),
                      ),
                      Text(
                        "작성한 스토리는 츄징이 마감되면 삭제됩니다.",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffFF8AAE)),
                      ),
                    ],
                  ),
                ),
                // SvgPicture.asset(
                //   'assets/icons/frame001_1.svg',
                //   width: 10,
                //   height: 10,
                // ),

              ],
            ),
          ),

          SizedBox(height: 14,),

          Container(
            height: 558,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff5AA5DB),
                            Color(0xffB9DCDE),
                          ]
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xff000000).withOpacity(.30),
                              ),
                              child: Text(
                                "3시간 남음",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "함께 눈사람\n만들고 싶은 사람",
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                              ),
                            )
                          ],
                        ),
                        //SvgPicture.asset("assets/images/snow.svg")
                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff4FAD5B),
                            Color(0xffCDFEC7),
                          ]
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xff000000).withOpacity(.30),
                              ),
                              child: Text(
                                "5시간 남음",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "크리스마스와\n잘 어울리는 사람",
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                              ),
                            )
                          ],
                        ),
                        //SvgPicture.asset("assets/images/snow.svg")
                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFFC41D),
                            Color(0xffFFFCE0),
                          ]
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 14, 0, 0),
                              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xff000000).withOpacity(.30),
                              ),
                              child: Text(
                                "6시간 남음",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "가장 순수하다고\n생각하는 사람",
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                              ),
                            )
                          ],
                        ),
                        //SvgPicture.asset("assets/images/snow.svg")
                      ],
                    ),
                  ),
                  Text("asdf\nasdf\nasdf\nasdf", style: TextStyle(fontSize: 30),)

                ],
              ),
            ),
          ),
        ],
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
