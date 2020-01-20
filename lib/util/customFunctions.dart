import 'package:flutter/material.dart';

class CustomFuntion{

   snackBarMessage({String message}){
return SnackBar(content: Text(message));
  }

  

  dialog({BuildContext context, String message, title}) {
   return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(message.toString()),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}