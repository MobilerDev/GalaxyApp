import 'package:flutter/material.dart';
import 'package:uzayRehberApp/components/style/color/color.dart';

class EarthView extends StatefulWidget {
  EarthView({
    Key key,
  }) : super(key: key);

  @override
  _EarthViewState createState() => _EarthViewState();
}

class _EarthViewState extends State<EarthView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fourthColor,
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      child: Image.asset(
                        "asset/planets/Earth.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.keyboard_arrow_left),
                      backgroundColor: fifthColor,
                      focusColor: thirdColor,
                      splashColor: thirdColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
