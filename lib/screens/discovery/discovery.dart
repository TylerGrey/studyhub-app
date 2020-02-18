import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:studyhub/components/button/bouncedButton.dart';

class Discovery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(15.0),
              child: Text(''),
            ),
            flexibleSpace: Container(
              height: 47,
              margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 1, color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    )
                  ]),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "'강남역'에서 스터디는 어떠세요?",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                Wrap(
                  alignment: WrapAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      child: Text(
                        'HyunKyu님, 무엇을 찾고 계신가요?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 170.0,
                      child: new ListView.separated(
                        separatorBuilder: (BuildContext context, _) {
                          return SizedBox(width: 5);
                        },
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, _) {
                          return BouncedButton(
                            child: Container(
                              width: 150.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Colors.white,
                                elevation: 5.0,
                                child: new Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                        child: Image.network(
                                          'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2650993A56E182A80F',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text('스터디'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}