import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cons_app/pages/pre_activities.dart';

class CActivity extends StatefulWidget {
  const CActivity({Key? key}) : super(key: key);

  @override
  _CActivityState createState() => _CActivityState();
}

class _CActivityState extends State<CActivity> {

  List<PreAct> preActivities=[
    PreAct('worker1.jpg','hello','2022-11-3'),
    PreAct('worker2.jpg','hello','2022-09-3'),
    PreAct('worker3.jpg','hello','2022-06-3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,20.0,0,0),
                child: Text(
                    'Activities',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize:25.0,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 14.0,
              shadowColor: Color(0x802196F3),
              margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0,10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex:2,
                        child: Center(
                          child: Text(
                            'Rashan Fernando',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,8.0,16.0,0),
                          child: Container(
                            height: 75,
                            width: 75,
                            child: Image.asset('assets/pro1.jpg')),
                        ),),
                    ],
                  ),
                  SizedBox(height: 9.0),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0))
                        )
                      )
                    ),
                    onPressed: (){},
                    child: Text(
                      'View Appointments',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
              child: Text(
                'Previous Activities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),
              ),
            ),
            // ListView.builder(
            //   // scrollDirection: Axis.vertical,
            //   itemCount: preActivities.length,
            //   itemBuilder: (context, index){
            //     return Card(
            //       child: ListTile(
            //         onTap: (){},
            //         title:Text(preActivities[index].hired),
            //         // title: Column(
            //         //   children: <Widget>[
            //         //     Row(
            //         //       children: <Widget>[
            //         //         Text(
            //         //             'Hired',
            //         //         style: TextStyle(
            //         //           fontFamily: 'Poppins',
            //         //           fontWeight: FontWeight.bold,
            //         //           fontSize: 10.0,
            //         //         ),),
            //         //         Text(
            //         //             preActivities[index].hired,
            //         //           style: TextStyle(
            //         //             fontFamily: 'Poppins',
            //         //             fontSize: 10.0,
            //         //             color: Colors.grey,
            //         //           ),
            //         //         ),
            //         //       ],
            //         //     ),
            //         //   ],
            //         // ),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
