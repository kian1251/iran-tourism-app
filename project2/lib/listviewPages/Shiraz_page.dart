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

class ShirazPage extends StatefulWidget {
  static const Eram = ' باغ ارم از جاذبه های گردشگری شیراز و نمونه‌ای از یک باغ-کوشک به حساب می‌آید که به‌واسطه درختان مرکبات و خیابان طویلی با سروهای باشکوه در طرفینش، محبوبیت زیادی بین گردشگران دارد. علاوه بر کوشک اصلی عهد قاجار که هسته مرکزی این باغ را تشکیل می‌دهد؛ سرونازهای بلند و کهن، زیبایی آن را دوچندان کرده‌اند. باغ ارم شیراز با مساحتی بالغ بر ۱۱۰,۳۸۰ متر مربع در ۱۴ آبان سال ۱۳۵۳ به ثبت ملی رسید. با کجارو همراه شوید تا این باغ رویایی را بیشتر بشناسید.';
  static const Hafezie = 'حافظیه محل دفن خواجه حافظ شیرازی معروف به لسان‌الغیب، از شاعران بزرگ قرن هشتم ایران، است که جزو مهم‌ترین جاذبه‌ های گردشگری شیراز به شمار می‌رود. سازه کنونی حافظیه در دوره پهلوی اول ساخته شد و در سال ۱۳۵۴ در فهرست آثار ملی ایران قرار گرفت. علاوه بر آرامگاه حافظ که جاذبه اصلی این محل محسوب می‌شود، فضای سرسبز آن به‌خصوص در طول شب و با نورپردازی‌های زیبا، محیطی عالی برای گردش دارد. بازدید از این جاذبه در همه فصول سال امکان‌پذیر است و با پرداخت هزینه‌ای کم می‌توانید از مقبره این شاعر بزرگ، به دیوان او تفال بزنید.';
  static const Takht = 'تخت جمشید نمادی از شکوه و عظمت ایران باستان و یادگار پادشاهان هخامنشی از ۲,۵۰۰ سال پیش در ایران است که به دستور داریوش اول در دامنه کوه رحمت ساخته شد تا مقر حکومت امپراتوری هخامنشی باشد. آنچه باعث جلب توجه جهانیان به تخت جمشید شده است، تنها قدمت تاریخی این شهر باستانی نیست. باستان‌شناسان با مطالعه دقیق کتیبه‌ها و آثار این منطقه، به پیشرفت تمدن در ایران باستان پی برده‌اند. قوانین اجتماعی دوران هخامنشیان نیز تعجب بسیاری از تاریخ‌دوستان را برانگیخته است. از بخش‌های مختلف تخت جمشید می‌توان به پلکان ورودی، دروازه ملل، خزانه تخت جمشید، کاخ صد ستون، کاخ هدیش و... اشاره کرد.';
  static const Korosh = 'رامگاه کوروش یکی از آثار تاریخی مهم بازمانده از دوره هخامنشی محسوب می‌شود که علاقه‌مندان به تاریخ باستانی ایران از آن دیدن می‌کنند. بنای این مقبره، از سنگ‌های آهکی تشکیل شده و ساختمان مقبره سکوهایی دارد که بنای اصلی آرامگاه روی آن استوار شده است. سبک معماری این بنا تلفیقی از معماری ایران، آسیای صغیر، مصر، عیلام و میان‌رودان به شمار می‌رود. در ساخت بنا هیچ ملاطی به کار نرفته است و همین سبب خاص بودن نوع معماری آرامگاه می‌شود. مقبره کوروش به‌دلیل معماری منحصربه‌فرد، برای سال‌ها توانسته است تا در برابر عوامل طبیعی چون برف و باران پایدار بماند.';
  static const Saadieh = 'آرامگاه سعدی یکی از مشهورترین جاهای دیدنی شیراز به شمار می‌رود و همیشه مورد توجه ادب‌دوستان و اهالی شعر بوده است. حال و هوای خاص این مجموعه برای هر گردشگری جذابیت دارد و بنای منحصر‌به‌فرد آن با ترکیبی از معماری قدیم و جدید، ستون‌های افراشته و کاشی‌های لاجوردی، دل هر بیننده‌ای را می‌برد.این مکان که در زمان حیات محل زندگی سعدی بود، پس از مرگ وی تبدیل به مقبره او می‌شود. پس از فرازو‌نشیب در طول تاریخ، آرامگاه سعدی در نهایت به‌شکل امروزی آن می‌رسد.';
  static const Shapoori = 'عمارت شاپوری از زیباترین باغ‌عمارت‌های شیراز و مکان های دیدنی استان فارس است. این عمارت به دوره پهلوی اول تعلق دارد و در آن می‌توان تلفیقی از معماری ایرانی و اروپایی را مشاهده کرد. در این مجموعه جلوه‌های طبیعی باغ و معماری زیبای بنا در کنار یک‌دیگر چشم‌اندازی منحصر‌به‌فرد را خلق کرده‌ است. ';
  static const HamamVakil ='حمام وکیل شیراز در سال ۱۱۸۷ هجری قمری به دستور کریم خان زند ساخته و مزین به نگاره‌های زیبایی شد. در ادامه، پادشاهان دیگری تغییراتی در آن اعمال کردند تا اینکه ساختمان و تزیینات حمام وکیل در زمان قاجار مورد مرمت قرار گرفت. معماران این دوره با استفاده از ساروج، بخش‌هایی از حمام را پوشاندند و مجددا تزییناتی روی آن انجام دادند.حمام وکیل تا دوره پهلوی دوم مورد استفاده بود. ';
  static const Nasirolmolk = 'مسجد نصیر الملک یکی از زیباترین مساجد شیراز است که قدمت آن به دوره قاجاریه بازمی‌گردد. این مسجد در محله‌ای واقع شده است که پیشتر به خانواده قوام تعلق داشت و تعدادی از آثار تاریخی آن دوران، در آن واقع شده‌اند. امروزه این مسجد دوست‌داشتنی که با نام مسجد صورتی نیز شهرت دارد، یکی از پرطرفدارترین جاهای دیدنی استان فارس در شیراز به شمار می‌رود و محبوبیت زیادی بین گردشگران داخلی و خارجی دارد.';

