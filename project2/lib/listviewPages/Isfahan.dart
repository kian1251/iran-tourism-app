//import 'dart:html';
//import 'dart:js';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:latlong2/latlong.dart';
import 'package:project2/pages/navigatorpages/map_page.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Desert.dart';
import 'Isfahan.dart';

class IsfahanPage extends StatefulWidget {
  static const Naghsh =
      'میدان نقش جهان که با نام میدان امام نیز شناخته می‌شود یکی از زیباترین جاهای دیدنی اصفهان است. در واقع، تجمع بسیاری از بناهای باستانی این شهر در میدان نقش جهان است. این میدان زیبا در طول عمرش در حکومت‌های مختلف، فراز و فرودهای زیادی داشته و در بازه‌هایی از زمان مورد بی‌مهری حاکمان قرار گرفته است؛ اما امروزه باشکوه فراوان علاقمندانی در سراسر جهان دارد.ثبت این میدان در فهرست میراث جهانی یونسکو، میزان اهمیت این منطقه را بیان می‌کند. در سفر به اصفهان، می‌توانید زمان زیادی را در این میدان زیبا بگذرانید و از تماشای بنا‌های تاریخی و طبیعت زیبای آن، لذت ببرید.  ';
  static const Khajoo =
      'پل خواجو اصفهان در شرق سی‌وسه‌پل قرار دارد و از نظر استحکام، تقارن و سبک معماری، یکی از پل‌های منحصربه‌فرد ایران به‌حساب می‌آید. این پل در عصر صفوی به‌عنوان یکی از زیباترین پل‌های دنیا محسوب می‌شد و به‌خاطر معماری و تزیینات کاشی‌کاری به کار رفته در آن، از سایر پل‌های زاینده‌رود معروف‌تر است. پل تاریخی خواجو به‌عنوان یکی از جاهای دیدنی اصفهان، در تاریخ ۱۵ دی ۱۳۱۰ در فهرست آثار ملی ایران قرار گرفت.';
  static const church =
      'کلیسای وانک مانند نگینی درخشان در مرکز شهر اصفهان است. معماری ساده و زیبا، نقاشی‌های منحصربه‌فرد و قدمت کلیسای وانک، این اثر تاریخی را از سایر کلیساهای ایران متمایز می‌کند. در طول سالیان دراز، کلیسای وانک سیر تکاملی داشته است و اضافه شدن بخش‌های مختلف به محوطه و ساختمان کلیسا، بر اهمیت آن افزوده‌اند.امروزه همچنان کلیسای وانک جایگاه قدرتمندی میان ارامنه اصفهان دارد و در کل جهان نیز شناخته شده است. ';
  static const sooton =
      'کاخ چهلستون یکی از نمونه‌ باغ‌های سلطنتی به جامانده از دوره صفوی در شهر اصفهان است که با نام باغ موزه چهلستون نیز شناخته می‌شود. در واقع، این باغ بخش کوچکی از باغ وسیع جهان‌نما است که شاه عباس اول با احداث کوشکی در میان آن هسته نخستین کاخ چهلستون را ایجاد کرد. این میراث تاریخی از جمله مشهورترین و محبوب‌ترین جاهای دیدنی اصفهان محسوب می‌شود که با وجود آسیب‌های وارد شده، هنوز هم زیبایی‌های خیره‌کننده‌ای برای عرضه به دیدگان گردشگران و بازدیدکنندگان دارد.';
  static const sio3pool = 'سی‌وسه‌ پل به‌عنوان یکی از مشهورترین جاهای دیدنی اصفهان شناخته می‌شود؛ به‌طوری که بسیاری از ما این شهر زیبا را با آن می‌شناسیم. اگرچه امروز با خشک شدن آب زاینده‌رود، سی‌ و سه‌ پل نیز دیگر حال و هوای گذشته را ندارد؛ ولی این پل همچنان به‌عنوان یکی از نمادهای شهر اصفهان شناخته می‌شود. این پل در طول تاریخ با نام‌های مختلفی خوانده‌ شده است که از جمله آن‌ها می‌توان به پل شاه‌عباسی، پل الله‌وردی خان، پل جلفا، پل چهل چشمه و پل سی‌وسه چشمه اشاره کرد.سی و سه پل ۳۳ دهانه، ۲۹۵ متر طول و ۱۴ متر عرض دارد.';
  static const Gheysarie =
      'بازار قیصریه یکی از معروف‌ترین بازارهای تاریخی ایران و جاهای دیدنی اصفهان است و به بازار شاهى نیز شهرت دارد. این بازار از سردر قیصریه شروع، به بازار چیت‌ساز‌ها و از آنجا به بازار دارالشفا منتهى می‌شود. بازار قیصریه یکی از مراکز مشهور صنایع دستی به شمار می‌آید. این بازار از بزرگ‌ترین و مجلل‌ترین مرکز خریدوفروش در دوران صفویه بوده است. به‌طور کلی بازار سرپوشیده اصفهان چند کیلومتر طول دارد که هر بخش آن کالای ویژه‌ای تولید و فروخته می‌شود. بازار بزرگ اصفهان که بازار قیصریه بخشی از آن است، درب‌های ورودی مختلفی داشته است.';

