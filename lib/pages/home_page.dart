import 'package:elearning/components/category_icon.dart';
import 'package:elearning/components/course_tile.dart';
import 'package:elearning/components/header_text_field.dart';
import 'package:elearning/components/my_searchbar.dart';
import 'package:elearning/components/tag.dart';
import 'package:elearning/data/category_data.dart';
import 'package:elearning/data/course_data.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      //Search Bar
                      MySearchbar(),
                      HeaderTextField(text: 'Popular Courses'),
                      SizedBox(height: 10),

                      //Course category slides
                      categorySlider(),

                      HeaderTextField(
                        text: 'Course For You',
                        child: Tag(title: 'Your Topics'),
                      ),

                      //Course view
                      courseSlider(),

                      HeaderTextField(text: 'Trending Courses'),
                      SizedBox(height: 10),
                      courseSlider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: myButtomNavBar(),
    );
  }

  SizedBox courseSlider() {
    return SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemCount: coursesData.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CourseTile(course: coursesData[index]);
                        },
                      ),
                    );
  }

  Container categorySlider() {
    return Container(
      color: Colors.grey[300],
      height: 100,
      child: ListView.builder(
        itemCount: categoryData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CategoryIcon(category: categoryData[index]);
        },
      ),
    );
  }

  BottomNavigationBar myButtomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(IconlyBold.play), label: "Course"),
        BottomNavigationBarItem(icon: Icon(IconlyBold.buy), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(IconlyBold.bookmark),
          label: "My Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyBold.profile),
          label: "Profile",
        ),
      ],
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Gynak',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Learn Something New Today',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.topRight,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Icon(IconlyBold.notification, size: 26),
                    ),
                    Positioned(
                      right: 8,
                      top: 0,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
