import 'package:flutter/cupertino.dart';
import 'package:jova_v2/feature/presentation/color/color.dart';

class HomepagePreview extends StatelessWidget {
  const HomepagePreview({super.key, required this.title, required this.content});

  final String title;
  final String content;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 248,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        border: Border.all(
          color: AppColors.greycolor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
              "[${title}]",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: "PretendardVariable",
              decoration: TextDecoration.underline,
              decorationColor: AppColors.yellowcolor,
              decorationThickness: 4,
            ),
          ),
          SizedBox(height: 10,),
          Text(
              content,
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
