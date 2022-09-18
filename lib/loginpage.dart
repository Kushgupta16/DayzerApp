import 'package:dayzerapp/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _buildAppBar(),
          body: SingleChildScrollView(
              child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.fromLTRB(55, 30, 10, 10),
                            child: Text(
                              'To simplify the way you work',
                              style: TextStyle(
                                  fontSize: 52,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Container(
                                    height: 220,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "img/logo1_m.png",
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(height: 38,),
                                Text(
                                  'Controlling deliveries in\n reliable and no-hassle way.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(1, 26, 1, 1),
                                  width: 1000,
                                  height: 90,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 10),
                                  child: ElevatedButton(
                                    child: const Text('Get free Trial'),
                                    onPressed: () {
                                      Get.off(() => HomePage());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        textStyle: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),

                                  ),
                                )


                              ]

                          ),


                        ],

                      )

                ),






      );

    }
  }
AppBar _buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text('  Dayzer',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 42
            ),
          )
        ],
      ),
    ),
    actions: [Container(
      margin: EdgeInsets.only(top: 15,right: 20),
      child: Icon(
        Icons.star,
        color: Colors.white,
      ),
    )
    ],
  );
}
