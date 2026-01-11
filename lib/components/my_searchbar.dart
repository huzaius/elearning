import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MySearchbar extends StatelessWidget {
  const MySearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width:0, style: BorderStyle.none),
                      ),

                      suffixIcon: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ), child: Icon(IconlyBold.search)),
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                    ),
                  );
  }
}