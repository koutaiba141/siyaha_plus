// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';

class SuggestedProfilePage extends StatelessWidget {
  const SuggestedProfilePage({super.key});
  final double SizedBoxHeight = 20;
  final double SizedBoxWidth = 20;
  final double SVGHeight = 40;
  final double SVGWidth = 40;
  final double IconSize = 40;
  final double FontSize = 20;
  final double BigIcon = 80;
  @override
  Widget build(BuildContext context) {
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
                        height: SizedBoxHeight * 2,
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

                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.grey,
                              minimumSize: Size.fromHeight(50)),
                          onPressed: () {
                            Get.toNamed(AppRoute.SuggestedUpdateInfoPage);
                          },
                          child: Text(
                            "Update information",
                            style: TextStyle(
                                color: Colors.white, fontSize: FontSize),
                          )),
                    ])))));
  }
}
