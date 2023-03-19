import 'package:flutter/material.dart';

class HivePage extends StatelessWidget {
 // const HivePage({Key? key}) : super(key: key);

  List _country=["bangladesh","india","napel","vutan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(child: Column(
          children: [
            TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            )),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {

            }, child:Text("Add to Text",)),
            SizedBox(height: 10,),
            Expanded(child: ListView.builder(
              itemCount: _country.length,
              itemBuilder: (context, index) => Card(child: ListTile(leading: Text(_country[index]),)),))
          ],
        ),),
      ),
    );
  }
}
