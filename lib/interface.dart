import 'package:flutter/material.dart';


class InterfaceScreen extends StatefulWidget {
  const InterfaceScreen({super.key});

  @override
  State<InterfaceScreen> createState() => _InterfaceScreenState();
}

class _InterfaceScreenState extends State<InterfaceScreen> {
  Widget displayButton(String num) {

    return ElevatedButton(

     

      onPressed: () {

        setState(() {

         

          if(num=="C"){

            _textcontroller.clear();

          }

          else if((num=="1"||num=="2"||num=="3"||num=="4"||num=="5"||num=="6"||num=="7"||num=="8"||num=="9"||num=="0"||num==".")){

            if (_textcontroller.text == "*"||_textcontroller.text == "+"||_textcontroller.text == "-"||_textcontroller.text == "/"||_textcontroller.text == "%"){

              _textcontroller.clear();



            }

            _textcontroller.text += num;



          }

          else if((num=="+"||num=="*"||num=="/"||num=="%"||num=="-")){

            f = double.parse(_textcontroller.text);

            _textcontroller.text= num;

            op = num;

          }



          else if(num == "="){

            s = double.parse(_textcontroller.text);

            _textcontroller.text = "";



            switch(op){

              case "+":

              setState(() {

                r = f + s;

               

              });

              break;

              case "-":

                 setState(() {

                  r = f - s;

               

              });

              break;

              case "*":

                 setState(() {

                  r = f * s;



              });

              break;

              case "/":

                 setState(() {

                  r = f / s;

               

              });

              break;

              case "%":

                 setState(() {

                  r = f % s ;

               

              });

              break;

            }

            _textcontroller.text = r.toString();  

          }

         

        });



      },

      child: Text(" $num"),

    );

  }



  final List<String> lst = ['C', '*', '/', '<-','1','2','3', '+',

  '4', '5', '6','-','7','8','9','*', '%','0','.','='];



  final TextEditingController _textcontroller = TextEditingController();

  double f = 0;

  double s =0;

  double? r= 0;

  String? op ;
  @override
  Widget build(BuildContext context) {
   return Scaffold(

      appBar: AppBar(

        title: const Text("Calculator Application"),

      ),

      body: Column(

        children: [ TextFormField(

          enabled: false,

          controller: _textcontroller,

          textAlign: TextAlign.center,

         

         

        ),

        const SizedBox(

          height: 40,

        ),



          Expanded(

            child: GridView.count(

              padding: const EdgeInsets.all(9),

              crossAxisSpacing: 8,

              mainAxisSpacing: 8,

              crossAxisCount: 4,

              children: [



                for(int i=0; i< lst.length; i++)

                displayButton(lst[i]),
              ],

            ),

          ),

        ],

      ),

    );

  }
  }
