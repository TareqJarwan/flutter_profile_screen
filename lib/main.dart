import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
            child: Container(color: Colors.black.withOpacity(0.8)),
            clipper: getClipper()),
        Positioned(
          width: 350.0,
          top: MediaQuery.of(context).size.height / 5.0,
          child: Column(
            children: <Widget>[
              Container(
                  width: 135.0,
                  height: 135.0,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0, color: Colors.black)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(75.0)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                          fit: BoxFit.cover))),
              SizedBox(height: 10.0),
              Text(
                'Tom Cruise',
                style: TextStyle(
                    fontFamily: 'MonteSerrat',
                    fontSize: 24.0,
                    color: Colors.black.withOpacity(0.8)),
              ),
              SizedBox(height: 10.0),
              Text(
                'Available for freelance',
                style: TextStyle(
                    fontFamily: 'MonteSerrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.green.withOpacity(0.6)),
              ),
              SizedBox(height: 25.0),
              Container(
                height: 30.0,
                width: 95.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.greenAccent,
                  color: Colors.green,
                  elevation: 7.0,
                  child: GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text("Edit Name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MonteSerrat')))),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 30.0,
                width: 95.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.redAccent,
                  color: Colors.red,
                  elevation: 7.0,
                  child: GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text("Log Out",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MonteSerrat')))),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2.4);
    path.lineTo(size.width + 850, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
