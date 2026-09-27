import 'package:app_color/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*import 'package:project/App_colors.dart';
import 'package:project/cubit/cubit.dart';
import 'package:project/cubit/cubit_states.dart';
import 'package:project/widgets/app_text.dart';
import 'package:project/widgets/app_text_large.dart';
import 'package:project/widgets/respnsive_button_welcomepage.dart';*/

import '../App_colors.dart';
import '../cubit/cubit.dart';
import '../cubit/cubit_states.dart';
import '../widgets/app_text.dart';
import '../widgets/app_text_large.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({super.key});

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  int gettingStar = 4;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitState>(builder: (context, state) {
      DetailState detail = state as DetailState;
      return WillPopScope(// Its For "Do you want to exit the app" DIALOG ( a METHOD CREATED AT THE END )
        onWillPop: () => _onBackButtononPressed(context),
        child: Scaffold(
          body: SafeArea(
            child: Scrollbar(
              thumbVisibility: true, trackVisibility: true,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "http://mark.bslmeiyu.com/uploads/${detail
                                      .place.img}"),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                BlocProvider.of<AppCubits>(context)
                                    .backToHomePage();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 32,
                              ),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 620,
                          /*decoration: BoxDecoration(
                          color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32))),*/
                          padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 30),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      child: AppLargeText(
                                          text: detail.place.name,
                                          color: AppColors.mainColor),
                                    ),const SizedBox(width: 20,),
                                    //////////if there was a overflowing problem jist wrap the AppLargeText in Expanded/////////
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        child: AppLargeText(
                                            text: "\$${detail.place.price}",
                                            color: AppColors.textColor3),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColors.mainColor,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: AppTextText(
                                        text: detail.place.location,
                                        color: AppColors.textColor2,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Wrap(
                                      children: List.generate(5, (index) {
                                        return Icon(Icons.star,
                                            color: index < detail.place.stars
                                                ? AppColors.starColor
                                                : AppColors.textColor2);
                                      }),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    AppTextText(
                                      text: "(5.0)",
                                      color: AppColors.textColor2,
                                      size: 13,
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                                AppLargeText(
                                  text: "People",
                                  color: AppColors.mainColor,
                                  size: 20,
                                ),
                                AppTextText(
                                  text: "Number of people in your group",
                                  color: AppColors.maintextColor,
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                AppLargeText(
                                  text: "Description",
                                  color: AppColors.mainColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                /////////Test for scrollable page
                                AppTextText(
                                  text: detail.place.description,
                                  color: AppColors.textColor2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //////////////////////////////////////////////////////////////////////////////////////////////////////////

          /*SafeArea(
            child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Stack(children: [
                  Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                          width: double.maxFinite,
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "http://mark.bslmeiyu.com/uploads/${detail.place.img}"),
                                fit: BoxFit.cover),
                          ))),
                  Positioned(
                      left: 20,
                      top: 30,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<AppCubits>(context)
                                  .backToHomePage();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 32,
                            ),
                            color: Colors.white,
                          )
                        ],
                      )),
                  Positioned(
                      top: 370,
                      child: Container(
                        decoration: const BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 50),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        ////////////////CHANGE THIS TO 600 IF ANYTHING Goes WRONG

                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppLargeText(
                                      text: detail.place.name,
                                      color: AppColors.mainColor),
                                  Container(
                                    height: 50,
                                    child: FittedBox(
                                      child: AppLargeText(
                                          text: "\$" +
                                              detail.place.price.toString(),
                                          color: AppColors.textColor3),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: AppColors.mainColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  AppTextText(
                                    text: detail.place.location,
                                    color: AppColors.textColor2,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Wrap(
                                    children: List.generate(5, (index) {
                                      return Icon(Icons.star,
                                          color: index < detail.place.stars
                                              ? AppColors.starColor
                                              : AppColors.textColor2);
                                    }),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  AppTextText(
                                    text: "(5.0)",
                                    color: AppColors.textColor2,
                                    size: 13,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              AppLargeText(
                                text: "People",
                                color: AppColors.mainColor,
                                size: 20,
                              ),
                              AppTextText(
                                text: "Number of people in your group",
                                color: AppColors.maintextColor,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              AppLargeText(
                                text: "Description",
                                color: AppColors.mainColor,
                                size: 20,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              AppTextText(
                                text: detail.place.description,
                                color: AppColors.textColor2,
                              )
                            ]),
                        /////////////////////////////BOTTOM BUTTONS
                      )),
                  /*Positioned(
                      bottom: 20,
                      right: 20,
                      left: 20,
                      child: Row(
                        children: [
                          ResponsiveButton(
                            isResponsive: true,
                          ),
                        ],
                      )),*/
                ])),
          ),*/
        ),
      );
    });
  }
  // Its For "Do you want to exit the app" DIALOG (A ,M,ETHOD CREATED AT THE END )
  Future<bool> _onBackButtononPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Exit App"), content: const Text("Do you want to exit the App?"), actions: [
        TextButton(
            onPressed:() {Navigator.of(context).pop(false);}, child: const Text("No"), ),
        TextButton(
            onPressed:() {Navigator.of(context).pop(true);}, child: const Text("Yes")),
      ],);
    }

    );
    return exitApp?? false;
  }
}
