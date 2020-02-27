import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyhub/components/button/bouncedButton.dart';

class Bookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '북마크',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
//            SliverToBoxAdapter(
//              child: Container(
//                padding: EdgeInsets.all(20.0),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      '북마크 없음',
//                      style: TextStyle(
//                        fontSize: 22.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Container(
//                      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
//                      child: Text(
//                        '원하는 스터디를 찾고, 찜 해두세요.',
//                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
//                      ),
//                    ),
//                    FlatButton(
//                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: new BorderRadius.circular(7.0),
//                        side: BorderSide(color: Colors.orange),
//                      ),
//                      onPressed: () {},
//                      child: const Text(
//                        '스터디허브 둘러보기',
//                        style: TextStyle(
//                          fontSize: 20.0,
//                          color: Colors.orange,
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: BouncedButton(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5.0,
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 200.0,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Image.network(
                                            'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2650993A56E182A80F',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                          Container(
                                            color: Color(0x7f000000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '[홍대] 📣화목 15:00~18:00 GSAT 스터디 모집(인적성 합격자 있음)',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 16),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: SizedBox(
                                                  height: 10,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 4 / 5,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.orange),
                                                      backgroundColor:
                                                          Color(0xFFFFDAB8),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 10.0),
                                                child: Text(
                                                  '4',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Text(' / '),
                                              Text('5'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 190.0,
                                left: 20.0,
                                child: Container(
                                  color: Colors.grey,
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '모집중',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10.0,
                                right: 10.0,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                childCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
