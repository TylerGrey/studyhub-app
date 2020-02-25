import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: true,
            floating: true,
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: () {},
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '스터디',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Colors.white,
                        elevation: 5.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
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
                    ),
                    Container(
                      child: index < 2
                          ? SizedBox(height: 10,)
                          : null,
                    ),
                  ],
                ),
              ),
              childCount: 3,
            ),
          ),
//          SliverToBoxAdapter(
//            child: Container(
//                padding: EdgeInsets.all(20.0),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      '스터디 없음',
//                      style: TextStyle(
//                        fontSize: 22.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Container(
//                      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
//                      child: Text(
//                        '원하는 스터디를 직접 만들어보세요.',
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
//                        '스터디원 모집하기',
//                        style: TextStyle(
//                          fontSize: 20.0,
//                          color: Colors.orange,
//                        ),
//                      ),
//                    ),
//                  ],
//                )),
//          ),
        ],
      ),
    );
  }
}
