import 'package:flutter/material.dart';

class IconPape extends StatefulWidget {
  const IconPape({Key? key}) : super(key: key);

  @override
  State<IconPape> createState() => _IconPapeState();
}

class _IconPapeState extends State<IconPape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => HomePage(),
                      // )
                      // );
                    });
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, right: 20),
            child: Icon(
              Icons.more_horiz_outlined,
              size: 40,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
