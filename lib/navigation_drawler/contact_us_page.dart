import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.4),
        title: const Text(
          "Contacting Us",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.telegram),
                  const SizedBox(
                    width: 15,
                  ),
                  Link(uri: Uri.parse("https://t.me/KIAN_KHOD"),
                      builder: (context, followlink) => GestureDetector(
                            onTap: followlink,
                            child: const Text(
                              "Contact via Telegram",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),),)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(Icons.email_outlined),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                    onPressed: () {
                      launch('mailto:Kian.khodayan@gmail.com');},
                    child: const Text(
                      "Contact Via Email",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
