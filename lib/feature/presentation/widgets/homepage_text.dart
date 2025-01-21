import 'package:flutter/cupertino.dart';
import '../color/color.dart';

class HomepageText extends StatelessWidget {
  const HomepageText({super.key, required this.major});

  final String major;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:"$major",
            style: TextStyle(
                fontFamily: 'PretendardVariable',
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.yellowcolor,
                decorationThickness: 4
            ),
          ),
          TextSpan(
            text:"를 찾는 ",
            style: TextStyle(
                fontFamily: 'PretendardVariable',
                fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text:"구인구직",
            style: TextStyle(
                fontFamily: 'PretendardVariable',
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.yellowcolor,
                decorationThickness: 4
            ),
          ),
        ]
      ),
    );
  }
}
