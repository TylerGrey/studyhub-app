import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Recruitment extends StatefulWidget {
  Recruitment({this.tag});

  final String tag;

  @override
  State createState() => RecruitmentState(tag: this.tag);
}

class RecruitmentState extends State<Recruitment> {
  RecruitmentState({this.tag});

  final String tag;
  ScrollController _scrollController;
  bool lastStatus = true;

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 200.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: isShrink ? Colors.black : Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: isShrink
                  ? Text(
                      '[홍대] 📣화목 15:00~...',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  : Text(''),
              background: Hero(
                tag: tag,
                child: Image.network(
                  'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2650993A56E182A80F',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '[홍대] 📣화목 15:00~18:00 GSAT 스터디 모집(인적성 합격자 있음)',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '스터디장',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars1.githubusercontent.com/u/29299163?s=460&v=4'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 7),
                                  child: Text(
                                    'Tyler Grey',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  '안녕하세요, 스터디 개설자 Tyler 입니다.\n사용자를 고려한 UI/UX에 관심이 많습니다.\n많은 참여 부탁드립니다.',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(7.0),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                      child:
                          const Text('메세지 보내기', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '스터디 소개',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                        '⚡장소\n홍대입구역 인근 스터디룸\n\n⚡시간\n화목 15:00 ~ 18:00\n\n⚡운영방식\n(1) 회비\n카톡 공동계좌 만들어서 디파짓 걷고 시작하겠습니다.\n\n(2) 커리큘럼\n▪️이론서 보지않고 바로 실전 시작합니다.\n▪️03.02 ~ 03.29 (4주) 주 2회\n▪️03.30 ~ 시험 (2 or 3 주) 주 3회 이상\n\n(3) 시간활용\n▪️15:00 ~ 16:00 숙제로 리뷰한것 풀이 공유\n▪️16:00 ~ 18:00 시간재고 문제풀기\n(리뷰와 문제풀이는 순서는 협의하여 결정)\n\n⚡구성원\n현재 전자2 화공1 있습니다. 문과/이과 골고루 뽑을예정입니다!!\n\n⚡규칙\n▪️요일, 시간 변경 없이 고정\n▪️Deposit 걷어서 공동 자금으로 운영(스터디룸 대여)\n▪️불가피한 불참 인정하지만 공동자금 돌려주진 않음\n▪️상식적인 선에서 벗어날 정도로 결석이 많으면 out\n▪️리뷰는 숙제!!'),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '상세 정보',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '모집 기간',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '2020. 02. 31 까지',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '모집 인원',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '최대 10명 / 선착순 마감',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '스터디 기간',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '2020. 03. 02 ~ 미정',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '스터디 시간',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '수요일 13:00 ~ 15:00',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    Text(
                                      '금요일 14:00 ~ 17:00',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '비용',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '회당 5천원',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '스터디 장소',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 20.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Text('홍대입구역 인근 스터디룸'),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          height: 200.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: GoogleMap(
                              mapType: MapType.normal,
                              initialCameraPosition: CameraPosition(
                                target: LatLng(37.497911, 127.0262719),
                                zoom: 15.0,
                              ),
                              myLocationButtonEnabled: false,
                              scrollGesturesEnabled: false,
                              circles: new Set.from([
                                Circle(
                                  circleId: CircleId('test'),
                                  center: LatLng(37.497911, 127.0262719),
                                  radius: 250.0,
                                  strokeWidth: 2,
                                  strokeColor: Colors.orange,
                                  fillColor: Color(0x90EB7B47),
                                ),
                              ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 70,
          padding: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {},
            color: Colors.orange,
            textColor: Colors.white,
            child: Text(
              '신청하기',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
