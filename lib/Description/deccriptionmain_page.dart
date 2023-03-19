import 'package:flutter/material.dart';
import 'package:travel/Description/icon_page.dart';
import 'package:travel/home/home_page.dart';
import 'package:travel/model.dart';

class DescriptionMainPage extends StatefulWidget {
  // const DescriptionMainPage({Key? key}) : super(key: key);

  List<Model> cardList;

  DescriptionMainPage({required this.cardList});


  @override
  State<DescriptionMainPage> createState() => _DescriptionMainPageState();
}

class _DescriptionMainPageState extends State<DescriptionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          itemCount: widget.cardList.length,
          itemBuilder: (context, index) => Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("${widget.cardList[index].image}"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 80, right: 20,left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                  HomePage(),));
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios,size:12,)),
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 450,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.cardList[index].name}",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${widget.cardList[index].location} \$349",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                      Colors.blueGrey.withOpacity(0.1),
                                      radius: 25,
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 31,
                                      ),
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                    Text(
                                      "2k review",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.4)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                      Colors.blueGrey.withOpacity(0.1),
                                      radius: 25,
                                      child: Icon(
                                        Icons.route,
                                        color: Colors.blue,
                                        size: 31,
                                      ),
                                    ),
                                    Text(
                                      "7km",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                    Text(
                                      "Direction",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.4)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                      Colors.blueGrey.withOpacity(0.1),
                                      radius: 25,
                                      child: Icon(
                                        Icons.bar_chart,
                                        color: Colors.redAccent,
                                        size: 31,
                                      ),
                                    ),
                                    Text(
                                      "20 C",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                    Text(
                                      "Sunny",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.4)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Descriptions",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Nusa Penida is an island located near the southeastern Indonesian "
                              "island of Bali and a district of Klungkung Regency that includes "
                              "the neighbouring small island of Nusa Lembongan and twelve even "
                              "smaller islands. The Badung Strait separates the island and Bali.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 750,
            right: 120,
            left: 120,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Book Now",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            )),
      ]),
    );
  }
}
