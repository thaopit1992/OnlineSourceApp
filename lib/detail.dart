import 'package:B3_OnlineCourceApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
              image: AssetImage("assets/images/ux_big.png"),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/arrow-left.svg"),
                      SvgPicture.asset("assets/icons/more-vertical.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipPath(
                    clipper: BestSellerClipper(), // ve hinh tam giac can
                    child: Container(
                      color: kBestSellerColor,
                      padding: EdgeInsets.only(
                          top: 5, left: 10, bottom: 5, right: 20),
                      child: Text(
                        "BestSeller".toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Design Thinking",
                    style: kHeadingextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/person.svg"),
                      SizedBox(
                        width: 5,
                      ),
                      Text("18K"),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("assets/icons/star.svg"),
                      Text("4.8"),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "\$50",
                            style: kHeadingextStyle.copyWith(fontSize: 32)),
                        TextSpan(
                          text: "\$70",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration:
                                TextDecoration.lineThrough, // gach ngang
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Cource Content",
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CourceContent(
                            number: "01",
                            duaration: 5.35,
                            title: "Wellcome to Cource",
                            isDone: true,
                          ),
                          CourceContent(
                            number: '02',
                            duaration: 19.04,
                            title: "Design Thinking - Intro",
                            isDone: true,
                          ),
                          CourceContent(
                            number: '03',
                            duaration: 15.35,
                            title: "Design Thinking Process",
                          ),
                          CourceContent(
                            number: '04',
                            duaration: 5.35,
                            title: "Customer Perspective",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 50, // đổ bóng màu đen button,
                                  color: kTextColor.withOpacity(0.3))
                            ]),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(14),
                              height: 56,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFEDEE),
                                  borderRadius: BorderRadius.circular(40)),
                              child: SvgPicture.asset(
                                  "assets/icons/shopping-bag.svg"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: kBlueColor),
                                child: Text("Buy Now", style: kSubtitleTextSyule.copyWith(
                                  color:  Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourceContent extends StatelessWidget {
  final String number;
  final double duaration;
  final String title;
  final bool isDone;

  const CourceContent({
    Key key,
    this.number,
    this.duaration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(0.15),
              fontSize: 32,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duaration mins \n ",
                  style: TextStyle(
                      color: kTextColor.withOpacity(0.5), fontSize: 18),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextSyule.copyWith(
                      fontWeight: FontWeight.w600, height: 1.5),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreenColor.withOpacity(isDone ? 1 : 0.5)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
