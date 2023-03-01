import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome_page3.jpg",
    "welcome_page2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(                //contain body...
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: images.length,
          // used for slide screen
          itemBuilder: (_, index){
          return Container(    //hold images and all
            // width: double.maxFinite,
            // height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
               image: AssetImage(
                 "lib/images/"+images[index]
               ),
                fit:BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30, Text: '',),
                      SizedBox(height: 20,),
                      Container(
                        width: 290,  // want to give break in para.
                        child: AppText(
                          text: "Mountain hikes give you an incredible sense of freedom along with endurance test."
                              "", Text: '',
                          size: 10,
                          color: Colors.black54,

                        ),
                      ),
                      SizedBox(height: 40,),   // space between image and lines
                      ResponsiveButton(width: 120,)


                    ],
                  ),
                  Column(   // for dots..
                    children: List.generate(3, (indexDots){  //another method for []
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), //radius to dots..
                          color: Colors.blue

                        ),
                      );
                  }),
                  )
                ],
              ),
            ),

      );

    }),
    );
  }
}




