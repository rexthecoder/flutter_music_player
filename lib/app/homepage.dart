import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/component/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _select;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white12));
    return Scaffold(
      backgroundColor: AppColor.ksubMainColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   toolbarHeight: 100.0,
      //   shadowColor: Colors.grey,
      //   elevation: 50.0,
      //   title: Column(
      //     children: [
      //       Container(
      //         alignment: Alignment.topLeft,
      //         child: Text(
      //           "The very best of mine",
      //           style: TextStyle(fontSize: 17, color: Colors.white),
      //         ),
      //       ),
      //       Container(
      //         alignment: Alignment.topLeft,
      //         child: Text("Miles Dive",
      //             style: TextStyle(fontSize: 15, color: Colors.grey)),
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         Container(
      //           height: 50,
      //           width: 50,
      //           decoration: BoxDecoration(
      //               color: Color(0xff3E3122),
      //               borderRadius: BorderRadius.circular(50)),
      //         ),
      //         Container(
      //           height: 40,
      //           width: 40,
      //           decoration: BoxDecoration(
      //               color: Color(0xffC49058),
      //               borderRadius: BorderRadius.circular(50)),
      //         ),
      //         Container(
      //           child: _select == false
      //               ? GestureDetector(
      //                   onTap: () {
      //                     print("tap");
      //                     setState(() {
      //                       _select = true;
      //                     });
      //                   },
      //                   child: Icon(
      //                     Icons.pause,
      //                     color: AppColor.kmainColor,
      //                   ),
      //                 )
      //               : GestureDetector(
      //                   onTap: () {
      //                     print("tap2");
      //                     setState(() {
      //                       _select = false;
      //                     });
      //                   },
      //                   child: Icon(
      //                     Icons.play_arrow,
      //                     color: AppColor.kmainColor,
      //                   ),
      //                 ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  //     height: 100.0,
                  //     alignment: Alignment.center,
                  //     decoration:
                  //         BoxDecoration(color: Colors.black, boxShadow: [
                  //       BoxShadow(
                  //           spreadRadius: 1,
                  //           offset: Offset(1, 2),
                  //           // color: Colors.black,
                  //           blurRadius: 1),
                  //              BoxShadow(
                  //           spreadRadius: 1,
                  //           offset: Offset(1, 2),
                  //           // color: Colors.black,
                  //           blurRadius: 1),
                  //              BoxShadow(
                  //           spreadRadius: 1,
                  //           offset: Offset(2, 2),
                  //           // color: Colors.black,
                  //           blurRadius: 1)
                  //     ])),
                  Container(
                    height: 100.0,
                    margin: EdgeInsets.all(0),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.5, 2.5),
                        )
                      ],
                    ),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "The very best of mine",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Miles Dive",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                        ],
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Stack(
                          alignment: Alignment.center,
                          fit: StackFit.loose,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff3E3122),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffC49058),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              child: _select == false
                                  ? GestureDetector(
                                      onTap: () {
                                        print("tap");

                                        setState(() {
                                          _select = true;
                                        });
                                      },
                                      child: Icon(
                                        Icons.pause,
                                        color: AppColor.kmainColor,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        print("tap2");

                                        setState(() {
                                          _select = false;
                                        });
                                      },
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: AppColor.kmainColor,
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("About",
                            style: TextStyle(
                                fontSize: 14, color: Colors.white60))),
                    Container(
                        child: Text("Playlist",
                            style: TextStyle(
                                fontSize: 14, color: Colors.white60))),
                    Container(
                        child: Text("Biography",
                            style: TextStyle(
                                fontSize: 14, color: Colors.white60))),
                    Container(
                        child: Text("Watch",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white60)))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 1),

                      color: Colors.blueGrey,

                      // spreadRadius: 2
                    )
                  ],

                  // borderRadius: BorderRadius.circular(50),

                  color: Colors.grey,
                ),
                height: 1.5,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: 115,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(60)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProfileAvatar(
                          'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                          // 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWtMDksH9GzFdMinyAkGbtLJNx6xynLETTNN5akjxirL3QD5Rj',
                          errorWidget: (context, url, error) => Container(
                            child: Icon(Icons.error),
                          ),
                          placeHolder: (context, url) => Container(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(),
                          ),
                          radius: 55,
                          elevation: 10.0,
                          onTap: () {
                            print('adil');
                          },
                          cacheImage: true,
                          showInitialTextAbovePicture: false,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: AppColor.ksubMainColor,
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // alignment: Alignment.,
                          child: Text(
                            "The very best of mine",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text("Miles Dive",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
