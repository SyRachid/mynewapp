library registerValidated;
import 'package:flutter/material.dart';
import 'main.dart' show scaffoldKey;

void showSnackbar(BuildContext context, String message)
{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(message,
        style:TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 2.0,
        )
        ),
        duration: Duration(seconds: 4),
        action: SnackBarAction(label: 'OK', onPressed: (){},),
    ),
  );
}