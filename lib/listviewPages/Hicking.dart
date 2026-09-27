import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HickingPage extends StatefulWidget {
  static const Saadabad =
      ' کاخ سعدآباد کی از مهم‌ترین جاذبه های تاریخی تهران  است.ادگاری ارزشمند از قاجارها و پهلوی‌ها به شمار می‌رود.موزه‌های متعدد و منحصر‌به‌فردی را در خود جای داده است که می‌توانند پاسخگوی همه سلیقه‌ها باشند.یکی از مکان‌های محبوب برای عکاسی در تهران است.امکانات خوبی از جمله کافه و رستوران دارد و گشت کاملی را برای‌تان فراهم می‌کند.پیاده‌روی دلچسبی را می‌توانید در آن تجربه کنید.یکی از بهترین مکان‌ها برای گردش خانوادگی و دوستانه است.گنجینه‌های ارزشمند و بی‌بدیلی در خود دارد.می توانید ترکیبی از معماری ایرانی و اروپایی را در آن ببینید.';
  static const Chitgar =
      'پارک جنگلی چیتگر یکی از مهم‌ترین قطب‌های گردشگری غرب تهران است.اولین پیست دوچرخه‌سواری ویژه زنان در بوستان ریحانه این پارک تاسیس شده است.یکی از پارک‌های بزرگ شهر تهران محسوب می‌شود.دارای امکانات تفریحی مناسبی برای بازدیدکنندگان است.گونه‌های متنوع گیاهی و جانوری این بوستان در نوع خود بسیار جالب و دیدنی‌اند.چشم‌اندازهای بسیار متنوعی را در این بوستان نظاره‌گر خواهید بود.به دلیل موقعیت این بوستان دسترسی به آن آسان است.';
  static const Parklaleh =
      'پارک لاله یکی از پارک های قدیمی تهران است که فضایی خاطره انگیز و نوستالژیک دارد.این پارک می تواند اوقات فراغت شاد و مفرحی را برای شما رقم بزند.پارک لاله به راحتی با استفاده از وسایل حمل و نقل عمومی در دسترس است.امکانات مناسب از جمله زمین بازی کودکان، مسیر ویژه دوچرخه سواری و آلاچیق هایی برای برپایی پیک نیک دغدغه ای برای یک روز مفرح برای تان باقی نمی گذارد.بازارچه خود اشتغالی لاله در این پارک، جذابیت خاصی دارد و فرصت خرید صنایع دستی را به شما می دهد.';
  static const Niyavaran =
      'کاخ نیاوران محل زندگی آخرین شاه ایران به همراه خانواده اش بوده و از مهم‌ترین مکان های دیدنی تهران محسوب می شود.تلفیقی جالب از معماری ایرانی و اروپایی را در این کاخ شاهد خواهید بود.ین کاخ در میان باغی بسیار زیبا قرار دارد که دارای مناظر چشم نوازی است.تنها ساختمان سلطنتی در ایران است که سقف آن به صورت بازشو طراحی شده است.در کنار بازدید از این کاخ می توانید از دیگر بناهای تاریخی همچون کوشک احمدشاهی و کاخ زیبای صاحبقرانیه نیز دیدن کنید.';
  static const Golestan =
      'کاخ گلستان یکی از آثار جهانی ایران در فهرست میراث یونسکو است که به‌لطف معماری و تزیینات منحصربه‌فرد، محلی ایدئال برای عکاسی و ثبت تصاویر فوق‌العاده زیبا به شمار می‌رود. این بنای ارزشمند در سال ۱۳۳۴ در فهرست آثار ملی ايران و در سال ۱۳۹۲ در فهرست ميراث جهانی یونسکو به ثبت رسید. علاوه بر این، وقوع رخدادهای تاریخی مهم در این محل، آن را به سندی زنده از تاریخ ایران تبدیل کرده است. این مجموعه که از جاهای دیدنی تهران به حساب می‌آید، در بافت قدیمی شهر قرار دارد و به‌راحتی می‌توان با وسایل حمل‌ونقل عمومی به آن دسترسی داشت و مسحور اين همه زيبايی، تاريخ، معماری، فرهنگ و هنر ایران شد.';
  static const Melat =
      'بوستان ملت یکی از جاهای دیدنی تهران است و با 34 هکتار وسعت، یکی از بزرگترین آنها به شمار می رود. بوستان ملت از قسمت های مختلف تشکیل شده است و با ورودی بسیار زیبا، پردیس گالری ملت، دریاچه مصنوعی، مجسمه های مفاخر ایران زمین، باغ وحشی کوچک، فضای سبز گل کاری شده و درختانی قدیمی و سر به فلک کشیده در میان دیگر پارک های تهران دلبری می کند. بوستانی که در فصل بهار برای گل های لاله رنگارنگی که در جای جای پارک دیده می شود و برای سرسبزی و سایه درختان خود در فصل تابستان مشهور شده است';

  const HickingPage({
    super.key,
  });

  @override
  State<HickingPage> createState() => _HickingPageState();
}

