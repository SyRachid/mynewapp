import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'FormController.dart';
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
          child:SingleChildScrollView(
            child:Container(
              alignment: Alignment.center,


              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Text('Register',
                  style:TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color:Colors.grey[800],
                  ) ),
                  SizedBox(height:20),
                  Text('ID 1xbet:',

                    style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color:Colors.grey[600],
                  ) ),

                SizedBox(
                  width:300,
                  height:30,
                  child:TextFormField(
                    controller:_controller_id,
                    onChanged: CheckId,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,

                    ),
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          width: 3.0,
                        )
                      )
                    ),
                    //ajout des attributs pour le champs de saisie)
            ),
                ),
                  SizedBox(height:16.0),
                  Text('Numero de retrait:',style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color:Colors.grey[600],
                  ) ),
                  SizedBox(
                    width:300,
                    height:30,
                    child:TextFormField(
                      textAlign: TextAlign.center,
                      controller: _controller_tel_retrait,
                      onChanged: Checktel,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,

                      ),
                      decoration: InputDecoration(
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                width: 3.0,
                              )
                          )
                      ),
                      //ajout des attributs pour le champs de saisie)
                    ),
                  ),
                  SizedBox(height:16.0),
                  Text('numero de depot:',style:TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color:Colors.grey[600],
                  ) ),
                  SizedBox(
                    width:300,
                    height:30,
                    child:TextFormField(
                      textAlign: TextAlign.center,
                      controller: _controller_tel_depot,
                      onChanged: Checktel,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,

                      ),
                      decoration: InputDecoration(
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                width: 3.0,
                              )
                          )
                      ),
                      //ajout des attributs pour le champs de saisie)
                    ),
                  ),
                  SizedBox(height:10.0),
                  Text('mot de pass:',
                      style:TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color:Colors.grey[600],
                      ) ),
                  SizedBox(
                    width:300,
                    height:30,
                    child:TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,

                      ),
                      controller: _controller_pwd,
                      onChanged: Checkpwd,
                      decoration: InputDecoration(
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                width: 3.0,
                              )
                          )
                      ),
                      //ajout des attributs pour le champs de saisie)
                    ),
                  ),
                  SizedBox(height:16.0),
                  Text("E-mail:",
                      style:TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color:Colors.grey[600],
                      ) ),
                  SizedBox(
                    width:300,
                    height:30,
                    child:TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0,

                      ),
                      controller: _controller_email,
                      onChanged: CheckEmail,
                      decoration: InputDecoration(
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                width: 3.0,
                              )
                          )
                      ),
                      //ajout des attributs pour le champs de saisie)
                    ),
                  ),
                  SizedBox(height:18.2),
                  Container(
                    width:120,
                      height:50,
                      child:FloatingActionButton(onPressed: null,
                  child:Text("s'inscrire"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),

                    ),

                  )),

                ]
              )


            )

        ),
        ),
    ) ;
  }
  TextEditingController _controller_id = TextEditingController();
  TextEditingController _controller_tel_depot= TextEditingController();
  TextEditingController _controller_tel_retrait= TextEditingController();
  TextEditingController _controller_pwd = TextEditingController();
  TextEditingController _controller_email = TextEditingController();
}