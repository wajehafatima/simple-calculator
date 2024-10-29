import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController number1=TextEditingController();

  TextEditingController number2= TextEditingController();

  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator', style: TextStyle(fontSize: 30, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color:Colors.pink.shade100),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: number1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter First Number',
                    border:  InputBorder.none),),
            ),
            Container (padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color:Colors.pink.shade100),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: number2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter Second Number', border:  InputBorder.none),),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.pink.shade100,
                  onPressed: (){
                    double n1=double.parse(number1.text);
                    double n2=double.parse(number2.text);
                    double add=n1 +n2;
                    result= add;
                    setState(() {

                    });
                    print('result=$result');
                    print('addition=$add');
                  },
                  child: Icon(Icons.add,color: Colors.black,),
                ),
                TextButton(child: Text('substract', style: TextStyle(color: Colors.pink.shade100,fontSize: 20),),
                  onPressed: (){
                    double n1=double.parse(number1.text);
                    double n2=double.parse(number2.text);
                    double sub= n1-n2;
                    result=sub;
                    setState(() {
                    });
                    print('substraction=$sub');
                  },),
                IconButton(onPressed: (){
                  double n1=double.parse(number1.text);
                  double n2=double.parse(number2.text);
                  double xyz=n1*n2;
                  result=xyz;
                  setState(() {
                  });
                  print('multiplication=$xyz');
                }, icon: Icon(Icons.cancel_outlined,color: Colors.pink.shade100,)),

                TextButton(child: Text('Division',style: TextStyle(color: Colors.pink.shade100,fontSize: 20,fontWeight: FontWeight.bold),),
                  onPressed: (){
                    double n1=double.parse(number1.text);
                    double n2=double.parse(number2.text);
                    double div= n1/n2;
                    result=div;
                    setState(() {

                    });
                    print('division=$div');
                  },
                )
              ],
            ),
            SizedBox(height: 40,),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),

              ),
              child: Center(child:   Text('Result=$result', style: TextStyle(fontSize: 20, )),),
            )
          ],

        ),

      ),
    );
  }
}
