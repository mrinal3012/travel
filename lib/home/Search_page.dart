import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TextFormField(

            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black.withOpacity(0.5),
                ),
                hintText: "Search your trip",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          Positioned(
              right: 2,
              left: 290,
              child: Container(
                height: 60,
                width: 50,
                child: Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(100)),
              ))
        ],
      ),
    );
  }
}
