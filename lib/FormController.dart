library FormController;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
bool LengthOk(String valeur){
  if (valeur.length == 8)
    {
      return (true);
    }
  else{
    return (false);
  }
}
bool isValidEmail(String email) {
  RegExp regex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  return regex.hasMatch(email);
}

//TextEditingController _controller = TextEditingController();
List<String> prefix_num = ['06','07','05','54','55','56','57','64','65','66','67','74','75','76','77','01','02','03','50','51','52','53','60','61','62','63','70','71','72','73'];
void CheckId(String value){
  if (int.tryParse(value) == null || (int.tryParse(value) !=null && value.length !=9)){
    print ('Saisies Invalides ID.');

  }
}
void Checktel(String value)
{
  if (int.tryParse(value) == null || (int.tryParse(value)!= null  && !prefix_num.contains(value[0]+value[1])))
    {
          print('numéro incorrect');
    }
  else if(!LengthOk(value))
  {
    print('numéro incorrect');
  }
}
void Checkpwd(String value)
{
  if (value.length !=8)
    {
      print("mot de pass non fort");
    }
}
void CheckEmail(String value)
{
  if (!isValidEmail(value))
    {
      print('E-mail non valid');
    }
}