import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/listviewPages/Isfahan.dart';
import 'package:project2/listviewPages/Yazd.dart';
import '../App_colors.dart';
import '../cubit/cubit.dart';
import '../cubit/cubit_states.dart';
import '../listviewPages/Desert.dart';
import '../listviewPages/Hicking.dart';
import '../listviewPages/Shiraz_page.dart';
import '../navigation_drawler/Navigation_drawler.dart';
import '../widgets/app_text_large.dart';
import 'ancient_iran/ancient_iran.dart';
import 'complex_pages/complex_isfahan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    //////////this is the place where you can add more pictures to the bottom LISTVIEW//////////////////
    "sight.png": "Sightseeing",
    "desert.png": "Desert",
    "hik.png": "Hiking",
    "mosq.png": "Mosque",
    "trav.png": "Travelling",
  };
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    TabController _tabContoller = TabController(length: 3, vsync: this);
    return WillPopScope(
      onWillPop: () => _onBackButtononPressed(context),
      // Its For "Do you want to exit the app" DIALOG (A ,M,ETHOD CREATED AT THE END )
      child: Scaffold(
        backgroundColor: Colors.green.withOpacity(0.1),
        drawer: const Navigation(),
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.4),),
        //backgroundColor: Colors.white,
        body: BlocBuilder<AppCubits, CubitState>(
          builder: (BuildContext context, CubitState state) {
            if (state is LoadedState) {
              var info = state.places;
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      //Discover
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Discover",
                         style:  TextStyle(color: AppColors.mainColor,fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: TabBar(
                          //dividerColor: Colors.white,
                          controller: _tabContoller,
                          //unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: CircleTabBarIndicator(
                              color: const Color(0xff00aa5c), radius: 4),
                          tabs: [
                            Tab(text: "Complex"),
                            Tab(text: "Ancient"),
                            Tab(text: "Places"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 300,
                        width: double.maxFinite,
                        child: TabBarView(
                          controller: _tabContoller,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 9,
                                    top: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ComplexIsfahan()));
                                      },
                                      child: Image.asset(
                                        "assets/listviewimages/Complex/Naghsh-complex.png",
                                        width: 500,
                                        height: 290,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 9,
                                        top: 10,
                                      ),
                                      child: Container(
                                        width: 700,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomLeft: Radius.circular(12),
                                                    bottomRight: Radius.circular(12)),
                                            color: Colors.black.withOpacity(0.5)),
                                        child:  Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            "Naqsh-e Jahan Complex",
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 9,
                                    top: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AncientIran()));
                                      },
                                      child: Image.asset(
                                        "assets/listviewimages/ancient/ancient-iran.png",
                                        width: 500,
                                        height: 290,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 9,
                                        top: 10,
                                      ),
                                      child: Container(
                                        width: 700,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12),
                                                    bottomRight:
                                                        Radius.circular(12)),
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            "Ancient IRAN",
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ListView.builder(
                              itemCount: info.length, scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<AppCubits>(context)
                                        .detailPage(info[index]);},
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "http://mark.bslmeiyu.com/uploads/" +
                                            info[index].img,
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10),
                                      width: 200, height: 300,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white, image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover)),),
                                    placeholder: (context, url) => Container(
                                      alignment: Alignment.center,
                                      child: const CircularProgressIndicator(
                                        color: Colors.greenAccent,),),
                                    errorWidget: (context, url, error) =>
                                        Image.asset("assets/error/error.png"),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Explore More",
                              style:  TextStyle(color: AppColors.mainColor,fontSize: 30),),
                            const SizedBox(
                              width: 20,
                            ),
                            // AppTextText(text: "See All", color: AppColors.textColor3),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blueAccent.withOpacity(0.4)),
                        height: 300,
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Scrollbar(
                          trackVisibility: true,
                          thumbVisibility: true,
                          controller: scrollController,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ListView(
                              controller: scrollController,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DesertPage()));},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 60,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/bottompics/desert.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "learn about Deserts of IRAN",
                                              maxLines: 2,
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.navigate_next),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const IsfahanPage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 60,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/bottompics/trav.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Best places in Isfahan",
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.navigate_next),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ShirazPage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 60,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/bottompics/shiraz.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Best places in Shiraz",
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.navigate_next),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HickingPage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 60,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/bottompics/hik.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Best hicking places in Tehran ",
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.navigate_next),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const YazdPage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      height: 60,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/bottompics/sight.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            child: Text(
                                              "Best Places in Yazd ",
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(Icons.navigate_next),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ); ////////////////THE OLD PART OF DESINE WITHOUT BLOC
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

// Its For "Do you want to exit the app" DIALOG (A ,M,ETHOD CREATED AT THE END )
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

///////////// CLASS FOR CIRCULAR TABBAR INDICATOR (The GREEN ONE)/////////////////////
class CircleTabBarIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabBarIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
