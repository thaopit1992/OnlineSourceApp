import 'package:B3_OnlineCourceApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: Padding(
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
                  padding:
                      EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 20),
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
                        decoration: TextDecoration.lineThrough, // gach ngang
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
