import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:project/pages/home_Page.dart';
//import 'package:project/theme/themes.dart';
import 'package:provider/provider.dart';

import '../cubit/cubit.dart';
import '../pages/navigatorpages/my_page.dart';
import '../pages/navigatorpages/search_page.dart';
import '../theme/themes.dart';
import 'about_app_page.dart';
import 'contact_us_page.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        //backgroundColor: Colors.white,
        // shape: const RoundedRectangleBorder(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Name,Lastname'),
              accountEmail: Text("EmaiL Address"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/navigation_drawler-picture/navMountain.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                //color: Colors.black,
              ),
              title: const Text(
                "About App(SP)",
                //style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_emergency_outlined,
               // color: Colors.black,
              ),
              title: const Text(
                "Contact Us(MP)",
                //style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactUS()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      ThemeProvider themeprovider =
                          Provider.of<ThemeProvider>(context, listen: false);
                      themeprovider.swapTheme();
                    },
                    icon: const Icon(
                      Icons.brightness_6,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
