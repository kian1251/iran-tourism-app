import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class YazdPage extends StatefulWidget {
  static const Lari = 'خانه‌ لاری‌ها از جمله‌ بناهای تاریخی و جاهای دیدنی یزد محسوب می‌شود که هر سال پذیرای گردشگران بسیاری از سراسر ایران و جهان است. خانه لاری‌ها شامل ۶ باب خانه با معماری ویژه خانه‌های کویری می‌شود که در محله فهادان قرار دارد و به شما فرصت گشت‌وگذار در کوچه‌های قدیمی شهر را می‌دهد. این عمارت که قدمت آن به دوره قاجار می‌رسد، با شماره‌ ثبت ۱۷۸۳ در بهمن سال ۱۳۷۵ هجری شمسی به‌عنوان یکی از آثار ملی ایران به ثبت رسید.';
  static const Atashkadeh ='آتشکده یزد محل نگهداری آتش مقدس زرتشتی در شهر یزد و نیایشگاه زرتشتیان ساکن در این شهر است. قدمت این آتشکده به دوران پهلوی می‌رسد؛ هرچند آتشی كه در آن می‌سوزد، بيش از ۱۵۰۰ سال روشن مانده است. در واقع، آتش موجود در آتشکده زرتشتیان یزد، یکی از سه آتش باستانی و مقدس پیروان زرتشت از دوره ساسانیان بوده که همچنان روشن و شعله‌ور است.شکده یزد یکی از نمادهای شهر یزد و بخشی از میراث فرهنگی و تاریخی این شهر کهن و نمونه‌ای از همزیستی ادیان گوناگون در کنار یکدیگر محسوب می‌شود. این آتشکده در تاریخ ۲۲ شهریور ۱۳۷۸ هجری شمسی در فهرست آثار ملی ایران به ثبت رسید و امکان بازدید از آن برای گردشگران وجود دارد.';
  static const DoolatAbadd = 'باغ دولت آباد یکی از جاهای دیدنی شهر یزد است که از میراث جهانی ایران نیز به شمار می‌رود و به‌عنوان یکی از ۹ باغ ایرانی در فهرست میراث جهانی یونسکو به ثبت رسیده است. این باغ زیبا که در محله چهار منار قرار گرفته است، یکی از قدیمی‌ترین باغ‌‌های شهر یزد محسوب می‌شود.باغ دولت ‌آباد یزد از نمونه باغ‌های بزرگ ایران است که در سال ۱۱۶۰ هجری قمری در دوره زندیه بنا شده است. این باغ بزرگ یکی از بنیادها و آبادانی‌های محمدتقی خان مشهور به خان بزرگ، سرسلسله خاندان خوانین یزد و مرد مقتدر آن عهد و معاصر با شاهرخ میرزا و کریم‌خان زند بوده است. است. وی ابتدا قناتی با نام دولت آباد ایجاد کرد و سپس از آب آن قنات، باغ دولت آباد را به وجود آورد.';
  static const HamamKhan = 'حمام خان یزد در سال ۱۲۱۲ هجری قمری به دستور حاکم وقت یزد ساخته شد. این بنا در دوران قاجار ساخته شده و چون بیشتر بزرگان شهر از آن استفاده می‌کردند به «حمام خان» معروف شده است. این حمام در گذشته علاوه بر استفاده به عنوان محلی برای استحمام، جایی برای گذراندن اوقات فراقت، گفتگو، رفع خستگی، جمع شدن دوستان و حل و فصل مسائل زندگی بوده است. اما اکنون روح تازه‌ای در کالبد بنا دمیده شده و با تغییر کاربری آن به رستوران و چایخانه سنتی، گردشگران بسیاری را به این سو جذب می‌کند.';

  const YazdPage({super.key});


  @override
  State<YazdPage> createState() => _HickingPageState();
}

class _HickingPageState extends State<YazdPage> {

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
        backgroundColor: Colors.amber,
        title: const Text("یزد"),
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
                buildCard("خانه لاری ها",),
                buildCard1 ("آتشکده بهرام یزد",),
                buildCard2 ("باغ دولت آباد یزد",),
                buildCard3("حمام خان یزد",),
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
            color: Colors.amber.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller.toggle();
                      },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2021/11/929a69a1-837c-4df4-8185-27872471fe96.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/24136-%d8%ae%d8%a7%d9%86%d9%87-%d9%84%d8%a7%d8%b1%db%8c%d9%87%d8%a7-%db%8c%d8%b2%d8%af/");
                              },
                              child: const Text(
                                  style: TextStyle(color: Colors.blueAccent),
                                  "Tap for more information")),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    ExpandablePanel(controller: controller,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.blueAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        YazdPage.Lari,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => YazdPage.Lari)
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
            color: Colors.amber.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller1.toggle();
                      },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2021/11/f8e208b5-bff2-4620-9d74-609df0a2a3e3.jpg?w=840&h=560",
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
                                    "https://www.kojaro.com/attraction/8333-%d8%a7%d8%aa%d8%b4%da%a9%d8%af%d9%87-%d8%a8%d9%87%d8%b1%d8%a7%d9%85-%db%8c%d8%b2%d8%af/");
                              },
                              child: const Text(
                                  style: TextStyle(color: Colors.blueAccent),
                                  "Tap for more information")),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    ExpandablePanel(controller: controller1,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.blueAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        YazdPage.Atashkadeh,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => YazdPage.Atashkadeh)
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
            color: Colors.amber.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller2.toggle();
                      },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2020/6/a4dc8076-d9c1-45aa-afd4-032f714fc910.jpg",
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
                                    "https://www.kojaro.com/attraction/8567-%d8%a8%d8%a7%d8%ba-%d8%af%d9%88%d9%84%d8%aa-%d8%a7%d8%a8%d8%a7%d8%af/");
                              },
                              child: const Text(
                                  style: TextStyle(color: Colors.blueAccent),
                                  "Tap for more information")),
                          const SizedBox(
                            width: 20,
                          ),
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
                    ExpandablePanel(controller: controller2,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.blueAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        YazdPage.DoolatAbadd,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => YazdPage.DoolatAbadd)
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
            color: Colors.amber.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollOnExpand(
                child: Column(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: GestureDetector(onTap: (){
                        controller3.toggle();
                      },
                        child: CachedNetworkImage(imageUrl:
                        "https://images.kojaro.com/2016/12/c94d3920-ab4b-431f-b096-6f4e66e0b8fc.jpg",
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
                                    "https://www.kojaro.com/attraction/8502-%d8%ad%d9%85%d8%a7%d9%85-%d8%ae%d8%a7%d9%86-%db%8c%d8%b2%d8%af/");
                              },
                              child: const Text(
                                  style: TextStyle(color: Colors.blueAccent),
                                  "Tap for more information")),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    ExpandablePanel(controller: controller3,
                      theme: const ExpandableThemeData(
                          tapBodyToCollapse: true,
                          tapBodyToExpand: true,
                          collapseIcon: Icons.arrow_upward,
                          iconColor: Colors.blueAccent),
                      header: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      collapsed: const Text(
                        YazdPage.HamamKhan,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                        softWrap: true,textDirection: TextDirection.rtl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        List.generate(1, (index) => YazdPage.HamamKhan)
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
