import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Horizontal extends StatelessWidget{
  const Horizontal ({Key? key, 
                    required this.startColor,
                    required this.endColor,
                    required this.courseHeadLine,
                    required this.courseTitle,
                    required this.courseImages}) :super(key: key);

  final int startColor, endColor;
  final String courseHeadLine, courseTitle, courseImages;

  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.only(
      right: 26
    ),
    child: Container(width:246, height:349, decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), gradient: LinearGradient(begin: Alignment.topLeft,
                                                                                                                                        end: const Alignment(1, 0.0),
    colors: <Color>[Color(startColor), Color(endColor),]                                                                                                                                    ) ),
    child: Stack(children: [
      Positioned(top:15,left: 11,child: Container(padding: const EdgeInsets.all(10),
        height: 39,
        decoration: BoxDecoration(color: const Color(0xFFAFA8EE), borderRadius: BorderRadius.circular(36)),
        child: Text(courseHeadLine,
        style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16,
                  ),),
      )),
    Positioned(top:80,left: 14,
        child: Text(courseTitle,
        style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),),
      ),
      Positioned(right:0,bottom: 0,
        child: Image.asset(courseImages, scale: 2,),
        ),
      
    ],),
    ),
    );
  }
}