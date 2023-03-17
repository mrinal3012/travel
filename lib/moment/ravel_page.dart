import 'package:flutter/material.dart';
import 'package:travel/model.dart';

class RavelPage extends StatelessWidget {
  const RavelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(children: [ Container(
                     width: 30,
                     height: 30,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.blue),
                     child: Center(
                         child: Text(
                           "C",
                           style: TextStyle(
                               fontSize: 25,
                               color: Colors.white,
                               fontWeight: FontWeight.w700),
                         )),
                   ),
                     SizedBox(
                       width: 10,
                     ),
                     Text(
                       "rarel",
                       style: TextStyle(
                           fontSize: 25,
                           color: Colors.black.withOpacity(.6),
                           fontWeight: FontWeight.w700),
                     )],),
                    Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.blueGrey.withOpacity(.3)),child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        icon: Icon(Icons.arrow_forward_ios_outlined)),)
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Enjoy every good \nmoment",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Keep the world adventurous forever A way to explore beautiful planet",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 48,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.redAccent.withOpacity(.9)),
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover ,
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/side-view-woman-with-backpack-sunset_23-2148579613.jpg"
                      ))))
        ],
      ),
    );
  }
}
