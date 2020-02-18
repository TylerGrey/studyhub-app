import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {


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
                '계정',
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          SliverFillRemaining(
            child: SizedBox(
              child: FlutterLogo(colors: Colors.orange),
            ),
          )
        ],
      ),
    );
  }
}