import 'package:flutter/material.dart';

class CActivity extends StatefulWidget {
  const CActivity({Key? key}) : super(key: key);

  @override
  _CActivityState createState() => _CActivityState();
}

class _CActivityState extends State<CActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
            Text(
              'Previous Activities Motherfucker',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),

            )
          ],
        ),
      ),
    );
  }
}
