import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jova_v2/feature/presentation/getx/jova_getx.dart';
import '../color/color.dart';
import '../widgets/homepage_preview.dart';
import '../widgets/homepage_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = screenHeight * 0.15;
    final double bottomNavigationBarHeight = screenHeight * 0.12;

    final Jova_Controller controller = Get.put(Jova_Controller());

    final List<Widget> filter_major_item = [
      HomepageText(major: "DESIGN"),
      HomepageText(major: "FE"),
      HomepageText(major: "AOS"),
      HomepageText(major: "IOS"),
      HomepageText(major: "Flutter"),
      HomepageText(major: "BE"),
      HomepageText(major: "Devops"),
      HomepageText(major: "IT"),
      HomepageText(major: "ROBOT"),
      HomepageText(major: "SECURITY"),
      HomepageText(major: "CLOUD"),
    ];


    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: Container(
            height: appBarHeight,
            child: CupertinoNavigationBar(
              backgroundColor: Colors.white,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              leading: Builder(
                  builder: (context){
                    double logosize = appBarHeight * 0.6;
                    return Image.asset(
                        "assets/image/jova_logo.png",
                      height: logosize,
                      width: logosize,
                    );
                  },
              ),
              trailing: Icon(Icons.sunny),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppColors.greycolor,
                    width: 1,
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*Expanded(
                      flex: 1,
                      child: Obx((){
                        return DropdownButton(
                          value: HomepageText(major: controller.major_filter),
                          onChanged: controller.changemajor_filter,
                          items: filter_major_item
                              .map<DropdownMenuItem<Widget>>((Widget widget) {
                            return DropdownMenuItem<Widget>(
                              value: widget,
                              child: widget,
                            );
                          }).toList(),
                        );
                      }),
                    )*/
                  ],
                ),
              ),
              SizedBox(height: 20,),
              IndexedStack(
                index: controller.writeindex,
                children: [
                  HomepagePreview(title: "조오바", content: "ㅋㅋ"),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Obx((){
          return Container(
            height: bottomNavigationBarHeight,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
              color: Colors.grey,
              width: 1
            ),
            ),
          ),
          child: BottomNavigationBar(
            onTap: controller.change_bottomnavigationbarindex,
            backgroundColor: Colors.white,
            elevation: bottomNavigationBarHeight,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.bottomnavigationbarindex.value,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.yellow,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.description),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
            ],
          ),
        );
      })
      );
  }
}
