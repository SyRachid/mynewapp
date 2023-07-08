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
                  Text('ID:',

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
                    controller:_controller,
                    onChanged: CheckId,
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
  TextEditingController _controller = TextEditingController();

  void CheckId(String value){
  if (int.tryParse(value) == null || (int.tryParse(value) !=null && value.length !=9)){
  print ('Saisies Invalides.');

  }
  }

}