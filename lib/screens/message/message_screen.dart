import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyhub/screens/chat/chat_screen.dart';

class Notice extends StatelessWidget {
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
                  icon: Icon(Icons.notifications),
                  color: Colors.black45,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '메시지',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 60.0,
                            height: 60.0,
                            margin: EdgeInsets.only(right: 15.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://avatars1.githubusercontent.com/u/29299163?s=460&v=4'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Tyler',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              '5',
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '2020년 02월 28일',
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 13.0,
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      '안녕하세요, 스터디 장입니다.',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black54,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: index < 2
                          ? Divider(
                              height: 1,
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            )
                          : null,
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Chat();
                    }),
                  );
                },
              ),
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
