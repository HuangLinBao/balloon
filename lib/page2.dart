import 'package:balloon/tab_bar_plus.dart';
import 'package:flutter/material.dart';
import 'category_item.dart';
import 'package:footer/footer.dart';

class Page2 extends StatelessWidget {
  final TextStyle style = const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF435b83));

   const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3fbfe),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            categories,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Popular',
                    style: style,
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey
                    ),

                  )
                ],
              ),
            ),
            offers,
            SizedBox(
              height: 63.2,
              child: Footer(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        SizedBox(
                          height:50,
                          width: 50,
                          child: Card(
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(color: Colors.transparent, width: 1)
                            ),
                            color: Color(0xff7c6ef8),
                            child: const Icon(Icons.home,color: Colors.white,),
                          ),

                        ),
                        SizedBox(
                          height:50,
                          width: 50,
                          child: Card(
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(color: Colors.transparent, width: 1)
                            ),
                            child: const Icon(Icons.search,color:Color(0xff435b83),),
                          ),

                        ),
                        SizedBox(
                          height:50,
                          width: 50,
                          child: Card(
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(color: Colors.transparent, width: 1)
                            ),
                            child: const Icon(Icons.bookmark,color: Color(0xff435b83),),
                          ),

                        ),
                        SizedBox(
                          height:50,
                          width: 50,
                          child: Card(
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(color: Colors.transparent, width: 1)
                            ),
                            child: const Icon(Icons.settings,color: Color(0xff435b83),),
                          ),

                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget get header {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BackButton(
            color: Color(0xFF435b83),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Explore',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
              color: Color(0xFF435b83),
            ),
          ),
          const SizedBox(
            width: 200,
          ),
      FittedBox(
        child: SizedBox(
          height: 35.0,
          width: 35.0,
          child: FittedBox(
            child: FloatingActionButton(
                onPressed: () {},
              elevation: 0,
              backgroundColor: const Color(0xffe1ebf1),

              child: const Icon(
                Icons.filter_alt,
                color: Color(0xff435b83),
                size: 35.0,

              ),

                ),
          ),
        ),
      )
        ],
      ),
    );
  }


  Widget get categories {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: TabBarPlus()
    );
  }

  Widget get offers{
    return SizedBox(
    height: 300,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CategoryItem('assets/images/Dubai2.jpg', 'Dubai', '09/03/2023'),
              CategoryItem('assets/images/Bali2.jpg', 'Bali', '06/07/2028'),
              CategoryItem('assets/images/Iceland2.jpg', 'Iceland', '04/10/2023'),
              CategoryItem('assets/images/Maldives2.jpg', 'Maldives', '06/12/2027'),
              CategoryItem('assets/images/Salalah2.jpg', 'Salalah', '02/07/2027'),
              CategoryItem('assets/images/tarabzon2.jpg', 'Tarabzon', '19/02/2024'),
              CategoryItem('assets/images/Tokyo.jpg', 'Tokyo', '03/04/2023'),

            ],
          ),

        ),
      ),
    );
  }
}




