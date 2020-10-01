import 'package:B3_OnlineCourceApp/constants.dart';
import 'package:B3_OnlineCourceApp/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Cource',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Container(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // dinh dang ben trai sang phai
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/menu.svg"),
                  Image.asset("assets/images/user.png")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Hey Thao Pham",
                style: kHeadingextStyle,
              ),
              Text(
                "Find a course you want to learn",
                style: kSubheadingextStyle,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/search.svg"),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Search for anything",
                      style: TextStyle(fontSize: 18, color: Color(0xFFA0A5BD)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Category", style: kTitleTextStyle),
                  Text(
                    "See All",
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(0),
                    itemCount: categories.length,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2, // 2 cột
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        height: index.isEven ? 200 : 248,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage(categories[index].image),
                              fit: BoxFit.fill), // full anh ra kich thuoc
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              categories[index].name,
                              style: kTitleTextStyle,
                            ),
                            Text(
                              '${categories[index].numOfCourses} Courses',
                              style:
                                  TextStyle(color: kTextColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
