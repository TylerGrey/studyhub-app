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
          SliverToBoxAdapter(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'HyunKyu님, 무엇을 찾고 계신가요?',
                    style: TextStyle(
                      fontSize: 22,
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
          ),
          SliverToBoxAdapter(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
                  child: Text(
                    '계속 둘러보기',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 160.0,
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
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: new Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(Icons.search),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          '단원구, 안산시',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('스터디',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Wrap(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '마감 임박! 토익 스터디',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                            child: Text(
                              '곧 스터디가 마감됩니다! 스터디의 마지막 멤버가 되어보세요.',
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.2,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 25,
                      childAspectRatio: 0.85,
                      scrollDirection: Axis.vertical,
                      children: List.generate(4, (index) {
                        return BouncedButton(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.network(
                                    'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2650993A56E182A80F',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '단원구, 안산시',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.deepOrange,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 30),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(7.0),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                      child:
                          const Text('모두 보기', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
            ),
          )
        ],
      ),
    );
  }
}
