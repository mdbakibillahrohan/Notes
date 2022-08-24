import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = "Title ";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width - 100,
                   child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                ),
                 ),
                SizedBox(height: 3,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text("This is Rohan This is Rohan This is Rohan This is Rohan"),
                  
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Clicked");
            },
            child: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 45,
            ),
          )
        ],
      ),
    );
  }
}
