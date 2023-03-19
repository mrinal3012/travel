import 'package:flutter/material.dart';
import 'package:travel/home/Search_page.dart';
import 'package:travel/home/appsicon_page.dart';
import 'package:travel/home/catagori_page.dart';
import 'package:travel/home/facility_page.dart';
import 'package:travel/home/location_page.dart';
import 'package:travel/moment/ravel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(flex: 2, child: AppsIconPage()),
            Expanded(flex: 1, child: TextButton(onPressed: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RavelPage(),));
              });
            }, child:Text("Let's enjoy", style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),),),
            Expanded(flex: 1, child: Text("your vacation!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black.withOpacity(0.8)),),),
            Expanded(flex: 2, child: SearchPage()),
            Expanded(flex: 1, child: CatagoriPage()),
            Expanded(flex: 5, child: LocationPage()),
            Expanded(flex: 1, child: Text("Popular categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),),
            Expanded(flex: 3, child: FacilityPage())
          ],),
        ),
      ),
    );
  }
}
