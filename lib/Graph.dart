import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
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
          body:  SingleChildScrollView(
        child:Column(children: [Container(

            padding: const EdgeInsets.only(left: 35, top: 30, right: 35),
            child: const Text('Graphique',
                style: TextStyle(color: Colors.white, fontSize: 50)),
          ),
            SizedBox(
              height: 100,
            ),
            Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
    child: Column(
          children: [
            Text('Mois',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                SfCartesianChart(
                  series: <ChartSeries>[
                    ColumnSeries<chartdata,double>(
                        dataSource: getColumnData(),
                        xValueMapper: (chartdata chart,_)=>chart.x,
                        yValueMapper: (chartdata chart,_)=>chart.x),

                  ],
                )
            ]
    ),
            ),
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              child: Column(
                  children: [
                    Text('Jour',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                    SfCartesianChart(
                      series: <ChartSeries>[
                        ColumnSeries<chartdata,double>(
                            dataSource: getColumnData(),
                            xValueMapper: (chartdata chart,_)=>chart.x,
                            yValueMapper: (chartdata chart,_)=>chart.x),

                      ],
                    )
                  ]
              ),
            )

          ]
          ),

        )
    )
    );



  }
}

class chartdata{
  late double x;
  late String y;
  chartdata(this.x,this.y);
}
dynamic getColumnData(){
  List<chartdata> columndata=<chartdata>[
    chartdata(20,"Happy"),
    chartdata(27,"Sad"),
    chartdata(20,"Happy"),
    chartdata(18,"Angry")


  ];
  return columndata;
}