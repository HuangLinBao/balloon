import 'offer_item.dart';
import 'package:flutter/material.dart';

class TabBarPlus extends StatefulWidget {
  const TabBarPlus({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabBarPlus> {
  static const TextStyle style = TextStyle(fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(

         children:[
           PreferredSize(
               preferredSize: const Size.fromHeight(70),
               child: Align(
                 alignment: Alignment.centerLeft,
                 child: SizedBox(
                   width: MediaQuery.of(context).size.width * 0.8,
                   height: MediaQuery.of(context).size.height * 0.03,
                   child: TabBar(
                       unselectedLabelColor: const Color(0xff435b83),
                       indicatorSize: TabBarIndicatorSize.tab,
                       indicator: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: const Color(0xff7c6ef8)),
                       tabs: [
                         Tab(
                           child: Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 border: Border.all(
                                     color: Colors.transparent, width: 1)),
                             child: const Align(
                               alignment: Alignment.center,
                               child: Text("Sights", style: style,),

                             ),
                           ),
                         ),
                         Tab(
                           child: Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 border: Border.all(
                                     color: Colors.transparent, width: 1)),
                             child: const Align(
                               alignment: Alignment.center,
                               child: Text("Tour", style: style,),
                             ),
                           ),
                         ),
                         Tab(
                           child: Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 border: Border.all(
                                     color: Colors.transparent, width: 1)),
                             child: const Align(
                               alignment: Alignment.center,
                               child: Text("Adventure",style: style,),
                             ),
                           ),
                         ),
                       ]),
                 ),
               )),
           const SizedBox(
             height: 7,
           ),
           SizedBox(
             height: 250,
             child: TabBarView(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children:[
                           OfferItem('assets/images/Dubai.jpg', 'Dubai'),
                           OfferItem('assets/images/Iceland.jpg', 'Iceland'),
                           OfferItem('assets/images/Maldives.jpg', 'Maldives'),
                           OfferItem('assets/images/Bali.jpg', 'Bali'),
                           OfferItem('assets/images/Salalah.jpg', 'Salalh'),
                           OfferItem('assets/images/tarabzon.jpg', 'Tarabzon'),
                           OfferItem('assets/images/Tokyo2.jpg', 'Tokyo'),

                         ],
                       ),
                     ),
                   ),
                const Center(
                  child: Text("Surprise!!",style: TextStyle(fontSize: 20,color:Color(0xff435b83)),),
                ),
                   const Center(
                     child: Text("cool huh? I still don't get the tabBar shit tho",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color:Color(0xff435b83), ),),
                   ),

             ]),
           ),
         ],
        ));
  }
}