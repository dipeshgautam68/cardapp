import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Card App',
      home: HomePage(),
      
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
TextEditingController controller =TextEditingController();
  String message = '';
  Color themeColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: Center(child: Text('Message Card App')),
        ),
        body: ListView(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400.0,
                  height: 300.0,
                  color: themeColor,
                  child: Center(child: Text(message,style: TextStyle(
                    color:Colors.white,
                    fontSize:24.0,
                    fontFamily:'cursive',


                  ),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  maxLength: 30,
                  onChanged: (String newValue){
                    // print(newValue);
                    setState(() {
                      message = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: 'Your  message',
                    helperText: 'You can write here',
                    prefixIcon: Icon(Icons.edit),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  
                  onPressed: (){
                    controller.clear();
                  },
                  color: themeColor,
                  child: Text('Clear the text'),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                       setState(() {
                         themeColor = Colors.red;
                       });
                      },
                      child:   CircleAvatar(
                      backgroundColor: themeColor,
                    ),
                    ),
                  
                   InkWell(
                     onTap: (){
                       setState(() {
                         themeColor = Colors.blueAccent;
                       });
                     },
                     child:  CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                    ),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         themeColor = Colors.greenAccent;
                       });
                     },
                     child:  CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                    ),
                   ),
                    InkWell(
                      onTap: (){
                        setState(() {
                         themeColor = Colors.brown;
                       });
                      },
                      child: CircleAvatar(
                      backgroundColor: Colors.brown,
                    ),
                    ),
                  ],
              
                  ),
                ),
              ),
            ],

          ),
        );
        


      
  }
}