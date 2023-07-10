library UserClass;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class User{
  String id;
  String depot;
  String retrait;
  String pwd;
  String mail;
  User({this.id='', this.depot='',this.mail='',this.pwd='',this.retrait=''});

  Map<String, dynamic> toJson() {
    return{
      'id':id,
      'depot':depot,
      'retrait':retrait,
      'password':pwd,
      'mail':mail,
    };
  }

}