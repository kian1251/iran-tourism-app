import 'package:app_color/app_color.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:project/App_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DesertPage extends StatefulWidget {
  static const Maranjab =
      ' یکی از معروف‌ترین کویرهای ایران در شهرستان کاشان در استان اصفهان واقع‌شده است.'
      ' مرنجاب تنها 3 ساعت با تهران فاصله دارد، کویری پر از جاذبه‌های گردشگری. تپه‌های شنی آن‌قدر معروف هستند که ممکن است فکر کنید کسی آن‌ها را از صحنه فیلم بیرون آورده است.اگر به دنبال مقصدی امن، در دسترس و محبوب در کویر گردی در اصفهان هستید، مرنجاب بهترین گزینه است. با آمدن به اینجا می‌توانید از کاروان‌سرای مرنجاب و جزیره سرگردان نیز دیدن کنید. برای بازدید از این کویر باید از آران و بیدگل، شهری کوچک نزدیک به کاشان عبور کنید.';
  static const Mesr =
      'کویر مصر از سمت غرب، جنوب غربی و جنوب شرقی توسط رشته‌کوه‌هایی احاطه‌شده است که بخشی از کوه‌های فلات مرکزی ایران هستند. تپه‌های ماسه‌ای طبیعی در دامنه این کوه مکان‌های جذابی را برای مسیرهای گردشگری و طبیعت‌گردی تشکیل می‌دهند. روستای مصر به دلیل قرار گرفتن در جنوب این کویر باشکوه دارای آب‌وهوای گرم و خشک است. در سال‌های اخیر تمرکز مردمی که در روستای مصر زندگی می‌کنند بیشتر بر روی اسکان و خدمات‌رسانی به مسافران کویر مصر بوده است.. اما قبلاً بیشتر به کشاورزی و دامداری می‌پرداختند. زعفران و گندم نیز کشت می‌کردند.';
  static const Zardgah =
      'زردگاه روستایی در استان خراسان جنوبی است. این روستا در نزدیکی دامنه کوه نایبند در 180 کیلومتری طبس قرار دارد. زردگاه یکی از مقاصد کویر گردی کمتر شناخته‌شده ایران است و در بین گردشگران خارجی محبوبیت چندانی ندارد. در گذشته ساکنان بیشتری در این روستا زندگی می‌کردند، اما این روزها کمتر از ده خانواده در آن زندگی می‌کنند .از جاذبه‌های این روستا و کویر زردگاه می‌توان به درختان نخل، پرتقال، نارنج، لیمو، چشمه آب گرم و استخر کوچک اشاره کرد.';
  static const Loot =
      'کویر لوت از سال 2016 به‌عنوان اولین اثر طبیعی ایران در یونسکو به ثبت رسیده است. لوت ارزش زمین‌شناسی فوق‌العاده‌ای دارد. یکی از ویژگی‌های بارز این کویر وسعت وسیع آن نسبت به سایر مناطق مشابه در ایران است بخش بزرگی از لوت در استان کرمان قرار دارد که 70% از کل مساحت آن را شامل می‌شود. اگر همه زیبایی‌ها و شگفتی‌های کویر را کنار بگذاریم، نمی‌توان از صحبت درباره آسمان پرستاره چشم‌پوشی کرد. عده‌ای مجذوب جاذبه‌های طبیعی کویر لوت هستند و در هرکجا که باشند خود را به کویر می‌برند تا قسمت‌های ناشناخته آن را کشف کنند.';

  const DesertPage({super.key});

  @override
  State<DesertPage> createState() => _DesertPageState();
}

class _DesertPageState extends State<DesertPage> {
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
        title: Text(
          "کویرهای ایران",
        ),
        backgroundColor: Colors.amber.withOpacity(0.5),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scrollbar(
            thickness: 3,
            thumbVisibility: true,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                buildCard(
                  "کویر مرنجاب ",
                ),
                buildCard1(
                  "کویر لوت",
                ),
                buildCard2(
                  "کویر مصر",
                ),
                buildCard3(
                  "کویر زردگاه",
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller.toggle();
                      },
                        child: Image.asset(
                          "assets/listviewimages/maranjab.png",
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 8,left: 5),
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
                                  "https://www.kojaro.com/attraction/7431-%DA%A9%D9%88%DB%8C%D8%B1"
                                      "-%D9%85%D8%B1%D9%86%D8%AC%D8%A7%D8%A8/");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ],),
                    ),
                    ExpandablePanel(controller: controller,
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
                        DesertPage.Maranjab,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => DesertPage.Maranjab)
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

  Widget buildCard1(String title,) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller1.toggle();
                      },
                        child: Image.asset(
                          "assets/listviewimages/loot.png",
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 8,left: 5),
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
                                  "https://www.kojaro.com/attraction/10687-%D8%AF%D8%B4%D8%AA-%D9%84%D9%88%D8%AA/");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),
                      ],),
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
                    ExpandablePanel(controller: controller1,
                      theme: const ExpandableThemeData(
                          iconColor: Colors.amber,
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward),
                      header: Text(
                        textAlign: TextAlign.right,
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        DesertPage.Loot,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => DesertPage.Loot)
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

  Widget buildCard2(String title,) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller2.toggle();
                      },
                        child: Image.asset(
                          "assets/listviewimages/mesr.png",
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 8,left: 5),
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
                                  "https://www.kojaro.com/attraction/7550-%DA%A9%D9%88%DB%8C%D8%B1-%D9%85%D8%B5%D8%B1/");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),

                      ],),
                    ),
                    ExpandablePanel(controller: controller2,
                      theme: const ExpandableThemeData(
                          iconColor: Colors.amber,
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward),
                      header: Text(
                        textAlign: TextAlign.right,
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        DesertPage.Mesr,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => DesertPage.Mesr)
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

  Widget buildCard3(String title,) =>
      ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller3.toggle();
                      },
                        child: Image.asset(
                          "assets/listviewimages/zardgah.png",
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 8,left: 5),
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
                                  "https://www.mihmansho.com/mag/content/2397/%D8%B7%D8%A8%DB%8C%D8%B9%D8%AA-%DA%AF%D8%B1%D8%AF%DB%8C/%DA%A9%D9%88%DB%8C%D8%B1-%D8%B2%D8%B1%D8%AF%DA%AF%D8%A7%D9%87-%D8%B7%D8%A8%D8%B3,"
                                      "-%D8%B3%D8%B1%D8%B3%D8%A8%D8%B2%D8%AA%D8%B1%DB%8C%D9%86-%DA%A9%D9%88%DB%8C%D8%B1-%D8%A7%DB%8C%D8%B1%D8%A7%D9%86!");
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.blueAccent),
                                "Tap for more information")),

                      ],),
                    ),
                    ExpandablePanel(controller: controller3,
                      theme: const ExpandableThemeData(
                          iconColor: Colors.amber,
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        DesertPage.Zardgah,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => DesertPage.Zardgah)
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
