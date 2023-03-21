import 'package:flutter/material.dart';

class ClippersPage extends StatefulWidget {
  const ClippersPage({Key? key}) : super(key: key);

  @override
  State<ClippersPage> createState() => _ClippersPageState();
}

class _ClippersPageState extends State<ClippersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ClipPath(
            clipper:,
            child: Container(height: 200,width: 200,color: Colors.red,) ,
          ),
        ),
    );
  }
}
