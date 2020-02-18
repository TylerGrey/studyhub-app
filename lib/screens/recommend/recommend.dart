import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '추천',
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Card(
                    color: Colors.green,
                    margin: EdgeInsets.all(20),
                    elevation: 10.0,
                    child: Container(
                      height: 130,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            '근처 카페',
                            textAlign: TextAlign.center,
                          )),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(
                          'OO님, 이런 스터디 어떠세요?',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              child: Card(
                                color: Colors.green,
                                margin: EdgeInsets.all(10),
                                elevation: 10.0,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        '스터디 1',
                                        textAlign: TextAlign.center,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Card(
                                color: Colors.green,
                                margin: EdgeInsets.all(10),
                                elevation: 10.0,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        '스터디 1',
                                        textAlign: TextAlign.center,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              child: Card(
                                color: Colors.green,
                                margin: EdgeInsets.all(10),
                                elevation: 10.0,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        '스터디 1',
                                        textAlign: TextAlign.center,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
