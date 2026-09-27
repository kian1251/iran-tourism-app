import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../cubit/cubit.dart';
import '../data.dart';


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
                                        fontSize: 18),
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
                          effect: WormEffect(
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