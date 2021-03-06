/*import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FirePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .23,
              decoration:  BoxDecoration(
                color: Color(0xff64b5f6),
              ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      Text(
                        "Bienvenido",
                        // ignore: deprecated_member_use
                        style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29.5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Buscar",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          )
                        )
                      ),      
                      /*Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29.5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Buscar",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          )
                        )
                      ),*/
                        StreamBuilder(
                          stream: FirebaseDatabase.instance.collection(Farmacias).snapshot(),
                          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                            
                          },
                        ),
                        Divider(),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: .85,
                            children: <Widget>[
                              //for(int i=0;i<4;i++){
                              /*CategoryCard(
                                title: "Farmacia 1",
                                svgSrc: "assets/images/phar.png",
                                press: (){}
                              ),*/
                              /*CategoryCard(
                                title: "Farmacia 2",
                                svgSrc: "assets/images/phar.png",
                                press: (){}
                              ),
                              CategoryCard(
                                title: "Farmacia 3",
                                svgSrc: "assets/images/phar.png",
                                press: (){}
                              ),
                              CategoryCard(
                                title: "Farmacia 4",
                                svgSrc: "assets/images/phar.png",
                                press: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context){
                                      return DetailsScreen2();
                                    }),
                                  );
                                },
                              ),*/
                            ],
                          )
                        )
                    ],
                    )
                  )
              )
            ],
        ),
    );
  }
}


*/