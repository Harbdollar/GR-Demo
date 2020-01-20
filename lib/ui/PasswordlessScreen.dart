import 'package:flutter/material.dart';

class PasswordLessScreen extends StatefulWidget {
  @override
  _PasswordLessScreenState createState() => _PasswordLessScreenState();
}

class _PasswordLessScreenState extends State<PasswordLessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest Register'),
      ),
    body: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
          child: TextField(
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                hintText: 'Enter your email',
                helperText: 'Enter your Fucking Email',
                labelText: 'Email',
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                suffixStyle: const TextStyle(color: Colors.green)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: MaterialButton(
            color: Colors.green,
            child: Text('Proceed'),
            onPressed: (){

            },

          ),
        )
      ],
    )
    );
  }
}
