import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: homer(),));
}
class homer extends StatefulWidget {
  const homer({Key? key}) : super(key: key);

  @override
  State<homer> createState() => _homeState();
}

class _homeState extends State<homer> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  int sum=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),child: TextField(controller: t1,decoration: InputDecoration(hintText: ("add value 1"),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),)),
          SizedBox(height: 20,),
          Container(margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),child: TextField(controller: t2,decoration: InputDecoration(hintText: ("add value 2"),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),)),
          SizedBox(height: 30,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
            children: [
              ElevatedButton(onPressed:() {
                String a="",b="";
                a=t1.text;
                b=t2.text;
                int a1=int.parse(a);
                int a2=int.parse(b);
                sum=a1+a2;
                setState(() {

                });
              }, style:ElevatedButton.styleFrom(primary: Colors.blue.shade300,shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(20))), child: Text("sum")),
              ElevatedButton(onPressed:() {
                String a="",b="";
                a=t1.text;
                b=t2.text;
                int a1=int.parse(a);
                int a2=int.parse(b);
                sum=a1-a2;
                setState(() {

                });
              }, style:ElevatedButton.styleFrom(primary: Colors.blue.shade300,shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(20))),child: Text("sub")),
              ElevatedButton(onPressed:() {
                String a="",b="";
                a=t1.text;
                b=t2.text;
                int a1=int.parse(a);
                int a2=int.parse(b);
                sum=a1*a2;

                setState(() {

                });
              }, style:ElevatedButton.styleFrom(primary: Colors.blue.shade300,shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(20))),child: Text("mul")),
              ElevatedButton(onPressed:() {
                String a="",b="";
                a=t1.text;
                b=t2.text;
                int a1=int.parse(a);
                int a2=int.parse(b);
                sum=a1~/a2;
                setState(() {

                });
              },style:ElevatedButton.styleFrom(primary: Colors.blue.shade300,shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(20))),child: Text("div"))
            ],),
          SizedBox(height: 140,),
          Text("${sum}",style: TextStyle(color: Colors.blue.shade800,fontSize: 100,),textAlign: TextAlign.center,),
          SizedBox(height: 100,),
          Text("Sp Calculator",style: TextStyle(color: Colors.white,fontSize: 50,),textAlign: TextAlign.center,),
        ],

      ),
    );
  }
}
