import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      return WillPopScope(
        // Its For "Do you want to exit the app" DIALOG ( a METHOD CREATED AT THE END )
        onWillPop: () => _onBackButtononPressed(context),
        child: Scaffold(
          body: SafeArea(
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "http://mark.bslmeiyu.com/uploads/${detail.place.img}",
                      imageBuilder: (context, imageProvider) => Container(
                        width: double.maxFinite,
                        height: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 15, right: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  BlocProvider.of<AppCubits>(context)
                                      .backToHomePage();
                                },
                                icon: Container(width: 40,height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 32,
                                  ),
                                ),
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(
                          color: Colors.greenAccent,
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          Image.asset("assets/error/error.png"),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 620,
                          padding: const EdgeInsets.only(
                              top: 30, left: 15, right: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        detail.place.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: AppColors.mainColor),
                                      ),
                                      /*AppLargeText(
                                          text: detail.place.name,
                                          color: AppColors.mainColor),*/
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    //////////if there was a overflowing problem just wrap the AppLargeText in Expanded/////////
                                    AppLargeText(
                                        text: "\$${detail.place.price}",
                                        color: AppColors.textColor3),
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
                                  color: AppColors.textColor2,
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
        ),
      );
    });
  }

  // This Block For "Do you want to exit the app!" DIALOG .
  Future<bool> _onBackButtononPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Exit App"),
            content: const Text("Do you want to exit the App?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("No"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Yes")),
            ],
          );
        });
    return exitApp ?? false;
  }
}
