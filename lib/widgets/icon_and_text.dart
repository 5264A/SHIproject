import 'package:flutter/cupertino.dart';
import 'package:projectwork/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color Iconcolor;

  const IconAndText({Key? key, required this.icon, required this.text, required this.color, required this.Iconcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Iconcolor,),
        SizedBox(width: 5,),
        SmallText(text: text,color: color,),
      ],
    );
  }
}
/* Container(
              height: 320,
              child: PageView.builder(itemCount:5,itemBuilder: (context,position){
                return _buildPageItem(position);
              }
              ),
              ),
              DotsIndicator(
    dotsCount: 3,
    //position: _currpagevalue,
    decorator: DotsDecorator(
    size: const Size.square(4.0),
    activeSize: const Size(10.0, 4.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    ),
    ),*/
