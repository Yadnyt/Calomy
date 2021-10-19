
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
class CalorieTracking extends StatefulWidget {
  @override
  _CalorieTrackingState createState() => _CalorieTrackingState();
}

class _CalorieTrackingState extends State<CalorieTracking>

{
  final TextEditingController _neededcal = TextEditingController();
  final TextEditingController _lunchcal = TextEditingController();
  final TextEditingController _breakfastcal = TextEditingController();
  final TextEditingController _dinnercal = TextEditingController();
  double progressValue = 0.0 , achievement = 0.0;
 double b = 0.0 , a = 0.0, reqcal = 0.0 , x = 0.0, y = 0.0 , z = 0.0;

  void _onsubmit() {
    setState(() {
      a = double.parse(_neededcal.text);

    });
  }

  void _onsubmitcal() {
    setState(() {
      x = double.parse(_breakfastcal.text);
      y = double.parse(_lunchcal.text);
      z = double.parse(_dinnercal.text);

      progressValue = x + y + z;

      achievement = progressValue;

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/artboard4.png"),
              fit: BoxFit.cover,
            )
        ),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                  controller: _neededcal,
                  keyboardType:
                  TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'Req calories for user survey',

                    icon: Icon(Icons.fastfood),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,10,10),
              child: ElevatedButton(
                onPressed:()=>_onsubmit(),
                child: Text('Submit'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Center(
                child: Container( height: 250,width: 250,
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 0.0001+ a,
                        showLabels: true,
                        pointers: <GaugePointer>[
                        RangePointer(
                            value: achievement,
                            width: 0.08,
                            sizeUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.startCurve,
                            gradient: const SweepGradient(colors: <Color>[
                              Color(0xffef67ae),
                              Color(0xffd918de)
                            ], )),
                        MarkerPointer(
                          value: achievement,
                          markerType: MarkerType.invertedTriangle,
                          color: const Color(0xff0118ff),
                        )
                      ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              positionFactor: 0.1,
                              angle: 90,
                              widget: Text(
                                achievement.toStringAsFixed(0) + ' / $a',
                                style: TextStyle(fontSize: 11),
                              ))
                        ],
                      ),

                    ],),




                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: TextField(
                  controller: _breakfastcal,
                  keyboardType:
                  TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'cal had in breakfast',

                    icon: Icon(Icons.line_weight),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: TextField(
                  controller: _lunchcal,
                  keyboardType:
                  TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'cal had in lunch',

                    icon: Icon(Icons.line_weight),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: TextField(
                  controller: _dinnercal,
                  keyboardType:
                  TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: 'cal had in dinner',

                    icon: Icon(Icons.line_weight),
                  )
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,0),
                child: ElevatedButton(
                  onPressed:()=>_onsubmitcal(),
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),

      );
  }

}
