import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verticaldetail extends StatefulWidget{
  const Verticaldetail({Key? key}) : super(key: key);

  @override
  _VerticaldetailState createState() => 
  _VerticaldetailState();
}

class _VerticaldetailState extends State<Verticaldetail> {
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 12,),
      child: Container(height: 82, decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: const Color(0xFF3e3a6d)
      ),
      child: Row(
        children: [
          Container(
            height: 82, width: 99,
            decoration: BoxDecoration(color: const Color(0xFFDB61A1),
              borderRadius: BorderRadius.circular(19),
            image: DecorationImage(alignment: Alignment.bottomRight,
              image: AssetImage('3.png')
            ),
            ),
          ),
          Expanded(child: Padding(padding: const EdgeInsets.only(left: 12),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Introduction design Graphic for Beginner', overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,)),
          const SizedBox(height: 6,),
          Row(children: [Text('12 minutes', overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF8c8c8c),
                    fontSize: 14,)),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height:20 ,
                      decoration: BoxDecoration(color: 
                      const Color(0xffdb61a1), borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), child: Text('free', style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 11,)),),
                    )
                    ]

                    ,)
          ]),),
          
          )
        ],
      ),
      ),

    );
  }
}