import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cons_app/pages/pre_activities.dart';

class CActivity extends StatefulWidget {
  const CActivity({Key? key}) : super(key: key);

  @override
  _CActivityState createState() => _CActivityState();
}

class _CActivityState extends State<CActivity> {


  @override
  Widget build(BuildContext context) {

    List<PreAct> preActivities=[
      PreAct('worker1.jpg','hello','2022-11-3'),
      PreAct('worker2.jpg','Hi','2022-09-3'),
      PreAct('worker3.jpg','Wanda','2022-06-3'),
      PreAct('worker2.jpg','Hi','2022-09-3'),
    ];

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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
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
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,0,0,0),
              child: Container(
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.white,width: 1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: 290,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: preActivities.length,
                  itemBuilder: (context,index){
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10.0,
                      shadowColor: Colors.blueAccent,
                      margin: EdgeInsets.fromLTRB(10.0, 0,10.0,10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onTap: (){},
                          leading: Container(
                              height:50,
                              width: 50,
                            child: Image.asset('assets/${preActivities[index].profile}'),
                          ),
                          title: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:3,
                                    child: Text(
                                        'Hired',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),),
                                  ),

                                  Expanded(
                                    flex:14,
                                    child: Text(
                                      preActivities[index].hired,
                                      style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:3,
                                    child: Text(
                                      'Date',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                      ),),
                                  ),
                                  Expanded(
                                    flex:14,
                                    child: Text(
                                    preActivities[index].date,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13.0,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(  //Naviation Bar
              padding: const EdgeInsets.fromLTRB(22.0, 0, 22.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFF125488), ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      highlightColor: Colors.blueAccent,
                      icon:Icon(Icons.home_outlined),
                      iconSize: 35.0,
                      onPressed: (){},
                      color: Colors.white,
                    ),
                    IconButton(
                        highlightColor: Colors.blueAccent,
                        onPressed: (){},
                        icon:Icon(Icons.history),
                        iconSize: 35.0,
                        color: Colors.white
                    ),
                    IconButton(
                        highlightColor: Colors.blueAccent,
                        icon:Icon(Icons.notifications_none_rounded),
                        onPressed: (){},
                        iconSize: 35.0,
                        color: Colors.white
                    ),
                    IconButton(
                        highlightColor: Colors.blueAccent,
                        icon:Icon(Icons.person_outlined),
                        onPressed: (){},
                        iconSize: 35.0,
                        color: Colors.white
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
