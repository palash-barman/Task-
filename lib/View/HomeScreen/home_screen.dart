import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:wiztecbd_task/Constent/app_style.dart';
import 'package:wiztecbd_task/View/HomeScreen/Component/drawer.dart';

import '../../Constent/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF10AB83),
          ),
          backgroundColor: const Color(0xFF10AB83),
          title: Text(
            'Tabel Data',
            style: TextStyle(
                fontSize: getTextSize(22),
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Image.asset('assets/icons/menu.png'))),
        ),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(10), vertical: getHeight(10)),
            child: Column(
              children: [
                // <---------------------  Dues ----------------------->

                Table(
                  //  defaultColumnWidth: IntrinsicColumnWidth(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                      color: AppStyle.kBorderColor,
                      borderRadius: BorderRadius.circular(getWidth(2))),
                  columnWidths: {
                    //
                    0: FlexColumnWidth(getWidth(265)),
                    1: FlexColumnWidth(getWidth(80)),
                  },
                  children: [
                    TableRow(children: [
                      Column(children: [
                        headingCard(text: "Dues"),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(15),
                              vertical: getHeight(12)),
                          child: Row(
                            children: [
                              Text(
                                "Previous Due ",
                                style: AppStyle.kheadingTextStyle
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "01 January 2022",
                                style: AppStyle.kheadingTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getTextSize(12)),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: const Color(0xFFC9ECE3).withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Due",
                                style: TextStyle(
                                    fontSize: getTextSize(12),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "৳ 2000",
                                style: AppStyle.kBodyTextStyle.copyWith(
                                    color: const Color(0xFFF37048),
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      )
                    ])
                  ],
                ),
                // <---------------------  Purchase ----------------------->
                Table(
                  //  defaultColumnWidth: IntrinsicColumnWidth(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                      color: AppStyle.kBorderColor,
                      borderRadius: BorderRadius.circular(getWidth(2))),
                  columnWidths: {
                    //
                    0: FlexColumnWidth(getWidth(265)),
                    1: FlexColumnWidth(getWidth(80)),
                  },
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          headingCard(text: "Purchase"),
                          Container(
                            color: const Color(0xFFC9ECE3).withOpacity(0.3),
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(15),
                                vertical: getHeight(12)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Invoice Date : ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "01 January 2022",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Invoice No :    ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "5555555",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Table(
                            border: TableBorder.all(
                                color: AppStyle.kBorderColor,
                                borderRadius:
                                    BorderRadius.circular(getWidth(2))),
                            columnWidths: {
                              //
                              0: FlexColumnWidth(getWidth(265)),
                              1: FlexColumnWidth(getWidth(80)),
                            },
                            children: [
                              //<--------------- Purchase Product ----------------->
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.all(getWidth(15)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Text product 01",
                                        style: AppStyle.kBodyTextStyle.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getHeight(4),
                                      ),
                                      Text(
                                        "200 pcs * 300",
                                        style: AppStyle.kBodyTextStyle,
                                      ),
                                      SizedBox(
                                        height: getHeight(12),
                                      ),
                                      Text(
                                        "Text product 01",
                                        style: AppStyle.kBodyTextStyle.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getHeight(4),
                                      ),
                                      Text(
                                        "200 pcs * 300",
                                        style: AppStyle.kBodyTextStyle,
                                      ),
                                      SizedBox(
                                        height: getHeight(12),
                                      ),
                                      Text(
                                        "Text product 01",
                                        style: AppStyle.kBodyTextStyle.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getHeight(4),
                                      ),
                                      Text(
                                        "200 pcs * 300",
                                        style: AppStyle.kBodyTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.fill,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "৳ 2000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "৳ 2000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "৳ 2000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ))
                              ]),

                         //<--------------- Purchase Discount and Vat ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Discount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("VAT",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 00",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 0",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         ,

                          //<--------------- Purchase Grand total and Previous Due ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Grand Total",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Previous Due",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 500000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 20000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ]),
                               //<--------------- Purchase Total Amount and Payment ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Total Amount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Total Payment",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 700000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 40000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         
                         ,

                          //<--------------- Purchase Remainging Balance ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Remaining Balance",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                   
                                  
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 30000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                     
                                       
                                      ],
                                    ))
                              ])
                         
                         
                         
                         
                    
                         
                            ],
                          )
                        ],
                      ),



                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: const Color(0xFFC9ECE3).withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Due",
                                style: TextStyle(
                                    fontSize: getTextSize(12),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "৳ 2000",
                                style: AppStyle.kBodyTextStyle.copyWith(
                                    color: const Color(0xFFF37048),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: getHeight(10),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                )
              ,
               // <---------------------  Payment ----------------------->
                Table(
                  //  defaultColumnWidth: IntrinsicColumnWidth(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                      color: AppStyle.kBorderColor,
                      borderRadius: BorderRadius.circular(getWidth(2))),
                  columnWidths: {
                    //
                    0: FlexColumnWidth(getWidth(265)),
                    1: FlexColumnWidth(getWidth(80)),
                  },
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          headingCard(text: "Payment"),
                          Container(
                            color: const Color(0xFFC9ECE3).withOpacity(0.3),
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(15),
                                vertical: getHeight(12)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Invoice Date : ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "01 January 2022",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Invoice No :    ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "5555555",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Table(
                            border: TableBorder.all(
                                color: AppStyle.kBorderColor,
                                borderRadius:
                                    BorderRadius.circular(getWidth(2))),
                            columnWidths: {
                              //
                              0: FlexColumnWidth(getWidth(265)),
                              1: FlexColumnWidth(getWidth(80)),
                            },
                            children: [
                            
                         //<--------------- Payment Discount and Vat ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Discount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("VAT",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 00",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 0",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         ,

                          //<--------------- Payment Grand total and Previous Due ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Grand Total",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Previous Due",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 500000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 20000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ]),
                               //<--------------- Payment Total Amount and Payment ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Total Amount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Total Payment",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 700000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 40000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         
                         ,

                          //<--------------- Payment Remainging Balance ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Remaining Balance",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                   
                                  
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 30000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                     
                                       
                                      ],
                                    ))
                              ])
                         
                         
                         
                         
                    
                         
                            ],
                          )
                        ],
                      ),



                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: const Color(0xFFC9ECE3).withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Due",
                                style: TextStyle(
                                    fontSize: getTextSize(12),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "৳ 3000",
                                style: AppStyle.kBodyTextStyle.copyWith(
                                    color: const Color(0xFFF37048),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: getHeight(10),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                )
              ,
                // <---------------------  Return ----------------------->
                Table(
                  //  defaultColumnWidth: IntrinsicColumnWidth(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                      color: AppStyle.kBorderColor,
                      borderRadius: BorderRadius.circular(getWidth(2))),
                  columnWidths: {
                    //
                    0: FlexColumnWidth(getWidth(265)),
                    1: FlexColumnWidth(getWidth(80)),
                  },
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          headingCard(text: "Return"),
                          Container(
                            color: const Color(0xFFC9ECE3).withOpacity(0.3),
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(15),
                                vertical: getHeight(12)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Invoice Date : ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "01 January 2022",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Invoice No :    ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "5555555",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                         Container(height:0.5,color:AppStyle.kBorderColor,),
                          Container(
                            color: const Color(0xFFC9ECE3).withOpacity(0.3),
                            padding: EdgeInsets.symmetric(
                                horizontal: getWidth(15),
                                vertical: getHeight(12)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Return Date : ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "01 January 2022",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Return No :    ",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getTextSize(12)),
                                    ),
                                    Text(
                                      "5555555",
                                      style: AppStyle.kheadingTextStyle
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                         
                         
                         
                         
                          Table(
                            border: TableBorder.all(
                                color: AppStyle.kBorderColor,
                                borderRadius:
                                    BorderRadius.circular(getWidth(2))),
                            columnWidths: {
                              //
                              0: FlexColumnWidth(getWidth(265)),
                              1: FlexColumnWidth(getWidth(80)),
                            },
                            children: [
                              //<--------------- Return Product ----------------->
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.all(getWidth(15)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Text product 01",
                                        style: AppStyle.kBodyTextStyle.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getHeight(4),
                                      ),
                                      Text(
                                        "200 pcs * 300",
                                        style: AppStyle.kBodyTextStyle,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                                TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.fill,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                       
                                        Text(
                                          "৳ 2000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ))
                              ]),

                         //<--------------- Return Discount and Vat ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Discount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("VAT",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 00",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 0",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         ,

                          //<--------------- Return Grand total and Previous Due ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Grand Total",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Previous Due",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 500000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 20000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ]),
                               //<--------------- Return Total Amount and Payment ----------------->
                              TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Total Amount",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    SizedBox(height: getHeight(7),),
                                    
                                     Text("Total Payment",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                    
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 700000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: getHeight(7),),
                                        Text(
                                          "৳ 40000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                       
                                      ],
                                    ))
                              ])
                         
                         ,

                          //<--------------- Return Remainging Balance ----------------->
                         TableRow(children: [
                               Padding(
                                 padding: EdgeInsets.all(getWidth(15)),
                                 child: Column(
                                   crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Remaining Balance",style: AppStyle.kBodyTextStyle.copyWith(fontWeight: FontWeight.w600),),
                                   
                                  
                                  ],
                                 ),
                               ),
                               TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    child: Column(
                                     
                                      children: [
                                        Text(
                                          "৳ 30000",
                                          style: AppStyle.kBodyTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                     
                                       
                                      ],
                                    ))
                              ])
                         
                         
                         
                         
                    
                         
                            ],
                          )
                        ],
                      ),



                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.fill,
                        child: Container(
                          color: const Color(0xFFC9ECE3).withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Due",
                                style: TextStyle(
                                    fontSize: getTextSize(12),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "৳ 2000",
                                style: AppStyle.kBodyTextStyle.copyWith(
                                    color: const Color(0xFFF37048),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: getHeight(10),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                )
              ,

      SizedBox(height:getHeight(25) ,),

              Container(
                height:getHeight(48),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getWidth(5)),
                color: AppStyle.kAppMainColor
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: getWidth(10),
                        backgroundColor: Colors.white,
                        child: Center(child: Icon(Icons.add,color:AppStyle.kAppMainColor,size: getWidth(13),)), 
                                             ),
                                             SizedBox(width: getWidth(10),),
                      Text("Pay the balance",style: TextStyle(fontSize:getTextSize(18),fontWeight: FontWeight.w600,color: Colors.white),)
                    ],

                ),
              )
              
              
              
              
              ],
            )));
  }

  Widget headingCard({
    required String text,
  }) {
    return Container(
      height: getHeight(32),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: getWidth(15)),
      width: double.infinity,
      color: AppStyle.kAppMainColor,
      child: Text(
        text,
        style: AppStyle.kheadingTextStyle,
      ),
    );
  }
}
