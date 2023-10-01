import 'package:application_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';


class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key); 
  
  @override
  _CourseDetailScreenState createState() => 
  _CourseDetailScreenState();

  }
  
  class _CourseDetailScreenState extends State<CourseScreen>{
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(child: ListView(
          children: [
            Container(height: 392,decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22)),
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment(1, 0.0),
             colors: <Color>[Color(0xFFF4c465), Color(0xFFC63956),],
            ),
            image: DecorationImage(alignment: Alignment.bottomRight,
              image: AssetImage('what-is-design.jpg')
            ),
            ),
        ),
        Padding(padding: const EdgeInsets.only(left: 20,top: 22, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          RatingBar.builder(initialRating: 3, minRating: 1, direction: Axis.horizontal, allowHalfRating: true, itemCount: 5, itemSize: 18,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _)=>const Icon(Icons.star,color: Color(0xFFF4c645),),
                   onRatingUpdate: (rating){print(rating);}),
                   const SizedBox(height: 11,),
                   Text('Graphic Design Master for everyone',
                   overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 25,
                  ),),
                  const SizedBox(height: 29,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [SizedBox(width: 112.5,
                  child: Stack(children: [Positioned(child: Container(
                    height: 45, width: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white, image: DecorationImage(image: 
                    AssetImage('1.jpg'))))
                    ),
                    Positioned(left: 22.5,
                      child: Container(
                    height: 45, width: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white, image: DecorationImage(image: 
                    AssetImage('1.jpg'))))
                  ),
                  Positioned(left: 45,
                    child: Container(
                    height: 45, width: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white, image: DecorationImage(image: 
                    AssetImage('1.jpg'))))
                  ),
                  Positioned(left: 67.5,
                    child: Container(
                    height: 45, width: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white, image: DecorationImage(image: 
                    AssetImage('1.jpg'))))
                  ),],),
                  
                  ),
                    const SizedBox( width: 12,),
                    Text('+28k Members', style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: Color(0xffcacaca),
                    fontSize: 18,
                  ),
                  ),
                  Container(height: 47,width: 54, decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                  color: const Color(0xff353567)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child: Image.asset('thumbsup.png'),
                  ),
                  ),
                  ],
                  ),
                  
        ]),
        ), 
        const SizedBox(height: 51,),
        ListView.builder( padding: const EdgeInsets.symmetric(horizontal: 20, ),
          physics: const BouncingScrollPhysics(),
        itemCount: 10,
          shrinkWrap: true, itemBuilder:(context, index) {
          return const Verticaldetail();
        })
        ],
        ),),
      );
    }
  }