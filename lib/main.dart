library main;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'FormController.dart';
import 'UserClass.dart';
import 'RequestToServer.dart';
import 'registerValidated.dart';

void main() => runApp(MaterialApp(
  home:Home(),
  theme: ThemeData(
    snackBarTheme: SnackBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
    )
  ),
));
class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color? id_color = Colors.grey[600];
  Color? ret_color = Colors.grey[600];
  Color? dep_color = Colors.grey[600];
  Color? pwd_color = Colors.grey[600];
  Color? email_color = Colors.grey[600];

  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
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
                    color:id_color,
                  ) ),

                SizedBox(
                  width:300,
                  height:30,
                  child:TextFormField(
                    controller:_controller_id,
                    validator: (value){
                      CheckId;
                    },
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
                          color: Colors.red,
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
                    color:ret_color,
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
                    color:dep_color,
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
                        color:pwd_color,
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
                        color:email_color,
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
                      child:FloatingActionButton(onPressed: (){
                  if (!CheckId(_controller_id.text)) {
                    setState(() {
                      id_color = Colors.red;
                    });


                  }
                  if (CheckId(_controller_id.text))
                  {
                    id_color = Colors.grey[600];
                  }
                if (!Checktel(_controller_tel_depot.text))  {
                     setState(() {
                       dep_color = Colors.red;
                     });
                  }
                 if (Checktel(_controller_tel_depot.text))
                {
                  setState(() {
                    dep_color = Colors.grey[600];
                  });


                }
                if (!Checktel(_controller_tel_retrait.text)){
                  setState(() {
                    ret_color = Colors.red;
                  });
                }
                 if (Checktel(_controller_tel_retrait.text))
                {
                  ret_color = Colors.grey[600];
                }
                if (!Checkpwd(_controller_pwd.text))
                  {
                    setState(() {
                      pwd_color = Colors.red;
                    });
                  }
                 if (Checkpwd(_controller_pwd.text))
                {
                  pwd_color = Colors.grey[600];
                }
                if (!CheckEmail(_controller_email.text))
                  {
                    setState(() {
                      email_color = Colors.red;
                    });
                  }
                 if (CheckEmail(_controller_email.text))
                {
                  email_color = Colors.grey[600];
                }
               if (CheckId(_controller_id.text)&&Checktel(_controller_tel_depot.text)&&Checktel(_controller_tel_retrait.text)&&CheckEmail(_controller_email.text)&&Checkpwd(_controller_pwd.text))
                 {
                   sendDataToServer(takeData(_controller_id.text, _controller_tel_retrait.text, _controller_tel_depot.text, _controller_pwd.text, _controller_email.text));
                    showSnackbar(context, 'réquete envoyé');

                 }
                      },
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