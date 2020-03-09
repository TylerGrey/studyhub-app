import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hub extends StatefulWidget {
  @override
  State<Hub> createState() => MapSampleState();
}

class MapSampleState extends State<Hub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.497911, 127.0262719),
              zoom: 14.4746,
            ),
            myLocationButtonEnabled: false,
            markers: Set.from(
              [
                Marker(
                    markerId: MarkerId('test'),
                    position: LatLng(37.497911, 127.0262719),
                    alpha: 1.0),
                Marker(
                    markerId: MarkerId('test'),
                    position: LatLng(37.508911, 127.0262719),
                    alpha: 0.5),
              ],
            ),
          ),
          Positioned(
            top: 40.0,
            left: 15.0,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 100.0),
              height: 30.0,
              width: 150.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.orange, Colors.deepOrange],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.5,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      '이 지역 다시 검색하기',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 60.0),
              height: 100.0,
              child: Swiper(
                loop: false,
                viewportFraction: 0.85,
                scale: 0.9,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: double.infinity,
                          width: 100.0,
                          padding: EdgeInsets.all(7.0),
                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(7.0),
//                              bottomLeft: Radius.circular(7.0),
//                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                            child: Image.network(
                              'https://www.logoworks.com/blog/wp-content/uploads/2017/06/Untitled-2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('카페'),
                                Expanded(
                                  child: Text(
                                    '스타벅스 강남역점',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 17.0,
                                    ),
                                    Text('4.0')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                onIndexChanged: (index) {
                  //TODO: map pin highlight
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
