 import ' package:flutter/material.dart';

 void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
 @overridee 
 Widget build (BuildContetext context ){
    return MaterialApp(
    title :"Hesap Makinesi" ,
    home: Iskele (),
   ,);
     }
 }


class Iskele extends StatelessWidget{
  @overridee
  Widget build (BuildContetext context){
   return Scaffold(55)
    appBar:AppBar(
      tittle: Text ("Hesap Makinesi"),
      ),
    body: AnaEkran(),
   );
  }
}

class AnaEkran extends StatefulWidget{
  @ovverride
  _AnaEkranState createState()=> _AnaEkranState();
}
class _AnaEkranState extends State<AnaEkran>{

  num sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController();// Textfieldin içindeki metinleri okur
  TextEditingController t2 = TextEditingController();

  sayiTopla(){
    setState((){

      sayi1 = num.parse(t1.Text);// 1. değer alındı ve t1 e atandı
      sayi2 = num.parse(t2.Text);//  2. değer alındı ve t2 ye atandı
      sonuc = sayi1 + sayi2; 

  });
  } 
   sayiCikar(){
    setState((){

      sayi1 = num.parse(t1.Text); //1. değer alındı ve t1 e atandı
      sayi2 = num.parse(t2.Text);//  2. değer alındı ve t2 ye atandı
      sonuc = sayi1 + sayi2; 

  });
  } 
  sayiCarp(){
    setState((){

      sayi1 = num.parse(t1.Text);//1. değer alındı ve t1 e atandı
      sayi2 = num.parse(t2.Text);//  2. değer alındı ve t2 ye atandı
      sonuc = sayi1 + sayi2; 

  });
  } 
  sayiBol(){
    setState((){

      sayi1 = num.parse(t1.Text);//1. değer alındı ve t1 e atandı
      sayi2 = num.parse(t2.Text);//  2. değer alındı ve t2 ye atandı
      sonuc = sayi1 + sayi2; 

  });
  } 

  @override 
  Widget build(BuildContetext context) {
    return Container(
      margin:EdgeInsets.all(50.0),
      child: Center(
        child: Colummn(
          children: <Widget>[
          Text("$sonuc"), 
          TextField(
            controller: t1,
            ),
          TextField(
            controller: t2,
          ),
          RaisedButton(onPressed:sayiTopla, child: Text("Topla"),), // ekrana toplam değer yazılır
          RaisedButton(onPressed:sayiCikar, child: Text("Çıkar"),), // ekrana çıkar değer yazılır
          RaisedButton(onPressed:sayiCarp, child: Text("Çarp"),), // ekrana çarpma değer yazılır
          RaisedButton(onPressed:sayiBol, child: Text("Böl"),), // ekrana bölünen değer yazılır
          


          ],
        ,)
      ),
    );
  }
}

























