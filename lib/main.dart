
import 'package:calculator/getx.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: cal(),
  ));
}


class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}
class _calState extends State<cal> {
  String ans="";
  double val1=0;
  double val2=0;
  double temp=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(flex: 3,
              child:Row(children: [Container(

                child: Text("$ans",style: TextStyle(color: Colors.white,fontSize: 40,)),
                margin: EdgeInsets.all(20),
                alignment: Alignment.centerRight,

              )],)),
          Divider(color: Colors.purple.shade500,thickness: 2),
          Expanded(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => get("ac"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.blue.shade500)),child: Text("Ac",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("c"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.blue.shade500)),child: Text("C",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("%"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.green.shade500)),child: Text("%",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("/"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.green.shade500)),child: Text("/",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
          ],)),
          Expanded(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => get("7"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("7",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("8"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("8",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("9"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("9",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("*"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.green.shade500)),child: Text("*",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
          ],)),
          Expanded(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => get("4"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("4",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("5"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("5",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("6"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("6",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("-"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.green.shade500)),child: Text("-",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
          ],)),
          Expanded(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => get("1"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("1",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("2"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("2",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("3"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("3",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("+") ,child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.green.shade500)),child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
          ],)),
          Expanded(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => get("0"),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.white)),child: Text("0",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return homer();
              },));

            },child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.red)),child: Text("Get X",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("."),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.lightGreen.shade800)),child: Text(".",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
            Expanded(child: InkWell(onTap: () => get("="),child: Container(alignment: Alignment.center,margin: EdgeInsets.all(3),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle,border: Border.all(width: 3,color: Colors.orange.shade500)),child: Text("=",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),))),
          ],)),
        ],
      ),
    );
  }
  get(String a) {
    if (a == "ac") {
      setState(() {
        ans = "";
      });
    } else if (a == "c") {
      if(ans.isNotEmpty)
      {
        ans=ans.substring(0,ans.length-1);
      }
    } else if (a == "+") {
      temp = 1;
      val1 = double.parse(ans);
      ans = " ";
    } else if (a == "-") {
      temp = 2;
      val1 = double.parse(ans);
      ans = " ";
    } else if (a == "*") {
      temp = 3;
      val1 = double.parse(ans);
      ans = " ";
    }
    else if (a == "/") {
      temp = 4;
      val1 = double.parse(ans);
      ans = " ";
    }
    else if (a == "=") {
      val2 =double.parse(ans);
      double c = 0;
      if (temp == 1) {
        c = val1 + val2;
      } else if (temp == 2) {
        c = val1 - val2;
      }
      else if(temp==3){
        c=val1*val2;
      }
      else if(temp==4){
        c=(val1~/val2) as double;
      }
      ans = c.toString();
    }else
    {
      ans=ans+a.toString();
    }
    setState(() {

    });
  }
}
