import 'package:flutter/material.dart';

class CatagoriPage extends StatefulWidget {
  const CatagoriPage({Key? key}) : super(key: key);

  @override
  State<CatagoriPage> createState() => _CatagoriPageState();
}

class _CatagoriPageState extends State<CatagoriPage> {
  bool isColor=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  isColor=!isColor;
                });
              },
              child: Text(
                "All",
                style: TextStyle(
                    fontSize: 16,
                    color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  isColor=!isColor;
                });
              },
              child: Text(
                "New",
                style: TextStyle(
                    fontSize: 16,
                    color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  isColor=!isColor;
                });},
              child: Text(
                "Most Viewed",
                style: TextStyle(
                    fontSize: 15,
                    color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  isColor=!isColor;
                });},
              child: Text(
                "Recommeded",
                style: TextStyle(
                    fontSize: 15,
                    color: isColor==true?Colors.blue:Colors.blueGrey.withOpacity(.7)),
              )),
        ],
      ),
    );
  }
}
