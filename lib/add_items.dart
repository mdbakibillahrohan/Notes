import 'package:flutter/material.dart';

class AddItems extends StatefulWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextField(
              style: TextStyle(
                fontSize: 25,
              ),
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              enabled: false,
              maxLines:  10,

              decoration: InputDecoration(
                hintText: "Your notes",
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: ()=>debugPrint("clicked"), child: const Text("Add Notes")),
          ],
        ),
      ),
    );
  }
}
