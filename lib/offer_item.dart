import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "dart:math";

class OfferItem extends StatefulWidget {

  late String img;
  late String city;
  late TextStyle styleCity;

  OfferItem(String image, String cityName, {Key? key}) : super(key: key) {
    img = image;
    city = cityName;
    styleCity = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xfff3fbfe));

  }

  @override
  State<OfferItem> createState() => _OfferItemState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextStyle>('style_city', styleCity));
  }
}

class _OfferItemState extends State<OfferItem> {
  var list = ['1','1.5','2','2.5','3','3.5','4','4.5','5'];

  final _random = Random();

  @override
  Widget build(BuildContext context) {
    var element = list[_random.nextInt(list.length)];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

        ),

        child: Stack(
          children: [
            Card(
              shape:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.transparent, width: 1)
              ),
              child: Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)) ,
                  child: Image.asset(
                        widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              shadowColor: const Color(0xff26364b),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(

                widget.city,
                textAlign: TextAlign.left,
                style: widget.styleCity,
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: SizedBox(
                  width: 45,
                  height: 25,
                  child: Card(
                    color: const Color(0xfff3fbfe),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.transparent, width: 1)
                    ),
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: Color(0xffffc841),
                            ),
                            Text(
                              element,
                              style: const TextStyle(
                                fontSize: 9.5,
                                  color: Color(0xFF435b83),
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ) ,
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                child: FittedBox(
                  child: SizedBox(
                    height: 25.0,
                    width: 25.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: const Color(0xfff3fbfe),

                        child: const Icon(
                          Icons.bookmark,
                          color: Color(0xff435b83),
                          size: 35.0,

                        ),

                      ),
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
