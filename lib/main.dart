import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'page2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void nop(){

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: <Widget>[
      Image.asset(
      "assets/images/background.png",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0,60,80,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Explore".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF435b83),
                    letterSpacing: 2.3,

                  ),
                ),
                Text(
                  "New Places".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 29.0,
                    color: Color(0xFF435b83),
                  ),
                ),
              const SizedBox(
                height: 30.0,
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,65,7),
                  child: Text(
                      lorem(paragraphs: 1,words: 15),
                    style: const TextStyle(
                      color: Color(0xFF435b83),
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    onPressed:(){Get.to(()=>const Page2());} ,
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff7c6ef8),
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        textStyle:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Color(0xff7c6ef8))
                      ),
                    ),
                    child: Text(
                  "Enter".toUpperCase(),
                  style: const TextStyle(

                  ),
                ))
              ],
            ),
          ),
        ),
      )
        ],
      ),
    );
  }

}




