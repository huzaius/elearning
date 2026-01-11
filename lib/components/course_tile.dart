import 'package:elearning/components/tag.dart';
import 'package:elearning/models/course.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  const CourseTile({super.key, required this.course});


  void selectedCourse(BuildContext context){
    Navigator.pushNamed(context, '/course_details_page',arguments: course.id);
  }
  @override
  Widget build(BuildContext context) {
    //Inkwell
    return InkWell(
      onTap: () => selectedCourse(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 8, right: 5),
              constraints: const BoxConstraints.expand(height: 150, width: 250),
              padding: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  //image
                  image: AssetImage(course.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 10,
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              //rating
                             course.rating,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              IconlyBold.star,
                              size: 15,
                              color: Colors.yellow[800],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: (course.isBookmarked)
                            ? const Icon(
                                IconlyBold.heart,
                                color: Colors.black,
                                size: 15,
                              )
                            : const Icon(
                                IconlyLight.heart,
                                color: Colors.black,
                                size: 15,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(course.courseTitle, style: TextStyle(fontSize: 16)),
            Text(
              course.instructor,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  course.price,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.yellow[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Tag(title: course.courseTag),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
