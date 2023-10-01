

import 'package:application_ui/screens/course_screen.dart';
import 'package:application_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const CourseScreen())
                      );
                    },
                  child: Text(
                  'Master Class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                // Add more widgets here as needed
            ),],
            ),
            const SizedBox(height: 22,),
            SizedBox(height: 349,
            child:ListView.builder(scrollDirection: Axis.horizontal,physics: const BouncingScrollPhysics(),itemBuilder: (context, index){ return const Horizontal(startColor: 0xFF9288E4,
            endColor: 0xFF534EA7, courseHeadLine: 'Recommended', courseTitle: 'UI/UX DESIGNER\nBEGINNER', courseImages: 'computer.png', );}) ,),
            const SizedBox(height: 34),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'free online class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'from over 80 lectures',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9c9A9A),
                    fontSize: 36,
                  ),
                ),
                // Add more widgets here as needed
              ],
            ),
            ListView.builder
               (itemCount: 5,
              shrinkWrap: true, 
              itemBuilder: (context, index){
                return const Vertical(
                  courseImages: '1.jpg',
                  courseTitle: 'Flutter developer',
                  courseDuration: '8 Hourse',
                  courseRating: 3.0
                );
                })
          ],
        ),
      ),
    );
  }
}