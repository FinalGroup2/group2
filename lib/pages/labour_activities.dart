import 'package:flutter/material.dart';

class LActivity extends StatefulWidget {
  const LActivity({Key? key}) : super(key: key);

  @override
  _LActivityState createState() => _LActivityState();
}

class _LActivityState extends State<LActivity> {
  @override
  Widget build(BuildContext context) {
    List<int> ratings=[4,4,4,3,5,3];
    int sum_rating=0;
    for (var i = 0;i<ratings.length;i++){
      sum_rating +=ratings[i];
    }
    var avg_rating= (sum_rating/ratings.length);
    avg_rating=double.parse(avg_rating.toStringAsFixed(2));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                color: Colors.cyanAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 14.0,
                shadowColor: Color(0x802196F3),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0,10.0),
                child:Row(
                      children: <Widget>[
                        Expanded(
                          flex:2,
                          child: Column(
                            children: [
                              Text(
                                'Rashan Fernando',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17.0,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Rating: $avg_rating / 5 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex:1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,8.0,16.0,10.0),
                            child: Container(
                                height: 75,
                                width: 75,
                                child: Image.asset('assets/pro1.jpg')),
                          ),),
                      ],
                    ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5.0,0,5.0),
                child: Text(
                  'Upcoming Schedule',
                      style:TextStyle(
                        fontFamily: 'Poppins',
                        fontSize:20.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.black54,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
