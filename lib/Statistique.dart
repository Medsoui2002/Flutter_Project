import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Statistique extends StatefulWidget {
  const Statistique({Key? key}) : super(key: key);

  @override
  State<Statistique> createState() => _StatistiqueState();
}

class _StatistiqueState extends State<Statistique> {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover)
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: ImageIcon(
              AssetImage('assets/logo.png'),
              size: 60,

            ),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
    child:Column(
    children: [Container(

            padding: const EdgeInsets.only(left: 5, top: 30, right: 35),
            child: const Text('Statistique',
                style: TextStyle(color: Colors.white, fontSize: 50)),
          ),
            SizedBox(height: 60.0),
            Container(
              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                        InputDecoration(hintText: 'Selectionner une date',
                            fillColor: Colors.transparent,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.greenAccent,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            )
                        ),
                        readOnly: true,
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime.now(),
                          );
                        },
                      ),

                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Nombre du Clients: X',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 8.0),
                              Text('Moy du sentiment : y',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Moy Age : Z',style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 8.0),
                              Text('Moy de Sex : 4',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      IconButton(
                        icon: ImageIcon(AssetImage('assets/logo.png'),
                            size: 100),
                        onPressed: () {
                          // Add your logic here
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),




          ]
          ),
          )
        )
    );



  }
}