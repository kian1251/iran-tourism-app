import 'package:app_color/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*import 'package:project/App_colors.dart';
import 'package:project/cubit/cubit.dart';
import 'package:project/cubit/cubit_states.dart';
import 'package:project/pages/detailed_Page.dart';
import 'package:project/pages/home_Page.dart';
import 'package:project/pages/welcome_page.dart';*/

import '../App_colors.dart';
import '../pages/detailed_Page.dart';
import '../pages/navigatorpages/main_page.dart';
import '../pages/navigatorpages/search_page.dart';
import '../pages/welcome_page.dart';
import 'cubit.dart';
import 'cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(
        builder: (context, state) {
          if (state is WelcvomeState) {
            return   WelcomePage(); ///WELCOME PAG3E
          }
          if (state is LoadedState) {//////LOADED STATE
            return   MainPage();
          }

          if (state is DetailState) {//////Detailed PAGE LOADING DATA
            return   DetailedPage();
          }
          if (state is LoadingState) {/////LOADING STATE
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.dotSecondColor,
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
