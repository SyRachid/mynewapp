import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home()
));
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text("EMOS X-Transfer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              )),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
            child:Text("authentification",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color:Colors.grey[600],
                )
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Text("click   "),
          backgroundColor: Colors.red[600],
        )
    ) ;
  }
}