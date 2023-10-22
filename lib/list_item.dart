import 'package:flutter/material.dart';
import 'package:studi_kasus2/detail_page.dart';
import 'package:studi_kasus2/style.dart';
import 'package:studi_kasus2/makanan.dart';



class ListItem extends StatelessWidget {

  final Makanan makanan;

const ListItem(
  {super.key,required this.makanan}
);

  

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          makanan : makanan
        ),
      ),
    );
  },
      child: Container(
        //...
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 178, 178, 178),
                      offset: Offset(10.0, 10.0),
                      blurRadius: 6.0,
                  ),
                  ],
              ),
              height: 100,
              padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  makanan.gambar,
              width: 85,
              height: 75,
          ),
          SizedBox(
              width: 10,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                  makanan.nama,
                  style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              Text(
                  makanan.deskripsi,
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  ),
              ),
              ]),
              ],
            ),
      ),
    );
  }
}