class _HickingPageState extends State<HickingPage> {
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
        backgroundColor: Colors.cyan,
        title: const Text("تهران"),
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
                  "پارک ملت ",
                ),
                buildCard1(
                  "کاخ نیاوران",
                ),
                buildCard5(
                  "کاخ گلستان",
                ),
                buildCard2(
                  "کاخ سعدآباد",
                ),
                buildCard3(
                  "پارک جنگلی چیتگر",
                ),
                buildCard4(
                  "پارک لاله تهران",
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
            color: Colors.teal.withOpacity(0.3),
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
                              "https://www.eghamat24.com/blog/wp-content/uploads/2021/12/%D9%BE%D8%A7%D8%B1%DA%A9-%D9%85%D9%84%D8%AA-%D8%AA%D9%87%D8%B1%D8%A7%D9%86.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 8),
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
                                    "https://www.karnaval.ir/things-to-do/mellat-park-tehran");
                              },
                              child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 2,
                                  style: TextStyle(color: Colors.blueAccent),
                                  "Tap for more information")),
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
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Melat,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Melat)
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
            color: Colors.teal.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller1.toggle();
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://media.karnaval.ir/uploads/2018/08/rlaTke0tRGaQ25md-1534306809067.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 8),
                      child: Row(children: [
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
                                  "https://www.karnaval.ir/things-to-do/niavaran-private-palace-tehran");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ]),
                    ),
                    ExpandablePanel(
                      controller: controller1,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Niyavaran,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Niyavaran)
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
            color: Colors.teal.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller2.toggle();
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://media.karnaval.ir/uploads/2018/07/PXWKq5aQtNzEfQ90-1530685082155.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 8),
                      child: Row(children: [
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
                                  "https://www.karnaval.ir/things-to-do/sadabad-complex-tehran");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ]),
                    ),
                    ExpandablePanel(
                      controller: controller2,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Saadabad,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Saadabad)
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
            color: Colors.teal.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller3.toggle();
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://media.karnaval.ir/uploads/2021/12/aaccb390-106c-4d48-a77a-1cc7bcdb614f.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 8),
                      child: Row(children: [
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
                                  "https://www.karnaval.ir/things-to-do/chitgar-park-tehran");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ]),
                    ),
                    ExpandablePanel(
                      controller: controller3,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Chitgar,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Chitgar)
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
            color: Colors.teal.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller4.toggle();
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://media.karnaval.ir/uploads/2019/07/03aad4c2-4aa6-432a-b02c-2a9a2c11f955.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 9),
                      child: Row(children: [
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
                                  "https://www.karnaval.ir/things-to-do/laleh-park-tehran");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ]),
                    ),
                    ExpandablePanel(
                      controller: controller4,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Parklaleh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Parklaleh)
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
            color: Colors.teal.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(
                        onTap: () {
                          controller5.toggle();
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://images.kojaro.com/2020/9/65963fa4-b007-4267-8520-8309fb2e00ad.jpg",
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, top: 9),
                      child: Row(children: [
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
                                  "https://www.karnaval.ir/things-to-do/laleh-park-tehran");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ]),
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
                      controller: controller5,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.amber),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        HickingPage.Golestan,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => HickingPage.Golestan)
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
