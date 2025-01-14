// ignore_for_file: unused_import, file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, camel_case_types, sort_child_properties_last, avoid_print, unused_local_variable, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison, use_key_in_widget_constructors, prefer_final_fields, unused_field, unused_element
import 'package:caffeine_meter/main.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_meter/homePage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();

  static final TextEditingController weightController = TextEditingController();
}

class _HomePageState extends State<HomePage> {

  String _displayText1 = '';
  String _displayText2 = '';

  void _hesapla(BuildContext context){
  String weight = HomePage.weightController.text;
  double? _weight = double.tryParse(weight);

  if ((_weight == null) || (_weight<0)) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'İşlem Başarısız',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text('Girilen Değer Geçersiz veya boş. Lütfen kontrol ediniz...'),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Tamam',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.pink[100],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  } else {
    setState(() {
      _displayText1 = "Ortalama Tüketilmesi Gereken Kafein Miktarı";
    });
    setState(() {
      _displayText2 = "${_weight*4} mg";
    });
  }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caffeine Meter"),
        titleTextStyle: TextStyle(
          letterSpacing: 3,
          wordSpacing: 2,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 205, 87, 126),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 255),
            child: Text(
              "Kilonuz:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: TextField(
              controller: HomePage.weightController,
              decoration: const InputDecoration(
                hintText: "enter your weight",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                prefixIcon: Icon(
                  Icons.man_2_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
            onPressed: () {
              _hesapla(context);
            }, 
            child: Text(
      "Hesapla",
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1,
      ),
    ),
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return Color.fromARGB(255, 127, 213, 160);
        }
        return Colors.black;
      }),
    ),),
          SizedBox(
            height: 50,
          ),
          if(_displayText2.isNotEmpty)
          Text(
            _displayText1,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            _displayText2,
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}

