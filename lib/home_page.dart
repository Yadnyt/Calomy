
import 'package:flutter/material.dart';
import 'package:login_page/Features/calorie_tracking/calorie_tracking.dart';
import 'package:login_page/Features/exercise/onBoarding_screen.dart';
import 'package:login_page/Features/progress/progress.dart';
import 'package:login_page/Features/recipes/home.dart';
import 'package:login_page/Features/scan_food/scan_food.dart';
import 'package:login_page/Features/user_survery/user_survey.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calomy'),
        ),
        body: Container(
          decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/artboard4.png"),
                fit: BoxFit.cover,
              )
          ),

          child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment. start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(2,50,16,10),
                      child: new ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: 150.0,
                              height: 90.0,
                              child: RaisedButton(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('User Survey'),
                                    new Image.asset("assets/survey.png",width: 90,height: 40,)
                                  ],
                                ),
                                color: Colors.cyan,

                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomePage()));},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            height: 90.0,
                            child: RaisedButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Calory Tracking'),
                                  new Image.asset("assets/kcal.png",width: 90,height: 40,)
                                ],
                              ),
                              color: Colors.cyan,
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> CalorieTracking()));},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2,10,16,10),
                      child: new ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: 150.0,
                              height: 90.0,
                              child: RaisedButton(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Exercises'),
                                    new Image.asset("assets/exercise.png",width: 90,height: 40,)
                                  ],
                                ),
                                color: Colors.cyan,
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()));},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            height: 90.0,
                            child: RaisedButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Meal Calorie Notes'),
                                  new Image.asset("assets/progress.png",width: 90,height: 40,)
                                ],
                              ),
                              color: Colors.cyan,
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Progress()));},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2,10,16,10),
                      child: new ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: 150.0,
                              height: 90.0,
                              child: RaisedButton(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Recipes'),
                                    new Image.asset("assets/recipe.png",width: 90,height: 40,)
                                  ],
                                ),
                                color: Colors.cyan,
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeHome()));},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                            height: 90.0,
                            child: RaisedButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Scan Food'),
                                  new Image.asset("assets/scan.png",width: 90,height: 40,)
                                ],
                              ),
                              color: Colors.cyan,
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> ScanFood()));},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}
