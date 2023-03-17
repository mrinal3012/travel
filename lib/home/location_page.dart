import 'package:flutter/material.dart';
import 'package:travel/Description/deccriptionmain_page.dart';
import 'package:travel/model.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  List<Model> travelList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: modelList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: (){
              setState(() {
               travelList.add(modelList[index]);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                    DescriptionMainPage(cardList: travelList)));
              });
            },
            child: Container(
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset("${modelList[index].image}"),
                ),
                Positioned(
                    top: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${modelList[index].name}",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${modelList[index].location}",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 18,
                    right: 30,
                    child: Icon(Icons.favorite,color: Colors.redAccent,size: 30,))
              ]),
              height: 180,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
