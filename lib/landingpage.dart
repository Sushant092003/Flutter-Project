import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(""),
            ),
            ListTile(
              title: Text(""),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
            //color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Location...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Explore the World with us!",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent, // Background color of the circular container
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.flight,size: 35,),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent, // Background color of the circular container
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.train,size: 35,),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent, // Background color of the circular container
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.hotel,size: 35,),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent, // Background color of the circular container
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bus_alert,size: 35,),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/kolhapur1.jpg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Kolhapur",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Maharashtra, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/lakshdweep.jpeg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Lakshdweep",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Lakshdweep, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/goa.jpg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Goa",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Goa, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/mahabaleshwar.jpeg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Mahabaleshwar",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Maharashtra, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/raigad.jpeg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Raigad",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Raigad, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/ooty.jpeg"),
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            "Ooty",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("Ooty, India"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
        drawer:Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text(""),
                ),
                ListTile(
                  title: Text(""),
                )
              ],
            )
        ),
     body:Row(
       children: [
         TextField(),
       ],
     )
     SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Column(
         children: [
           Container(
             padding: EdgeInsets.only(left: 0,top: 10,bottom: 10),
             child: Row(
               children: [
                 Text("Where are you going?",style: TextStyle(fontSize: 25),),
               ],
             ),
           ),
           Row(
             children: [
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/kolhapur1.jpg"),height: 150,width: 150,),
                               Text("Kolhapur",style: TextStyle(fontSize: 20),),
                               Text("Maharashtra, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/lakshdweep.jpeg"),height: 150,width: 150,),
                               Text("Lakshdweep",style: TextStyle(fontSize: 20),),
                               Text("Lakshdweep, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/goa.jpg"),height: 150,width: 150,),
                               Text("Goa",style: TextStyle(fontSize: 20),),
                               Text("Goa, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/mahabaleshwar.jpeg"),height: 150,width: 150,),
                               Text("Mahabaleshwar",style: TextStyle(fontSize: 20),),
                               Text("Maharashtra, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/raigad.jpeg"),height: 150,width: 150,),
                               Text("Raigad",style: TextStyle(fontSize: 20),),
                               Text("Raigad, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Image(image: AssetImage("images/ooty.jpeg"),height: 150,width: 150,),
                               Text("Ooty",style: TextStyle(fontSize: 20),),
                               Text("Ooty, India"),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(width: 10,),
                   ],
                 ),
               ),
             ],
           ),
         ],
       ),
     )

    );
  }
}*/
