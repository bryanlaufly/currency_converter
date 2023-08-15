import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
  
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{

  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  // @override
  // void initState() {
  //   todo: implement initState
  //   super.initState();
  //   print('rebuild');
  // }

  // @override
  // void dispose(){
  //   print('dispose now');
  //   super.dispose();
  // }

  final fxborder =  const OutlineInputBorder(
        borderSide: BorderSide(
          color:  Color.fromARGB(255, 25, 159, 45),
          // width: 80.0,
          style : BorderStyle.solid,
        ),
  );

  @override
  Widget build(BuildContext context) {
    // print('build fn');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Currency converter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),

      body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                // color: const Color.fromARGB(255, 68, 32, 202),
              child: Text(
                // result.toString(),
                'MYR ${result != 0 ? result.toStringAsFixed(2) : 0 } ',
                style:const TextStyle(
                  color:Color.fromARGB(255, 34, 6, 133),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )
                ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                    controller: textEditingController,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      border: fxborder
                    ),
              ),
            ),
            
            Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextButton(
              onPressed: (){ 
                // print(textEditingController.text);
                // print(double.parse(textEditingController.text)*80);
                setState(() {
                  result = double.parse(textEditingController.text)*4.5;
                });       
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.amber,
                minimumSize:
                  const Size(
                    double.infinity,50
                  ),
                
                // fixedSize: MaterialStatePropertyAll(Size(200,50)),
                shape:
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                  ),       
              ),
              child: const Text("Click Me",
                    style: TextStyle(
                      fontSize: 30,
                    ),
              ),
              ),
            ), 
          ],
      ),
    );
  }
}