  const ShirazPage({super.key});

  @override
  State<ShirazPage> createState() => _ShirazPageState();
}

class _ShirazPageState extends State<ShirazPage> {
  late ExpandableController controller;
  late ExpandableController controller1;
  late ExpandableController controller2;
  late ExpandableController controller3;
  late ExpandableController controller4;
  late ExpandableController controller5;
  late ExpandableController controller6;
  late ExpandableController controller7;

  @override
  void initState() {
    super.initState();
    controller = ExpandableController();
    controller1 = ExpandableController();
    controller2 = ExpandableController();
    controller3 = ExpandableController();
    controller4 = ExpandableController();
    controller5 = ExpandableController();
    controller6 = ExpandableController();
    controller7 = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Shiraz"),
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
                  "باغ ارم شیراز ",
                ),
                buildCard1(
                  "حافظیه",
                ),
                buildCard2(
                  "تخت جمشید",
                ),
                buildCard3(
                  "آرامگاه کوروش بزرگ",
                ),
                buildCard4(
                  "سعدیه",
                ),
                buildCard5(
                  "مسجد نصیر الملک",
                ),
                buildCard6(
                  "عمارت شاپوری",
                ),
                buildCard7(
                  "حمام وکیل شیراز",
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                                "https://images.kojaro.com/2020/9/4b9a0129-278c-4838-9ed5-7d647d75d299.jpg",
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
                                    "https://www.kojaro.com/attraction/6836-%d8%a8%d8%a7%d8%ba-%d8%a7%d8%b1%d9%85-%d8%b4%db%8c%d8%b1%d8%a7%d8%b2/");
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
                        ShirazPage.Eram,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Eram)
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                                "https://safarmarket.com/blog/data/uploaded_files/71cc03a8cedbefe479b94517.jpg",
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
                                    "https://www.kojaro.com/attraction/8005-%d8%ad%d8%a7%d9%81%d8%b8%db%8c%d9%87/");
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
                        ShirazPage.Hafezie,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Hafezie)
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                        ShirazPage.Takht,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Takht)
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                        ShirazPage.Korosh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Korosh)
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                                "https://tehransuite.com/wp-content/uploads/2018/07/%D9%85%D9%82%D8%A8%D8%B1%D9%87-%D8%A2%D8%B1%D8%A7%D9%85%DA%AF%D8%A7%D9%87-%D8%B3%D8%B9%D8%AF%DB%8C-%D8%B4%DB%8C%D8%B1%D8%A7%D8%B2%DB%8C-17.jpg",
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
                                    "https://www.kojaro.com/attraction/6961-%d8%a7%d8%b1%d8%a7%d9%85%da%af%d8%a7%d9%87-%d8%b3%d8%b9%d8%af%db%8c/");
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
                        ShirazPage.Saadieh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Saadieh)
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
            color: Colors.orangeAccent.withOpacity(0.2),
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
                                "https://images.kojaro.com/2021/4/dff6c2ed-2f7f-4fce-ab12-7446dd98a3c1.jpg",
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
                                    "https://www.kojaro.com/attraction/6961-%d8%a7%d8%b1%d8%a7%d9%85%da%af%d8%a7%d9%87-%d8%b3%d8%b9%d8%af%db%8c/");
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
                        ShirazPage.Nasirolmolk,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Nasirolmolk)
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

  Widget buildCard6(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.orangeAccent.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                          onTap: () {
                            controller6.toggle();
                          },
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2021/1/dd875b17-97c5-4c47-8429-29d872e65996.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/7918-shapouri-masnion/");
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
                      controller: controller6,
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
                        ShirazPage.Shapoori,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.Shapoori)
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

  Widget buildCard7(
    String title,
  ) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.orangeAccent.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                          onTap: () {
                            controller7.toggle();
                          },
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2023/5/9455666b-8fa7-4187-962a-31c9da833290.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/6960-%d8%ad%d9%85%d8%a7%d9%85-%d9%88%da%a9%db%8c%d9%84-%d8%b4%db%8c%d8%b1%d8%a7%d8%b2/");
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
                      controller: controller7,
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
                        ShirazPage.HamamVakil,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ShirazPage.HamamVakil)
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
