import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}
void setState(Null Function() param0) {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 818),
        minTextAdapt: true,
        builder: (context,child) {
          return MaterialApp(
            theme: ThemeData(
                fontFamily: "AppleSDGothicNeo"
            ),
            home: MyHomepage(),
            debugShowCheckedModeBanner: false,);
        });
  }
}

final TextEditingController _nickNameController = TextEditingController();
@override
void dispose() {
  _nickNameController.dispose();
  dispose();
}

_handleButtonPress() {
  // no nickname
  if (_nickNameController.text.isEmpty) {
    return;
  }

  String newNickName = _nickNameController.text;
  _nickNameController.clear(); // Clear the text field
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/choosing.svg'),
                ],
              ),
              SizedBox(height: 23),
              Container(
                alignment: Alignment.topLeft,
                child: (Text('성별을 선택해주세요', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xff222222)
                ),)),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: (Text('"홍길동님 반갑습니다."', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xffFF5b79)
                ))),
              ),
              SizedBox(height: 129),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.62975,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffdddddd),
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                minimumSize: Size(160,46),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23),
                                )),
                            onPressed: () {},
                            child: Text(
                              '남성',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff)),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffdddddd),
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                minimumSize: Size(160,46),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23),
                                )),
                            onPressed: () {},
                            child: Text(
                              '여성',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('선택안함', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffdddddd)
                          ),),
                        ),
                        ValueListenableBuilder<TextEditingValue>(
                            valueListenable: _nickNameController,
                            builder: (context, value, child) {
                              return Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 40),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor: Color(0xffdddddd),
                                    backgroundColor: Color(0xffFF5b79),
                                    minimumSize: Size(335,50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: value.text.isNotEmpty
                                      ? _handleButtonPress : null,
                                  child: Text('다음',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color(0xffffffff)),
                                  ),
                                ),
                              );
                            }
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
