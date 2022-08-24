import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notes/widgets/list_item.dart';
import 'add_items.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Notes",
      home: Home(),
      routes: {
        '/add-items': (context)=>AddItems(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note"),
        centerTitle: true,
      ),
      body: Container(
        child:  ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
          return ListItem();
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add-items');
        },
        child: Icon(Icons.add),
        ),

        
    );
  }
}


