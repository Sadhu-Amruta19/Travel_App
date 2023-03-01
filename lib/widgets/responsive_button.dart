import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double width;
   ResponsiveButton({Key? key, required this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("lib/images/button_page1.png"),
        ]
      ),
    );
  }
}
