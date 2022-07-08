import 'package:flutter/material.dart';

class vista1 extends StatefulWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  _vista1State createState() => _vista1State();
}

class _vista1State extends State<vista1> {

  final N1=TextEditingController();
  final N2=TextEditingController();

  String res='';

  late int uno,dos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabajando con variables'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [

            Text('Calculadora',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              controller: N1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese Numero: 1',
                labelText: 'Numero 1: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              controller: N2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Ingrese Numero: 2',
                  labelText: 'Numero 2: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [

                Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                            uno=int.parse(N1.text);
                            dos=int.parse(N2.text);
                            int s=uno+dos;
                            setState(() {
                              res='$s';
                            });
                        },
                        child: Text('+'))
                ),

                SizedBox(
                  width: 10,
                ),

                Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          uno=int.parse(N1.text);
                          dos=int.parse(N2.text);
                          int s=uno-dos;
                          setState(() {
                            res='$s';
                          });
                        },
                        child: Text('-'))
                ),

                SizedBox(
                  width: 10,
                ),

                Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          uno=int.parse(N1.text);
                          dos=int.parse(N2.text);
                          int s=uno*dos;
                          setState(() {
                            res='$s';
                          });
                        },
                        child: Text('*'))
                ),

                SizedBox(
                  width: 10,
                ),

                Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          uno=int.parse(N1.text);
                          dos=int.parse(N2.text);
                          double s=uno/dos;
                          setState(() {
                            res=(s).toStringAsFixed(2);
                          });
                        },
                        child: Text('/'))
                ),

              ],
            ),

            SizedBox(
              height: 20,
            ),

            Text('Resultado: $res',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
