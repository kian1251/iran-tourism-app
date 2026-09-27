import 'package:flutter/cupertino.dart';


import '../App_colors.dart';
import 'app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({super.key, this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.textColor3),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppTextText(
                      text: "Something to DO",
                      color: AppColors.welcomeBackgroundColor,
                    ))
                : Container(),
            Container(
                margin: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/WelcomePage/welcome-button.png",
                  color: AppColors.welcomeBackgroundColor,
                )),
          ],
        ),
      ),
    );
  }
}
