import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project2/services/data_services.dart';
import 'package:project2/theme/themes.dart';
import 'package:provider/provider.dart';
/*import 'package:project/App_colors.dart';
import 'package:project/cubit/cubit.dart';
import 'package:project/cubit/cubit_logics.dart';
import 'package:project/pages/detailed_Page.dart';
import 'package:project/pages/home_Page.dart';
import 'package:project/pages/navigatorpages/main_page.dart';
import 'package:project/pages/welcome_page.dart';
import 'package:project/services/data_services.dart';
import 'package:project/splashscreen.dart';
import 'package:project/theme/themes.dart';
import 'package:project2/services/data_services.dart';
import 'package:project2/theme/themes.dart';
import 'package:provider/provider.dart';*/
import 'package:shared_preferences/shared_preferences.dart';

import 'App_colors.dart';
import 'cubit/cubit.dart';
import 'cubit/cubit_logics.dart';
//import 'package:project/theme/theme_notifier.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return runApp(ChangeNotifierProvider(
      create: (BuildContext context) =>
          ThemeProvider(isDarkMode: prefs.getBool("isDarkTheme") ?? false),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder:
          (BuildContext context, ThemeProvider themeProvider, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.getTheme.copyWith(
              scrollbarTheme: ScrollbarThemeData().copyWith(
                  thumbColor:
                  MaterialStateProperty.all(AppColors.dotSecondColor))),
          /*ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            //useMaterial3: true,
          ),*/
          home: BlocProvider<AppCubits>(
            create: (context) => AppCubits(data: DataServices()),
            child: const AppCubitLogics(),
          ),
        );
      },
    );
  }
}
