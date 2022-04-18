import 'package:adhaar_card/adhaarView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AdhaarDetail extends StatelessWidget {
  final userdata = GetStorage();
  // For saving image


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text(
                    "Edit",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  onPressed: () {
                    userdata.write('isLogged', false);
                    userdata.remove('username');
                    Get.offAll(AdhaarView());
                  }),
            ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Adhaar Card Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text("AdhaarName: ${userdata.read('adhaarname')}"),
                        Text(
                            "Perminent address: ${userdata.read("Perminent address")}"),
                        Text("Adhaar Number: ${userdata.read("adhaarnumber")}"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
