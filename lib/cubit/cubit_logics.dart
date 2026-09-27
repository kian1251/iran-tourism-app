import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../App_colors.dart';
import '../pages/detailed_Page.dart';
import '../pages/navigatorpages/main_page.dart';
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
            return   const WelcomePage(); ///WELCOME PAG3E
          }
          if (state is LoadedState) {//////LOADED STATE
            return   const MainPage();
          }

          if (state is DetailState) {//////Detailed PAGE LOADING DATA
            return   const DetailedPage();
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
