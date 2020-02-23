import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recruitment extends StatelessWidget {
  Recruitment({this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          InkWell(
            child: Hero(
              tag: tag,
              child: Image.network(
                'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2650993A56E182A80F',
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Text('TESTESTSETSETSETSETSTESETSET\ntestsetset')
        ],
      ),
    );
  }
}
