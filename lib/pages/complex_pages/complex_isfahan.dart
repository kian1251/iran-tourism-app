import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ComplexIsfahan extends StatefulWidget {
  static const Alighapoo = 'کاخ عالی قاپو در میدان نقش جهان اصفهان '
      'از زیباترین نمونه‌های معماری دوره صفویان به شمار می‌آید. عمارت عالی قاپو با معماری برجسته و تزیینات قابل‌توجه از هنرمندان سرشناس ایرانی، توجه بسیاری '
      'از گردشگران داخلی و خارجی را به خود جلب می‌کند. از مهم‌ترین بخش‌های کاخ عالی قاپو می‌توان به سر در ورودی کاخ، تالارهای مجلل، تالار موسیقی در بالاترین طبقه و'
      ' آثار هنری برجسته در نقاط مختلف عمارت عالی قاپو اشاره کرد. پایه‌های اصلی این عمارت، بر چوب بنا شده‌اند و همین بر جذابیت معماری کاخ عالی قاپو می‌افزاید.';
  static const Emam =
      'مسجد امام که به نام‌های مسجد جامع عباسی، مسجد سلطانی و مسجد شاه نیز شهرت دارد، یکی '
      'از مساجد میدان نقش جهان است که در دوران صفوی ساخته شد. این اثر از بناهای مهم معماری اسلامی ایران به‌ شمار می‌رود و از مشهورترین جاهای دیدنی اصفهان محسوب می‌شود. '
      'مسجد امام شاهکاری جاویدان از معماری در قرن یازدهم هجری است و در تاریخ ۱۵ دی ۱۳۱۰ با شماره ثبت ۱۰۷ به‌عنوان یکی از آثار ملی ایران به ثبت رسید.';
  static const Gheysarie =
      'بازار قیصریه یکی از معروف‌ترین بازارهای تاریخی ایران و جاهای دیدنی اصفهان است و به بازار شاهى نیز شهرت دارد. '
      'این بازار از سردر قیصریه شروع، به بازار چیت‌ساز‌ها و از آنجا به بازار دارالشفا منتهى می‌شود. بازار قیصریه یکی از مراکز مشهور صنایع دستی به شمار می‌آید. این بازار '
      'از بزرگ‌ترین و مجلل‌ترین مرکز خریدوفروش در دوران صفویه بوده است. به‌طور کلی بازار سرپوشیده اصفهان چند کیلومتر طول دارد که هر بخش آن کالای ویژه‌ای تولید و فروخته می‌شود.'
      ' بازار بزرگ اصفهان که بازار قیصریه بخشی از آن است، درب‌های ورودی مختلفی داشته است. ';
  static const Lotf = 'مسجد شیخ لطف الله که در میدان نقش جهان اصفهان'
      ' قرار دارد، در ۱۵ دی سال ۱۳۱۰ در فهرست آثار ملی ایران قرار گرفته است و با معماری، کاشی‌کاری و تزیینات فوق‌العاده، زیباترین و بهترین جلوه‌های هنر دوره صفوی را به نمایش'
      ' می‌گذارد. این بنای باشکوه که از جاهای دیدنی اصفهان محسوب می‌شود، قرن‌ها است که روبه‌روی عمارت عالی قاپو و ضلع شرقی میدان نقش جهان خودنمایی می‌کند و نگاه هر گردشگر داخلی'
      ' و خارجی را به خود جذب می‌کند.استاد محمدرضا اصفهانی یکی از مشهورترین معماران عصر صفوی بود که توانست سبک معماری اصفهانی را به زیبایی هرچه تمام‌تر در این محل اجرا کند.';

  const ComplexIsfahan({super.key});

  @override
  State<ComplexIsfahan> createState() => _IsfahanPageState();
}

class _IsfahanPageState extends State<ComplexIsfahan> {
  late ExpandableController controller;
  late ExpandableController controller1;
  late ExpandableController controller2;
  late ExpandableController controller3;

  @override
  void initState() {
    super.initState();
    controller = ExpandableController();
    controller1 = ExpandableController();
    controller2 = ExpandableController();
    controller3 = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Naghsh-e Jahan Complex"),
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
                  "کاخ عالی قاپو",
                ),
                buildCard1(
                  "مسجد شیخ لطف الله",
                ),
                buildCard2(
                  "مسجد امام اصفهان",
                ),
                buildCard3(
                  "بازار قیصریه",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title,) =>
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
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2023/5/49e4a3f9-8853-47f0-a767-d49cdf491b31.jpg?w=840&h=560",
                            imageBuilder: (context, imageProvider) =>
                                Image(image: imageProvider),
                            placeholder: (context, url) => Container(
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                color: Colors.greenAccent,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset("assets/error/error.png"),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.link, size: 30,),
                          const SizedBox(width: 2,),
                          InkWell(onTap: () {
                                launch(
                                    "https://www.kojaro.com/attraction/7576-%d8%b9%d8%a7%d9%84%db%8c-%d9%82%d8%a7%d9%be%d9%88%db%8c"
                                    "-%d8%a7%d8%b5%d9%81%d9%87%d8%a7%d9%86/");},
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",)),
                          const SizedBox(
                            width: 20,
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
                          fontWeight: FontWeight.bold,),),
                      collapsed: const Text(
                        ComplexIsfahan.Alighapoo,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                      expanded: Text(
                        List.generate(1, (index) => ComplexIsfahan.Alighapoo)
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
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2023/5/5e1fb475-9633-4992-a6e9-753056b1c02e.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/7425-%d9%85%d8%b3%d8%ac%d8%af-%d9%84%d8%b7%d9%81-%d8%a7%d9%84%d9%84%d9%87/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
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
                        ComplexIsfahan.Lotf,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ComplexIsfahan.Lotf)
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
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2021/3/003ce220-ee05-4a5e-8510-9895efdb7dd5.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/7580-%d9%85%d8%b3%d8%ac%d8%af-%d8%a7%d9%85%d8%a7%d9%85-%d8%a7%d8%b5%d9%81%d9%87%d8%a7%d9%86/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
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
                        ComplexIsfahan.Emam,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ComplexIsfahan.Emam)
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
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.kojaro.com/2021/5/180eb914-70ce-4460-aa88-15ad32e62b58.jpg",
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
                                    "https://www.kojaro.com/attraction/7544-%d8%a8%d8%a7%d8%b2%d8%a7%d8%b1-%d9%82%db%8c%d8%b5%d8%b1%db%8c%d9%87/");
                              },
                              child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information",
                              )),
                          const SizedBox(
                            width: 20,
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
                        ComplexIsfahan.Gheysarie,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => ComplexIsfahan.Gheysarie)
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
