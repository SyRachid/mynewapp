library FormController;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


Function(void) modifierCouleurid = modifierCouleurid;
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
bool CheckId(String value){
  if (int.tryParse(value) == null || (int.tryParse(value) !=null && value.length !=9)){
    return (false);
  }
  else{
    return (true);
  }

}


bool Checktel(String value)
{
  if (int.tryParse(value) == null || (int.tryParse(value)!= null  && !prefix_num.contains(value[0]+value[1])))
    {
          return (false);
    }
  else if(!LengthOk(value))
  {
    return (false);
  }
  else{
    return (true);
  }
}
bool Checkpwd(String value)
{
  if (value.length !=8)
    {
      return(false);
    }
  else{
    return (true);
  }
}
bool CheckEmail(String value)
{
  if (!isValidEmail(value))
    {
      return(false);
    }
  else
    {
      return (true);
    }
}