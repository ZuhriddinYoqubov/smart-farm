library welcomescreenflutter;
//Created by sunil verma
//Contact Email : sunilchaudhary0098@gmail.com

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
/**
 *Developed by Suneel kumar 28-12-2021
 */

class PageData {
  String title;
  String description;
  String imagePath;

  PageData(this.title, this.description, this.imagePath);
}

typedef ValueChanged<T> = void Function(T value);

class IntroPage extends StatelessWidget {
  List<Page> pages = [];
  int indx;
  List<PageData> pageData;
  double? indicatorSize;
  var selectedIndicator = 0.obs;
  Color? activeIndicatorColor;
  Color? deActiveIndicatorColor;
  ValueChanged<int>? onPageChange;

  IntroPage(
      {required this.pageData,
      required this.indx,
      this.indicatorSize,
      this.activeIndicatorColor,
      this.deActiveIndicatorColor,
      this.onPageChange});
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    pages.clear();
    for (int i = 0; i < pageData.length; i++) {
      pages.add(Page(
        pageData: pageData[i],
      ));
    }

    return Stack(
      children: [
        PageView(
          controller: controller,
          children: pages,
          onPageChanged: (value) {
            selectedIndicator.value = value;
            onPageChange!.call(value);
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16),
                height: indicatorSize == null ? 25 : indicatorSize! + 8,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: pageData.length,
                    itemBuilder: (context, index) {
                      return Obx(() => Container(
                            margin: EdgeInsets.all(4),
                            height: indicatorSize ?? 12,
                            width: indicatorSize ?? 18,
                            decoration: BoxDecoration(
                                color: selectedIndicator.value == index
                                    ? activeIndicatorColor ?? Colors.green
                                    : deActiveIndicatorColor ?? Colors.grey,
                                borderRadius: BorderRadius.circular(
                                    indicatorSize == null
                                        ? 9
                                        : indicatorSize! / 2)),
                          ));
                    }),
              ),
              ElevatedButton(
                onPressed: () {
                  indx += 1;
                  if (indx == 1) {
                    controller.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                    print(indx);
                  } else if (indx == 2) {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => SignUpView(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: const Duration(milliseconds: 2000),
                      ),
                    );
                  }
                },
                child: const Text("Keyingi"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Page extends StatelessWidget {
  PageData? pageData;

  Page({this.pageData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            pageData == null
                ? 'assets/logo.png'
                : pageData!.imagePath.isEmpty
                    ? 'assets/logo.png'
                    : pageData!.imagePath,
            height: 300,
            width: 420,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    pageData == null
                        ? 'Make a beautiful clean and fully functional onboarding screen layout in Android StudioIn this part we are going to setup the viewpager intro slider.Illustra...'
                        : pageData!.description.isEmpty
                            ? 'Make a beautiful clean and fully functional onboarding screen layout in Android StudioIn this part we are going to setup the viewpager intro slider.Illustra...'
                            : pageData!.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
