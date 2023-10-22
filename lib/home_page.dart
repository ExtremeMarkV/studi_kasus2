import 'package:flutter/material.dart';
import 'package:studi_kasus2/style.dart';
import 'package:studi_kasus2/list_item.dart';
import 'package:studi_kasus2/makanan.dart';
import 'makanan.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    children: [
      const SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.list_alt_sharp, size: 30),
          SizedBox(width: 10),
          Text('List Kuliner', style: textHeader1),
        ]),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        // ListItem()
    ];
    
    
    return ListView.builder(
      itemCount:list_makanan.length,
    padding: const EdgeInsets.all(10),
    itemBuilder: ( context, int index) {
      return ListItem(
        makanan:list_makanan[index],
      );
      },  
);
  }
}