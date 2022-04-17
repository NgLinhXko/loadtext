import 'package:flutter/material.dart';
import 'package:nckh_e4k/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nckh_e4k/model/Data_e4k.dart';
import 'package:nckh_e4k/model/Data.dart';
import 'package:nckh_e4k/service.dart';
import 'dart:io';




class E4KHomePage extends StatefulWidget {
  const E4KHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: no_logic_in_create_state
  State<E4KHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<E4KHomePage> {
  DataE4k? dataE4k;
  List<Data>? dataE4ks;

  Service ?service;
  void initState() {
    getData();
    super.initState();
  }

  getData() async{
    ///Khởi tạo service
    service = Service();
    await
    Service?.getData().then((value) {
      print('check ${value}');
      if(value!=null){
        setState(() {
          dataE4k = value;
          dataE4ks = dataE4k?.data;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: null,
        ),
        centerTitle: true,
        title: new Text(
          "Number 5/25",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body:
      // Container(
      //       //constraints: BoxConstraints.expand(),
      //       decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('images/backh.png'),
      //               fit: BoxFit.cover)),
      //     child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 50.0, bottom: 3.0 ),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //             borderRadius: BorderRadius.all(Radius.circular(6.0)),
      //           image: DecorationImage(
      //             fit: BoxFit.fill,
      //             image: NetworkImage(
      //               'images/h1_p6.png',
      //             ),
      //           ),
      //         ),
      //
      //       ),
              SafeArea(
              child: dataE4ks != null
              ? ListView.builder(
              itemCount: dataE4ks?.length,
              itemBuilder: (context, int) {
              return
            Container(
              margin: EdgeInsets.only(top: 50.0),
              width: 900,

              child: Card(
                shadowColor: Colors.grey,
                elevation: 10,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue) ,
                      // : MaterialStateProperty.all<Color>(
                      //     Colors.red),
                    ),
                    child: Container(
                      //height: 80,
                      color: Colors.blue,
                      child: Expanded(
                        child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          dataE4ks ? [int].name ?? '',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),

                          ),
                    )
                ),
              ),

            );
              },
              )
                  : Center(
                child: CircularProgressIndicator(),
              )

              ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: 'Translate',
          ),
        ],

        selectedItemColor: Colors.amber[800],
      )
    );
  }
}

