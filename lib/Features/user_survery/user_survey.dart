import 'package:flutter/material.dart';
import 'package:login_page/Features/user_survery/bmicalc.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Calomy User Survey'),
    centerTitle: true,
    backgroundColor: Colors.blue,
    ),
    body: Container(
      decoration:BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/artboard4.png"),
            fit: BoxFit.cover,
          )
      ),
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: new Text(
        "It's time to get fit! lets get started with your basic information to predict what your regime will be",
        textDirection: TextDirection.ltr,
        style: new TextStyle(fontFamily: 'Brandon Grotesque. italic',
            fontSize: 40,
            color: Colors.black),
        maxLines: 5,
      ),
    ),
      RaisedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Let's Go"),

          ],
        ),

        color: Colors.blue,
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> BMI()));},
      ),
    ],
    ),
    ),
    );
  }

}






