import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_rich_text/easy_rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 1600),
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBar(
          titleSpacing: 20,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                  width: 129.13, height: 28.77, 'assets/icons/choosing.svg'),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Text(
                      '문의/제안',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffdddddd)),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 40,
                      // desired size
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      style: ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: SvgPicture.asset('assets/icons/alram on.svg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 14),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(color: Colors.white),
              height: 209,
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          EasyRichText(
                            '12시에 사라져요\n차별없이 사람을\n대하는 사람\n300\n내가 받은 츄징',
                            patternList: [
                              EasyRichTextPattern(
                                  targetString: '12시에 사라져요',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff666666))),
                              EasyRichTextPattern(
                                  targetString: '차별없이 사람을\n대하는 사람',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff222222))),
                              EasyRichTextPattern(
                                  targetString: '300',
                                  style: TextStyle(
                                      height: 1.2,
                                      letterSpacing: -4,
                                      fontSize: 62,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffff5b79))),
                              EasyRichTextPattern(
                                  targetString: '내가 받은 츄징',
                                  style: TextStyle(
                                      fontSize: 18,
                                      height: 0.5,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff666666))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Transform.scale(
                      scale: 2.3,
                      child: Transform.translate(
                        offset: Offset(50, 0),
                        child: SvgPicture.asset(
                          'assets/icons/burger.svg',
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: SvgPicture.asset('assets/icons/Group 1424.svg')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 14, 0, 14),
                  height: 22,
                  child: Text('내 츄징 현황',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff222222),
                      )),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 36,
                      child: SvgPicture.asset('assets/icons/rectangle.svg'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 14, 20, 0),
              height: 46,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Group 1005.svg'),
                      Container(
                        margin: EdgeInsets.only(left: 6),
                        child: EasyRichText(
                          '28:30 후 새로운 츄징 오픈',
                          patternList: [
                            EasyRichTextPattern(
                                targetString: '28:30',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffababab))),
                            EasyRichTextPattern(
                                targetString: '후 새로운 츄징 오픈',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffababab))),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/btn.svg')
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 24, 0, 12),
                  child: Column(
                    children: [
                      EasyRichText(
                        '츄징 스토리\n진행중인 츄징의 스토리를 확인해보세요.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '츄징 스토리',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff222222),
                              )),
                          EasyRichTextPattern(
                              targetString: '진행중인 츄징의 스토리를 확인해보세요',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff666666),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    elevation: 0,
                    margin: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 124,
                      height: 178,
                      decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 29),
                            child: Image.asset('assets/images/Ellipse 40.png',
                              width: 58,
                              height: 58,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Text(
                              '츄징 어필하기',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    elevation: 0,
                    margin: EdgeInsets.only(left: 6),
                    child: Container(
                      width: 124,
                      height: 178,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Rectangle 107.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: 58,
                              height: 58,
                              margin: EdgeInsets.only(bottom: 6),
                              child:
                                  Image.asset('assets/images/Ellipse 40.png')),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Text(
                              '홍길동',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    elevation: 0,
                    margin: EdgeInsets.only(left: 6),
                    child: Container(
                      width: 124,
                      height: 178,
                      decoration: BoxDecoration(
                        color: Color(0xff555555),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '아직 스토리가\n없습니다.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffffffff),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 14),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
                )),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 24, 0, 12),
                  child: Column(
                    children: [
                      EasyRichText(
                        '오늘의 도전과제\n도전과제를 달성하고 추가 보상을 받으세요.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '오늘의 도전과제',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff222222),
                              )),
                          EasyRichTextPattern(
                              targetString: '도전과제를 달성하고 추가 보상을 받으세요.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff666666),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color(0xffFAFAFA),),
              width: double.infinity,
              height: 82,
              padding: EdgeInsets.fromLTRB(14, 0, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                          width: 42,
                          height: 42,
                          child: SvgPicture.asset('assets/icons/circle.svg')),
                      // Icon(Icons.square, size: 50,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '오늘 츄징 1회 하기',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                                color: Color(0xff222222),
                                fontSize: 16
                            ),
                          ),
                          Text(
                            '0/1',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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
                      fontWeight: FontWeight.w700,
                        color: Color(0xff777777),
                        fontSize: 16
                    ),

                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 28),
              padding: EdgeInsets.fromLTRB(20, 27, 62, 27),
              width: double.infinity,
              height: 97,
              color: Color(0xffdddddd),
              child: EasyRichText(
                '초대하고 혜택받기!\n츄징 코인을 사용하여 익명 투표의 힌트를 확인하세요!',
                patternList: [
                  EasyRichTextPattern(
                      targetString: '초대하고 혜택받기!',
                      style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff493E28),
                      )),
                  EasyRichTextPattern(
                      targetString: '츄징 코인을 사용하여 익명 투표의 힌트를 확인하세요!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff7D6D4E),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 38, 0, 14),
                  height: 24,
                  child: Text('츄징 랭킹',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff333333),
                      )),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 14),
                        height: 44,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 4),
                              child: SvgPicture.asset(
                                'assets/icons/rectangle.svg',
                                width: 44,
                                height: 44,
                              ),
                            ),
                            EasyRichText(
                              '홍길동\nbyeontae1010',
                              patternList: [
                                EasyRichTextPattern(
                                    targetString: '홍길동',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff222222),
                                    )),
                                EasyRichTextPattern(
                                    targetString: 'byeontae1010',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff666666),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 14),
                        height: 44,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 4),
                              child: SvgPicture.asset(
                                'assets/icons/rectangle.svg',
                                width: 44,
                                height: 44,
                              ),
                            ),
                            EasyRichText(
                              '홍길동\nbyeontae1010',
                              patternList: [
                                EasyRichTextPattern(
                                    targetString: '홍길동',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff222222),
                                    )),
                                EasyRichTextPattern(
                                    targetString: 'byeontae1010',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff666666),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 14),
                        height: 44,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 4),
                              child: SvgPicture.asset(
                                'assets/icons/rectangle.svg',
                                width: 44,
                                height: 44,
                              ),
                            ),
                            EasyRichText(
                              '홍길동\nbyeontae1010',
                              patternList: [
                                EasyRichTextPattern(
                                    targetString: '홍길동',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff222222),
                                    )),
                                EasyRichTextPattern(
                                    targetString: 'byeontae1010',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff666666),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                          SizedBox(
                            child: SvgPicture.asset('assets/icons/1.8k.svg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Group 1005.svg'),
                      Container(
                          margin: EdgeInsets.only(left: 6),
                          child: Text(
                            '오늘 마감된 츄징을 확인해보세요.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff999999)),
                          )),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/btn.svg')
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 38, 0, 14),
                  height: 24,
                  child: Text('회원님을 위한 추천',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xff222222),
                      )),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      side: BorderSide(width: 1, color: Color(0xffdddddd)),
                    ),
                    elevation: 0,
                    margin: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 110,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 14),
                            child: SvgPicture.asset(
                              'assets/icons/rectangle.svg',
                              width: 68,
                              height: 68,
                            ),
                          ),
                          Text(
                            '김점수',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff222222)),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFF5b79),
                                minimumSize: Size(86, 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: Text(
                              '팔로우',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff)),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 24, 20, 0),
              height: 114,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset('assets/icons/rectangle.svg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset('assets/icons/rectangle.svg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset('assets/icons/rectangle.svg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset('assets/icons/rectangle.svg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 28,
                        height: 28,
                        child: SvgPicture.asset('assets/icons/rectangle.svg'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      EasyRichText(
                        '실명 공개권 구매하기\n누가 당신을 츄징했는지 확인해보세요.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '실명 공개권 구매하기',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff666666),
                              )),
                          EasyRichTextPattern(
                              targetString: '누가 당신을 츄징했는지 확인해보세요.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffababab),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 24, 20, 0),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      EasyRichText(
                        '고객센터\n신고 문의사항을 위해 모니터링 하고 있습니다.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '고객센터',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff666666),
                              )),
                          EasyRichTextPattern(
                              targetString: '신고 문의사항을 위해 모니터링 하고 있습니다.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffababab),
                              )),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/pen.svg')
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      EasyRichText(
                        '츄징 알아보기\n츄징 랜딩페이지로 이동합니다.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '츄징 알아보기',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff666666),
                              )),
                          EasyRichTextPattern(
                              targetString: '츄징 랜딩페이지로 이동합니다.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffababab),
                              )),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/pen.svg')
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      EasyRichText(
                        '개인정보처리방침\n츄징 랜딩페이지로 이동합니다.',
                        patternList: [
                          EasyRichTextPattern(
                              targetString: '개인정보처리방침',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff666666),
                              )),
                          EasyRichTextPattern(
                              targetString: '츄징 랜딩페이지로 이동합니다.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffababab),
                              )),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/pen.svg')
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 8, color: Color(0xfff6f7f9))),
            )),
            SizedBox(height: 52),
            Container(
                height: 103,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons/choosing black.svg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ⒸChoosing.All rights reserved.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffababab)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 127,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('assets/icons/facebook.svg'),
                              SvgPicture.asset('assets/icons/instagram.svg'),
                              SvgPicture.asset('assets/icons/youtube.svg'),
                              SvgPicture.asset('assets/icons/naver.svg'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            SizedBox(height: 83),
          ],
        ),
      ),
    );
  }
}
