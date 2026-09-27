import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.only( top: 10,right: 20, left: 20,bottom: 20),
        child: Scrollbar(trackVisibility: true,thumbVisibility: true,
          child: SingleChildScrollView(
            child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(0.2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/logo.png",
                          ),
                          Text(
                            "Welcome to our app!\n\nWe are passionate about making your travel experiences seamless and enjoyable.\n\n"
                            "As the developer of this app, I am dedicated to creating a user-friendly platform that helps you explore Iran with ease.\n\n"
                            "This project would not have been possible without the invaluable guidance and support of my professor, Razieh Rastgoo. Her expertise and mentorship have been instrumental in bringing this app to life.",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
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
}
