import 'package:dayzerapp/homepage2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index=0;
  void onTap(int index) {
    setState(() {
      _index=index;
    });
  }

  List<Widget> tabs=[
    HomePage(),
    HomePage2(),
  ];
  @override
  Widget build(BuildContext context) {
    List images =[
      "pexels-1.jpg",
      "pexels-4.jpg",
      "pexels-5.jpg",
      "pexels-6.jpg",
      "5.png"
    ];
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
      backgroundColor: Color(0xFFFBE9E7),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Container(
              margin: EdgeInsets.fromLTRB(0, 40, 110, 0),
            child: Text('Tasks for today:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            )),
          ),
              SizedBox(height: 1),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(14.2, 1, 0, 0),
                    child: Icon(Icons.star,
                color: Colors.orange,
              ),
              ),
              SizedBox(height:35),
              Text(' 5 available',
              style: TextStyle(
                fontSize: 18,
              ),
              )
    ]
          ),
              SizedBox(height:27,),
              Positioned(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal:20,vertical: 1),
                     height: 61,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search,size: 31,),
                        hintText: "   Search",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
    )
              ),
              SizedBox(height: 25,width: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                      'Last connections',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 152),
                  Text('See all')
                ],
              ),
              SizedBox(height: 10),
              Center(
                  child: Material(
                      color: Color(0xFFFBE9E7),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(50),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Wrap(
                          children: List<Widget>.generate(
                              5,
                                  (index){
                                return Padding(
                                  padding: const EdgeInsets.all(9.2),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFFFBE9E7),
                                    backgroundImage: AssetImage(
                                      "img/"+images[index],
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),

                  )
              ),
                          Container(
                                      height: 418,
                                      child: Stack(
                                      children: [
                                      Container(
                                      margin: EdgeInsets.only(top:3,left: 0.9,right:0.9),
                                      padding: EdgeInsets.only(left: 50,right: 50),
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                      )
                                     ),
                                        SizedBox(height: 2,width: 10,),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(18, 19, 10, 19),
                                              child: Text(
                                                'Active projects',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 152,height: 1,),
                                            Text('See all')
                                          ],
                                        ),
                                        SizedBox(height:10),
                                        Stack(
                                        children: [
                                        Container(
                                        margin: EdgeInsets.fromLTRB( 25, 80, 25, 190),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                            BoxShadow(
                                            blurRadius: 5,
                                            offset: Offset(2, 2),
                                            color:Colors.transparent.withOpacity(.4)
                                        )
        ]
                                        ),
                                        ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(40, 100, 3, 101),
                                                child: Text('Numero 10',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300
                                                ),),
                                              ),
                                              SizedBox(width: 216),
                                              Text('4h')
                                            ],
                                          ),//4h
                                          Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(40, 130, 3, 0),
                                                child: Text('Blog and social posts',
                                                style: TextStyle(
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              )
                                            ],
                                          ),//blog
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(40, 180, 3, 180),
                                                child: Image.asset('img/alert.png',scale:8),
                                              ),
                                              SizedBox(width:4),
                                              Text('deadline is today',
                                              style: TextStyle(
                                                fontSize: 17
                                              ),)
                                            ],
                                          )//alert
                                        ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB( 25, 243, 25, 39),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 5,
                                                    offset: Offset(2, 2),
                                                    color:Colors.transparent.withOpacity(.4)
                                                )
                                              ]
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(40, 260, 3, 110),
                                              child: Text('Grace Aroma',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w300
                                                ),),
                                              alignment: Alignment.topCenter,
                                            ),
                                            SizedBox(width: 196,height: 110,),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 127, 0, 4),
                                              child:
                                            Text('7d')
                                            )
                                          ],
                                        ),//4h
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(40, 290, 3, 0),
                                              child: Text('New capmain review',
                                                style: TextStyle(
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                            )

                                          ],
                                        ),

    ]
                                          ),
                                        ),
                                      ]
                          )
                          ),
                    );
      }
      }
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 46,
            margin: EdgeInsets.only(left: 0,top: 10,right: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('img/icon_1.jpg'),
            ),
          ),
          SizedBox(width: 8),
          Text('Hi, Kush!',
            style: TextStyle(
              color: Colors.black54,
          ),
          )
        ],
      ),
      actions: [Container(
        margin: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.notifications,
        color: Colors.black,
        ),
      )],
    );
  }

