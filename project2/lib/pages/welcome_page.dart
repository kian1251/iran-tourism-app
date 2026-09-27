//import 'dart:js_util';

import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
/*import 'package:project/App_colors.dart';
import 'package:project/cubit/cubit.dart';
import 'package:project/gen/assets.gen.dart';
import 'package:project/widgets/app_text.dart';
import 'package:project/widgets/app_text_large.dart';
import 'package:project/widgets/respnsive_button_welcomepage.dart';*/
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../cubit/cubit.dart';
import '../data.dart';
import 'detailed_Page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController();
  final items = AppDatabase.onBoardingItems;

  int page = 0;

  ScrollController scrollControllerr = ScrollController();

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != page) {
        setState(() {
          page = _pageController.page!.round();
          //debugPrint('Onboarding: Selected Page -> $page');
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 8),
                child: Image.asset(
                  "assets/WelcomePage/shiraz.png",
                ),
              ),
            ),
            Container(
              height: 320,
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.1),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: items.length,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(32),
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[index].title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 24)),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    items[index].description,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 60,
                    padding:
                        const EdgeInsets.only(left: 34, right: 34, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: items.length,
                          effect: ExpandingDotsEffect(
                              activeDotColor: themeData.colorScheme.primary,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: themeData.colorScheme.primary
                                  .withOpacity(0.1)),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (page == items.length - 1) {
                              BlocProvider.of<AppCubits>(context).getdata();
                            } else {
                              _pageController.animateToPage(page + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate);
                            }
                          },
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(84, 60)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              )),
                          child: Icon(page == items.length - 1
                              ? CupertinoIcons.check_mark
                              : CupertinoIcons.arrow_right),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* List images = [
    "shiraz2.png",
    "shiraz.png",
    "tehran.png",
  ];
  List Text = [
    "Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane",
    "Travel is the movement of people between distant geographical locations. Travel can be done",
    "Travel is the movement of people between distant geographical locations"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            itemCount: images.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 1.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/WelcomePage/" + images[index]),
                    )),
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  color: Colors.white,
                  margin: const EdgeInsets.only(
                    top: 610,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          AppLargeText(
                            text: "Discover",
                            size: 30,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 250,
                            child: AppTextText(text: Text[index],),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubits>(context).getdata();
                            },
                            child: SizedBox(
                              width: 200,
                              child: Row(children: [
                                ResponsiveButton(
                                  width: 200,
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 1),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? AppColors.dotSecondColor
                                    : AppColors.dotSecondColor.withOpacity(
                                    0.4)),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_Data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => WelcomePageContent(
                    image: demo_Data[index].image,
                    title: demo_Data[index].title,
                    description: demo_Data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      demo_Data.length,
                      (index) => Padding(
                            padding: EdgeInsets.only(right: 7),
                            child: DotIndicator(isActive: index == _pageIndex),
                          )),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff05ab5f),
                          shape: const CircleBorder(),
                          shadowColor: Colors.black),
                      child: SvgPicture.asset(
                          "assets/WelcomePage/welcomebutton.svg"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color:
              isActive ? Color(0xff05ab5f) : Color(0xff05ab5f).withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Welcome {
  final String image, title, description;

  Welcome(
      {required this.image, required this.title, required this.description});
}

final List<Welcome> demo_Data = [
  Welcome(
    image: 'assets/WelcomePage/shiraz.png',
    title: 'class WelcomePage extends StatelessWidget',
    description: 'class WelcomePage extends StatelessWidget',
  ),
  Welcome(
    image: 'assets/WelcomePage/shiraz2.png',
    title: 'class WelcomePage extends StatelessWidget',
    description: 'class WelcomePage extends StatelessWidget',
  ),
  Welcome(
    image: 'assets/WelcomePage/tehran.png',
    title: 'class WelcomePage extends StatelessWidget',
    description: 'class WelcomePage extends StatelessWidget',
  ),
  Welcome(
    image: 'assets/WelcomePage/isfahan.png',
    title: 'class WelcomePage extends StatelessWidget',
    description: 'class WelcomePage extends StatelessWidget',
  ),
];

class WelcomePageContent extends StatelessWidget {
  const WelcomePageContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(image),
        const Spacer(),
        Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const SizedBox(
          height: 5,
        ),
        Text(description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
        const Spacer(),
      ],
    );
  }
}

// GET THE OLD STRUCTURE FROM COMMENTS BELOW //


class Welcome_Page extends StatefulWidget {
  Welcome_Page({super.key});

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  List images = [
    "shiraz2.png",
    "shiraz.png",
    "tehran.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/WelcomePage/" + images[index]))),
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 50, right: 50),
                  child: Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                
                        children: [
                          AppLargeText(text: "Trips"),
                          AppTextText(
                            text: "Discover",
                            size: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 255,
                            child: AppTextText(
                              text:
                                  "Isfahan is a city in central Iran, known for its Persian architecture. ",
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Column(
                              children: [
                                ResponsiveButton(
                                  width: 90,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: List.generate(3, (indexDots) {
                                    return Container(
                                      margin: EdgeInsets.only(left: 3),
                                      width: index == indexDots ? 28 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: index == indexDots
                                              ? AppColors.buttonbackground
                                              : AppColors.buttonbackground.withOpacity(0.3)),
                                    );
                                  }),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
 */
