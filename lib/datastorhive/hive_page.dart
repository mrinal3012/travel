import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HivePage extends StatefulWidget {
  @override
  State<HivePage> createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  // const HivePage({Key? key}) : super(key: key);
  // List _country = ["bangladesh", "india", "napel", "vutan"];

  TextEditingController _controller=TextEditingController();
  TextEditingController _updetcontroller=TextEditingController();
  TextEditingController _kobita=TextEditingController();


  Box? _countryBox;
  @override
  void initState() {
    _countryBox=Hive.box("country-list");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  controller: _controller,style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(borderSide: BorderSide(  color: Colors.red),gapPadding: 12,
                        borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),gapPadding: 12,
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(height: 10,),
              Container(

                width: 350,
                child: TextField(
                  minLines: 2,
                  maxLines: 12,
                  keyboardType: TextInputType.multiline,
                  controller: _kobita,style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(borderSide: BorderSide(  color: Colors.red),gapPadding: 12,
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),gapPadding: 12,
                          borderRadius: BorderRadius.circular(15))),
                )
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    final dataValue=_controller.text;
                    _countryBox!.add(dataValue);
                  },
                  child: Text(
                    "Add to Text",
                  )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ValueListenableBuilder(valueListenable:
                  Hive.box("country-list").listenable(),
                      builder: (context, box,widget) {
                        return ListView.builder(
                          itemCount: _countryBox!.keys.toList().length,
                          itemBuilder: (context, index) => Card(
                              child: ListTile(
                                title: Text(_countryBox!.getAt(index).toString()),
                                trailing:Container(
                                  width: 100,
                                  child: Row(children: [

                                    IconButton(onPressed: (){
                                      showDialog(context: context, builder:(context) {
                                        return AlertDialog(content:
                                          Column(
                                            children: [
                                              TextField(
                                                controller: _updetcontroller,
                                              ),
                                              SizedBox(height: 20,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                ElevatedButton(onPressed: () {
                                                  _countryBox!.putAt(index,_updetcontroller.text);
                                                  Navigator.of(context).pop();
                                                }, child: Text("Add newValue")),
                                                ElevatedButton(onPressed: () {
                                                  // _countryBox!.putAt(index,_updetcontroller.text);
                                                  Navigator.of(context).pop();
                                                }, child: Text("No"))
                                              ],)
                                            ],
                                          )
                                          ,);
                                      },);
                                    },
                                      icon: Icon(Icons.edit),color:Colors.red,),

                                    IconButton(onPressed: (){
                                      _countryBox!.deleteAt(index);
                                    },
                                      icon: Icon(Icons.remove_outlined),color:Colors.red,),
                                  ],),
                                )

                              )
                          ),
                        );
                      },)

              )
            ],
          ),
        ),
      ),
    );
  }
}
