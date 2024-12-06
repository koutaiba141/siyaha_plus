// ignore_for_file: non_constant_identifier_names, file_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class SuggestedUserProfilePage extends StatefulWidget {
  const SuggestedUserProfilePage({super.key});

  @override
  SuggestedUserProfilePageState createState() =>
      SuggestedUserProfilePageState();
}

class SuggestedUserProfilePageState extends State<SuggestedUserProfilePage> {
  bool _isFavorite = false; // State variable to track favorite status

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    final double SizedBoxHeight = ScreenHeight * 0.03;
    final double SizedBoxWidth = ScreenWidth * 0.03;
    final double SVGHeight = ScreenHeight * 0.07;
    final double SVGWidth = ScreenWidth * 0.07;
    final double IconSize = ScreenHeight * 0.07;
    final double FontSize = ScreenWidth * 0.05;
    final double BigIcon = ScreenWidth * 0.2;
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      // Profile picture
                      ClipOval(
                        child: SvgPicture.asset(
                          'images/ProfileImage.svg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Suggested name
                      const Text(
                        "Suggested name",
                        style: TextStyle(
                            fontFamily: "Caveat",
                            color: Colors.blue,
                            fontSize: 40),
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      //Description
                      const Text(
                        "We offer personalized travel experiences and unforgettable adventures, showcasing top destinations worldwide",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Like and comment
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Like
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoute.SuggestedLikePage);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue),
                                  child: FittedBox(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.thumb_up,
                                        color: Colors.white,
                                        size: BigIcon,
                                      ),
                                      Text("100",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: FontSize))
                                    ],
                                  )))),
                          SizedBox(width: SizedBoxWidth),
                          // Comments
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoute.SuggestedCommentPage);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue),
                                  child: FittedBox(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                        Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                          size: BigIcon,
                                        ),
                                        Text("40",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: FontSize))
                                      ]))))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Email
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            size: IconSize,
                            color: Colors.red,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("malek.alnahhas.2002@gmail.com",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Phone number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.green,
                            size: IconSize,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("+9611648327",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Facebook
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/Facebook.svg",
                            height: SVGHeight,
                            width: SVGWidth,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("Facebook link",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Instagram
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/Instagram.svg",
                            height: SVGHeight,
                            width: SVGWidth,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("Instagram link",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Tiktok
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/Tiktok.svg",
                            height: SVGHeight,
                            width: SVGWidth,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("Tiktok link",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      // Youtube
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/Youtube.svg",
                            height: SVGHeight,
                            width: SVGWidth,
                          ),
                          SizedBox(width: SizedBoxWidth),
                          Expanded(
                              child: Text("Youtube link",
                                  style: TextStyle(
                                    fontSize: FontSize,
                                    overflow: TextOverflow.ellipsis,
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHeight,
                      ),
                      //comment and like
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                labelText: 'what is your feedback?',
                                labelStyle: const TextStyle(fontSize: 16),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: IconButton(
                                    icon: const Icon(Icons.send,
                                        color: Colors.blue),
                                    onPressed: () {},
                                  ),
                                ),
                              )),
                            ),
                            IconButton(
                              icon: Icon(
                                _isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: _isFavorite ? Colors.red : Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isFavorite = !_isFavorite;
                                });
                              },
                            ),
                          ])
                    ])))));
  }
}
