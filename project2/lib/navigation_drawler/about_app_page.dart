import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../theme/theme_notifier.dart';
//import '../theme/themes.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.4),
        title: const Text(
          "About App",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Theme",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),

              const SizedBox(
                height: 50,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*TextButton(
                    onPressed: () => ThemeNotifier().setTheme(AppThemes.Light),
                    style: ButtonStyle(shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                            side: const BorderSide(color: Colors.black))),),
                    child: Text(
                      "Default Theme",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () => ThemeNotifier().setTheme(AppThemes.Dark),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    side: const BorderSide(color: Colors.black))),
                       ),
                    child: Text(
                      "Dark Theme",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),*/
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