  const IsfahanPage({super.key});

  @override
  State<IsfahanPage> createState() => _IsfahanPageState();
}

class _IsfahanPageState extends State<IsfahanPage> {
  late ExpandableController controller;
  late ExpandableController controller1;
  late ExpandableController controller2;
  late ExpandableController controller3;
  late ExpandableController controller4;
  late ExpandableController controller5;

  @override
  void initState() {
    super.initState();
    controller = ExpandableController();
    controller1 = ExpandableController();
    controller2 = ExpandableController();
    controller3 = ExpandableController();
    controller4 = ExpandableController();
    controller5 = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Isfahan"),
      ),
      body: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                buildCard(
                  "میدان نقش جهان ",
                ),
                buildCard1(
                  "پل خواجو",
                ),
                buildCard2(
                  "کلیسای وانک",
                ),
                buildCard3(
                  "کاخ چهلستون",
                ),
                buildCard4(
                  "بازار قیصریه",
                ),
                buildCard5(
                  "سی و سه پل",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                          onTap: () {
                            controller.toggle();
                          },
                          child: CachedNetworkImage(imageUrl:
                          "https://images.kojaro.com/2020/8/9e804e89-96e5-44e6-a474-797c0566b016.jpg",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) =>
                                Container(alignment: Alignment.center,
                                  child: const CircularProgressIndicator(color: Colors.greenAccent,),),
                            errorWidget: (context ,url ,error) => Image.asset("assets/error/error.png"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7611-%d9%85%db%8c%d8%af%d8%a7%d9%86-%d9%86%d9%82%d8%b4-%d8%ac%d9%87%d8%a7%d9%86/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "میراث جهانی یونسکو",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/listviewimages/world_heritage.png",
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.Naghsh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.Naghsh)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildCard1(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller1.toggle();
                        },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2023/5/efb9c528-fff8-4c11-8e1e-62ab00791e48.jpg?w=840&h=560",
                          imageBuilder: (context, imageProvider) =>
                              Image(image: imageProvider),
                          placeholder: (context, url) =>
                              Container(alignment: Alignment.center,
                                child: const CircularProgressIndicator(color: Colors.greenAccent,),),
                          errorWidget: (context ,url ,error) => Image.asset("assets/error/error.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7577-%d9%be%d9%84-%d8%ae%d9%88%d8%a7%d8%ac%d9%88/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller1,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.Khajoo,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.Khajoo)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildCard2(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller2.toggle();
                        },
                        child: Image.asset(
                          "assets/listviewimages/IsfahanPICS/church.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7612-%da%a9%d9%84%db%8c%d8%b3%d8%a7%db%8c-%d9%88%d8%a7%d9%86%da%a9/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller2,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.church,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.church)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildCard3(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller3.toggle();
                        },
                        child: CachedNetworkImage(imageUrl:
                        "https://safarmarket.com/blog/data/uploaded_files/491ce2e1f577ec5ac372e6b8.jpg",
                          imageBuilder: (context, imageProvider) =>
                              Image(image: imageProvider),
                          placeholder: (context, url) =>
                              Container(alignment: Alignment.center,
                                child: const CircularProgressIndicator(color: Colors.greenAccent,),),
                          errorWidget: (context ,url ,error) => Image.asset("assets/error/error.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7731-%da%a9%d8%a7%d8%ae-%da%86%d9%87%d9%84%d8%b3%d8%aa%d9%88%d9%86-%d8%a7%d8%b5%d9%81%d9%87%d8%a7%d9%86/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller3,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.sooton,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.sooton)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildCard4(String title,) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller4.toggle();
                        },
                        child: Image.asset(
                          "assets/listviewimages/IsfahanPICS/Gheysarie.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7544-%d8%a8%d8%a7%d8%b2%d8%a7%d8%b1-%d9%82%db%8c%d8%b5%d8%b1%db%8c%d9%87/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller4,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.Gheysarie,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.Gheysarie)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  Widget buildCard5(String title,) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.green.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller5.toggle();
                        },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2021/5/9ba3432c-5424-4858-90f3-cd206129297b.jpg",
                          imageBuilder: (context, imageProvider) =>
                              Image(image: imageProvider),
                          placeholder: (context, url) =>
                              Container(alignment: Alignment.center,
                                child: const CircularProgressIndicator(color: Colors.greenAccent,),),
                          errorWidget: (context ,url ,error) => Image.asset("assets/error/error.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7461-%d8%b3%db%8c-%d9%88-%d8%b3%d9%87-%d9%be%d9%84/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          /* ElevatedButton(
                            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                            onPressed: () {
                              launch(
                                "https://www.karnaval.ir/things-to-do/mellat-park-tehran",
                              );
                            },
                            child: const Text(
                              "See more information",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          )*/
                        ],
                      ),
                    ),
                    ExpandablePanel(
                      controller: controller5,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.redAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        IsfahanPage.sio3pool,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => IsfahanPage.sio3pool)
                            .join('\n\n'),
                        textAlign: TextAlign.right,textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
