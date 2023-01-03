import 'package:flutter/material.dart';

import 'package:wiztecbd_task/Constent/size_config.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {


    var selectIndex =0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
              margin: const EdgeInsets.only(bottom: 14),
                decoration:  BoxDecoration(
                    color: const Color(0xFF10AB83),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(getWidth(8)),
                        bottomRight: Radius.circular(getWidth(8)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Scaffold.of(context).closeDrawer();
                        },
                        icon:const Icon(Icons.close,color: Colors.white,)),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Demo Limited Company',
                      style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                    )
                  ],
                )),
             Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
               child: ExpansionTile(
                collapsedBackgroundColor:
                    selectIndex==0? 
                     const Color(0xFFC9ECE3):Colors.transparent,
                  iconColor: const Color(0xFF10AB83),
                  title: const Text(
                    'Purchase',
                    style: TextStyle(fontSize: 14, color: Color(0xFF10AB83)),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 80),
                  leading: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/cart.png')),
                  children:  [
                    listItem(text: "Purchase List"),
                    listItem(text: "Order List"),
                    listItem(text: "VAT List"),
                    listItem(text: "Product Unit"),
                    listItem(text: "Purchase Report"),
                   
                  ],
                ),
             ),
            
            ExpansionTile(
               collapsedBackgroundColor:
                    selectIndex==1? 
                     const Color(0xFFC9ECE3):Colors.transparent,
              title: Text(
                'Sell',
                style: TextStyle(
                    fontSize: 14, color: const Color(0xFF000000).withOpacity(0.6)),
              ),
              leading: IconButton(
                  onPressed: () {}, icon: Image.asset('assets/icons/sell.png')),
            ),
            ExpansionTile(
              
               collapsedBackgroundColor:
                    selectIndex==2? 
                     const Color(0xFFC9ECE3):Colors.transparent,
              title: Text(
                'Stock / Inventory',
                style: TextStyle(
                    fontSize: 14, color: const Color(0xFF000000).withOpacity(0.6)),
              ),
              leading: IconButton(
                  onPressed: () {}, icon: Image.asset('assets/icons/stock.png')),
            )
          ]),
        );
      
      
  }

  Widget listItem({required String text}) {
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
                    title: Text(
                      text,
                      style: const TextStyle(fontSize: 12, color: Color(0xFF10AB83)),
                    ),
                  );
  }
}