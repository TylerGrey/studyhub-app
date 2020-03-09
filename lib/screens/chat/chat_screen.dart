import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Tyler',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              CupertinoIcons.ellipsis,
              color: Colors.black87,
            ),
            onPressed: () {
              // TODO: 신고하기
            },
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Some message',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding:
                                  EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                              width: 200.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange[300],
                                  borderRadius: BorderRadius.circular(8.0)),
                              margin:
                                  EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Some message',
                                style: TextStyle(color: Colors.black87),
                              ),
                              padding:
                                  EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                              width: 200.0,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8.0)),
                              margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        // Button send image
                        Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 1.0),
                            child: IconButton(
                              icon: Icon(Icons.camera),
//                              onPressed: getImage,
//                              color: primaryColor,
                            ),
                          ),
                          color: Colors.white,
                        ),
//                        Material(
//                          child: new Container(
//                            margin: new EdgeInsets.symmetric(horizontal: 1.0),
//                            child: new IconButton(
//                              icon: new Icon(Icons.face),
////                              onPressed: getSticker,
////                              color: primaryColor,
//                            ),
//                          ),
//                          color: Colors.white,
//                        ),

                        // Edit text
                        Flexible(
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 15.0),
//                              controller: textEditingController,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Type your message...',
                                hintStyle: TextStyle(color: Colors.grey[300]),
                              ),
//                              focusNode: focusNode,
                            ),
                          ),
                        ),

                        // Button send message
                        Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            child: IconButton(
                              icon: Icon(Icons.send),
//                              onPressed: () =>
//                                  onSendMessage(textEditingController.text, 0),
//                              color: primaryColor,
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.grey[300], width: 0.5)),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
