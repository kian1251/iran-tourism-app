//import 'dart:html';
//import 'dart:js';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'Desert.dart';
//import 'Isfahan.dart';

class AncientIran extends StatefulWidget {
  static const BurntCity ='شهر سوخته سیستان و بلوچستان از کهن‌ترین شهرهای جهان است و میان باستان‌شناسان دنیا محبوبیت فراوان دارد. شهر باستانی سوخته با قدمتی بیش از ۶۰۰۰ سال، هفدهمین اثر تاریخی و فرهنگی ثبت شده ایران در میراث جهانی یونسکو است.بررسی‌های فراوان باستان‌شناسان جهان، نشانه‌هایی از وجود شهری متمدن و پیشرفته در محل شهر سوخته در زمان‌های بسیار دور ارائه می‌کند. این منطقه باستانی در جنوب شهر زابل، در گذشته در مسیر شاه‌راه ارتباطی فلات ایران قرار داشته و به همین دلیل تجارت و بازرگانی در آن رونق فراوان داشته است.';
  static const Shooshtar ='از برجسته‌ترین دلایل ثبت سازه های آبی شوشتر در فهرست میراث جهانی یونسکو، پیشرفته بودن سیستم طراحی این سازه‌ها در زمان باستان بوده است. در دوران هخامنشیان و ساسانیان از سازه‌های آبی شوشتر در خوزستان برای بهره‌برداری هرچه بیشتر از آب‌های زیرزمینی و منابع آب استفاده می‌شده است.بوغ طراحی و خلاقیت معماری در ساخت این سازه‌ها، امروزه باعث حیرت جهانیان می‌شود. کانال‌ها، آسیاب‌ها، پل‌ها، سدها و تونل‌های گسترده، با سیستم هیدرولیکی، برای هدایت مناسب آب و جلوگیری از هدر رفت آن، نمونه‌هایی بی‌نظیر از شاهکاری معماری به شمار می‌روند. دانش مهندسی در این منطقه در گذشته و طراحی منحصربه‌فرد سازه‌های آبی شوشتر، سبب ثبت آن‌ها در فهرست میراث تاریخی و فرهنگی یونسکو در جهان در سال ۲۰۰۹ میلادی شد.';
  static const Soleyman ='تخت سلیمان منطقه‌ای باستانی و کهن در ۴۵ کیلومتری شهر تکاب در استان آذربایجان غربی است. سابقه سکونت اقوام مختلف در این منطقه به هزاره اول پیش از میلاد می‌رسد. به‌دلیل آثار باستانی کشف شده از منطقه تخت سلیمان که یادگار دوره‌های مختلف تاریخی از جمله مادها، اشکانیان و ساسانیان است، این منطقه تاریخی را در سال ۲۰۰۳ میلادی در فهرست میراث جهانی یونسکو ثبت کردند.مساحت منطقه تخت سلیمان به ۱۲۴ هزار متر مربع می‌رسد و از بخش‌های مختلفی مانند معبد آناهیتا، آتشکده زرتشتی و دریاچه تخت سلیمان، تشکیل شده است. آتشکده منطقه تخت سلیمان باقی مانده از دوران ساسانیان است و تا پیش از حمله اعراب، از مهم‌ترین مراکز دینی ایرانیان به شمار می‌رفت که تا ۷۰۰ سال مشعل آن را روشن نگه داشته بودند.';
  static const Takht = 'تخت جمشید نمادی از شکوه و عظمت ایران باستان و یادگار پادشاهان هخامنشی از ۲,۵۰۰ سال پیش در ایران است که به دستور داریوش اول در دامنه کوه رحمت ساخته شد تا مقر حکومت امپراتوری هخامنشی باشد. آنچه باعث جلب توجه جهانیان به تخت جمشید شده است، تنها قدمت تاریخی این شهر باستانی نیست. باستان‌شناسان با مطالعه دقیق کتیبه‌ها و آثار این منطقه، به پیشرفت تمدن در ایران باستان پی برده‌اند. قوانین اجتماعی دوران هخامنشیان نیز تعجب بسیاری از تاریخ‌دوستان را برانگیخته است. از بخش‌های مختلف تخت جمشید می‌توان به پلکان ورودی، دروازه ملل، خزانه تخت جمشید، کاخ صد ستون، کاخ هدیش و... اشاره کرد.';
  static const Korosh = 'رامگاه کوروش یکی از آثار تاریخی مهم بازمانده از دوره هخامنشی محسوب می‌شود که علاقه‌مندان به تاریخ باستانی ایران از آن دیدن می‌کنند. بنای این مقبره، از سنگ‌های آهکی تشکیل شده و ساختمان مقبره سکوهایی دارد که بنای اصلی آرامگاه روی آن استوار شده است. سبک معماری این بنا تلفیقی از معماری ایران، آسیای صغیر، مصر، عیلام و میان‌رودان به شمار می‌رود. در ساخت بنا هیچ ملاطی به کار نرفته است و همین سبب خاص بودن نوع معماری آرامگاه می‌شود. مقبره کوروش به‌دلیل معماری منحصربه‌فرد، برای سال‌ها توانسته است تا در برابر عوامل طبیعی چون برف و باران پایدار بماند.';
  static const Zigorat ='چغازنبیل نخستین نیایشگاه ایران است و در سال ۱۹۷۹ به‌عنوان اولین اثر تاریخی و فرهنگی ایران در فهرست میراث جهانی یونسکو ثبت شد. باستان‌شناسان و خاور‌شناسان ارزش این بنای تاریخی را بسیار می‌دانند و معبد چغازنبیل جایگاهی متمایز میان علاقه‌مندان به تاریخ در سراسر جهان دارد.چغازنبیل در حوالی شهر باستانی «دوراونتاش» قرار داشته است که امروزه منطقه نزدیک شوش در خوزستان را شامل می‌شود. قدمت بنای چغازنبیل به ۱۲۵۰ سال پیش از میلاد می‌رسد. بنای اولیه بیش از ۵۰ متر ارتفاع داشت و شامل پنج طبقه می‌شد. در محوطه داخل چغازنبیل معابد مختلفی وجود دارند. زیربنای مجموعه چغازنبیل مربعی با مساحت بیش از ۴۰۰ متر مربع است.اولین بار، پیدا شدن یک آجرنوشته از محوطه باستانی چغازنبیل منجر به کشف شهر باستانی دوراونتاش شد. امروزه هم‌چنان کاوش‌های باستان‌شناسی در منطقه چغازنبیل ادامه دارد و سالانه باستان‌شناسان زیادی از سراسر جهان از این منطقه بازدید می‌کنند. ';

