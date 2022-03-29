import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdhaarView extends StatelessWidget {
  AdhaarView({Key? key}) : super(key: key);
  String printText (String text){
    print(text);
    return 'hello world';
  }
  final myController = TextEditingController();
  @override
  void dispose(){
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
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    "Adhaar Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2.0)
                    ),
                    labelText: "Your name as per Adhaar",
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2.0)
                    ),
                    labelText: "Permanent address",
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
                SizedBox(
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2.0)
                    ),
                    labelText: "Adhaar number",
                    labelStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
