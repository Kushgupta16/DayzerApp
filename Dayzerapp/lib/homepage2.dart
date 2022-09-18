import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int _index=0;
  void onTap(int index) {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    List images =[
      "pexels-1.jpg",
      "pexels-2.jpg",
      "pexels-3.jpg",
      "add.svg",
    ];
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_index,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'home',backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy_rounded),label:'home',backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_sharp),label:'home',backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label:'home',backgroundColor: Colors.white),
        ],
      ),
        backgroundColor: Color(0xFFAED581),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  SizedBox(
                      height: size.height,
                      child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: size.height*0.15),
                              height: 800,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight:Radius.circular(30) ),
                                color: Colors.white,
                              ),

                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(17, 64, 12, 1),
                              child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon((Icons.close),size:29),
                                        Row(
                                          children: [
                                            Icon(Icons.more_horiz_rounded,size: 27,)
                                          ],
                                        )

                                      ],
                                    ),

                                  ]
                              )

                          ),
                          Container(
                          margin: EdgeInsets.fromLTRB(20, 180, 1, 1),
                            child: Text('Messaging ID',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                          ),
                          SizedBox(height: 2,width: 1),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(22, 250, 1, 253),
                                child: Text('Your daily plan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              SizedBox(width: 171,height: 2,),
                              Text('70%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),)
                            ],
                          ),
                          Padding(
                              padding:EdgeInsets.fromLTRB(147, 114, 1, 2),
                              child: Row(
                                children: <Widget>[
                                  new LinearPercentIndicator(
                                    barRadius: Radius.circular(60),
                                    width: 95.0,
                                    lineHeight: 4.0,
                                    percent: 0,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.black,
                                  ),
                                ],
                              )
                          ),
                          Padding(
                            padding:EdgeInsets.fromLTRB(11, 290, 1, 2),
                            child: Row(
                              children: <Widget>[
                                new LinearPercentIndicator(
                                  barRadius: Radius.circular(60),
                                  width: 369.0,
                                  lineHeight: 9.0,
                                  percent: 0.7,
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.black,
                                ),
                              ],
                            )
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(22, 324, 1, 1),
                            child: Text('4 of 6 completed',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 350, 20, 10),
                          child: GridView.count(
                            primary: false,
                            padding: const EdgeInsets.all(11),
                            crossAxisSpacing: 40,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellow[600],
                                borderRadius: BorderRadius.circular(20)),
                                padding: const EdgeInsets.all(12),
                                child: Text("17",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellow[600],
                                    borderRadius: BorderRadius.circular(20)),
                                padding: const EdgeInsets.all(12),
                                child: const Text(' 3.2',
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left:2,top: 4),
                                child: Text('Overview',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                          ],
                        ),

            ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(30, 433, 2,0),
                                child: Icon(Icons.task
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(37,470,190,0),
                              child:
                              Text('Tasks finished',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),)
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(225, 433, 2,0),
                                child: Icon(Icons.access_time
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(227,470,10,0),
                              child:
                              Text('Tracked hours',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),)
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(22, 559, 2, 0),
                                child: Text('Messaging ID framework development for the \nmarketing branch and the publicity bureau and \nimplemented a draft on the framework.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(23, 640, 2, 0),
                                child: Text('Members connected',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 590,left:1),
                            child: Center(
                                child: Material(
                                    color: Colors.white,
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: InkWell(
                                      splashColor: Colors.grey,
                                      onTap: () {},
                                      child: Wrap(
                                        children: List<Widget>.generate(
                                            4,
                                                (index){
                                              return Padding(
                                                padding: const EdgeInsets.all(9.2),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor: Colors.grey[100],
                                                  backgroundImage: AssetImage(
                                                    "img/"+images[index],
                                                  ),
                                                ),
                                              );
                                            }
                                        ),
                                      ),
                                    )
                                )
                            ),
                          ),

            ]
                  ),
                  )
                    ],
                  )
            ),

    );
  }
}