  const AncientIran({super.key});

  @override
  State<AncientIran> createState() => _AncientIranState();
}

class _AncientIranState extends State<AncientIran> {
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
        backgroundColor: Colors.brown,
        title: const Text("Ancient IRAN"),
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
                buildCard("تخت جمشید",),
                buildCard1("آرامگاه کوروش بزرگ",),
                buildCard2("زیگورات چغازنبیل",),
                buildCard3("تخت سلیمان",),
                buildCard4("سازه‌های آبی شوشتر",),
                buildCard5("شهر سوخته",)
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
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2023/5/bdb149d5-f9da-41b0-8980-53e907b486ef.jpg",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/8080-%D8%AA%D8%AE%D8%AA-%D8%AC%D9%85%D8%B4%DB%8C%D8%AF/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                    ),Padding(
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
                        AncientIran.Takht,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.Takht)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2023/5/70ceed0b-577a-4244-829e-29f913bf0fe8.jpg?w=840&h=560",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/9139-%D8%A2%D8%B1%D8%A7%D9%85%DA%AF%D8%A7%D9%87-%DA%A9%D9%88%D8%B1%D9%88%D8%B4-%D8%A8%D8%B2%D8%B1%DA%AF/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                        AncientIran.Korosh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.Korosh)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2020/9/c149d650-6447-4ed5-8898-b86ae166c903.jpg",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/7470-%D8%B2%DB%8C%DA%AF%D9%88%D8%B1%D8%A7%D8%AA-%DA%86%D8%BA%D8%A7%D8%B2%D9%86%D8%A8%DB%8C%D9%84/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                    ),Padding(
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
                        AncientIran.Zigorat,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.Zigorat)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2020/11/78858d48-5b6a-40a8-8046-405fc0e4aca1.jpg",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/7193-takht-e-soleyman/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                    ),Padding(
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
                        AncientIran.Soleyman,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.Soleyman)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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

  Widget buildCard4(
      String title,
      ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2020/8/741ff3d3-800d-422c-9f21-e8e6233e1b12.jpg?w=840&h=560",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/9599-%D8%B3%D8%A7%D8%B2%D9%87-%D8%A7%D8%A8%DB%8C-%D8%B4%D9%88%D8%B4%D8%AA%D8%B1/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                    ),Padding(
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
                        AncientIran.Shooshtar,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.Shooshtar)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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
  Widget buildCard5(
      String title,
      ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.brown.withOpacity(0.2),
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
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://images.kojaro.com/2020/9/c418b4a4-952d-49af-847f-ea3077f2bea2.jpg",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),
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
                                    "https://www.kojaro.com/attraction/8121-%D8%B4%D9%87%D8%B1-%D8%B3%D9%88%D8%AE%D8%AA%D9%87-%D8%B2%D8%A7%D8%A8%D9%84/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blue),
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
                    ),Padding(
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
                        AncientIran.BurntCity,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => AncientIran.BurntCity)
                            .join('\n\n'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
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
