

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdhaarView extends StatelessWidget {
  AdhaarView({Key? key}) : super(key: key);
  String printText(String text) {
    print(text);
    return 'hello world';
  }

  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    child: Text(
                      "Adhaar Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 1.0)),
                      labelText: "Your name as per Adhaar",
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 1.0)),
                      labelText: "Permanent address",
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: false,
                    controller: myController,
                    maxLength: 16,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 1.0)),
                      labelText: "Adhaar number",
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(40),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  containerWidget('Please upload your adhaar(front side)'),
                 const SizedBox(height: 8,),
                  containerWidget('Please upload your adhaar(back side)'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget containerWidget(text) {
  return Container(
    width: 400,
    height: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: Colors.orange, width: 1.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Text(
          text,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 330,
          height: 200,
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
             color: Colors.grey,

          ),
          child: const Center(
            child:  Text("Add Image",style: TextStyle(fontSize: 12, color: Colors.white),
),
          ),
        ),
       const SizedBox(height: 5,),
       Padding(
         padding: const EdgeInsets.only(top: 5,right: 10,left: 10,bottom: 7),
         child: Row(
           children:const [
              Icon(Icons.insert_photo_rounded,color: Colors.red,size: 27,),
              SizedBox(width: 10,),
              Icon(Icons.camera_alt_rounded,color: Colors.red,size: 27,),

           ],
         ),
       )
      ]),
    ),
  );
}
