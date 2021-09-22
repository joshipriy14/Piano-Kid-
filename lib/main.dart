
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'homescreen.dart';


void main()
{
  runApp(
      MaterialApp
        (
          debugShowCheckedModeBanner: false,
          title: 'Piano Kid ',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyApp()));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title : Text('Piano Kid '),
      ),
      backgroundColor: Colors.red,


      body: Center(

        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/new_icon.jpg"),
              height: 250,
              width: double.infinity,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  '     Piano Kid\n\nA Peppy Piano',


                  style: TextStyle(color: Colors.black87,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 25.0),
                )


            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                ' © All Right Reserved ',
                style: TextStyle(color: Colors.black87,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 15.0),
              )
              ,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(builder : (context)=> piano_kid())
                    );

                  },
                  child: Text("Play", style: TextStyle(fontSize: 20)),
                )

            )
          ],
        ),
      ),

    );


  }
}
