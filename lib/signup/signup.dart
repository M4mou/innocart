import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String email = "",password = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(


          body: SingleChildScrollView(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: 100,
                  child: new Image.asset("assets/images/logo.png",height: 200, width: 400)
                ),
                TextField(
                  obscureText: false,
                  onChanged: (String value) async{

                    setState((){
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  onChanged: (String value) async{

                      setState((){
                        password = value;
                      });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )
                ,
              ],
            ),
          ),

    );
  }
}
