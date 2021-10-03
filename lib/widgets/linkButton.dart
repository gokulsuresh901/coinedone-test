import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String name;
  LinkButton({this.name});
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: InkWell(
          onTap: ()
          {
            print("link pressed !!!");
          },
          child: Text(name,
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w400,
            ),),
        ),
      ),
    );
  }
}

