import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClippersPage extends StatefulWidget {
  const ClippersPage({Key? key}) : super(key: key);

  @override
  State<ClippersPage> createState() => _ClippersPageState();
}

class _ClippersPageState extends State<ClippersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Center(
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              bottom: 180,
                top: 180,
                left: 205,
                right: 135,
                child: CircleAvatar(
              radius: 20,backgroundImage:
                NetworkImage("https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000"),))
          ],
        )

    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0, 300);
    path.lineTo(300, 150);
    path.lineTo(0, 0);
    path.quadraticBezierTo(300, 150, 0, 300);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;

}