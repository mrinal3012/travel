import 'package:flutter/material.dart';

class AppsIconPage extends StatelessWidget {
  const AppsIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueGrey.withOpacity(0.1),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://t4.ftcdn.net/jpg/01/00/14/31/360_F_100143199_oabx0YQ31s51VHVbD0aMysSTZ7wyXZJB.jpg"),
          )
        ],
      ),
    );
  }
}
