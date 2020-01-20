import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:gestregistrationdemo/locator.dart';
import 'package:gestregistrationdemo/service/authentication.dart';
import 'package:gestregistrationdemo/util/customFunctions.dart';


var authService = locator<AuthService>(); //Creating an injection of AuthService class
var customlogic = locator<CustomFuntion>(); 
class PasswordLessScreen extends StatefulWidget {
  @override
  _PasswordLessScreenState createState() => _PasswordLessScreenState();
}

class _PasswordLessScreenState extends State<PasswordLessScreen> with WidgetsBindingObserver{
    TextEditingController emailController = TextEditingController();
    final _scaffoldKey = GlobalKey<ScaffoldState>();
String _link;
   static String tag = "PasswordLess page";
   bool processing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Guest Registeration'),
      ),
    body: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
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
          child: (processing ? CircularProgressIndicator() : MaterialButton(
            color: Colors.green,
            child: Text('Proceed'),
            onPressed: (){
                   authService.loginWithEmailLink(mail: emailController.text).then((v){
                      if(v){
                        customlogic.dialog(context: context, 
                        message: 'Link sent to your mail, Please check your mail',
                         title: 'Sucess');
                      }else{
                        customlogic.dialog(context: context, 
                        message: 'Oops! Unable to send Link,Please try again ', title: 'Error');
                      }
                   });
            },
          ))
        )
      ],
    )
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _retrieveDynamicLink();
    }
  }

  startLoading(){
  setState(() {
    processing = true;
  });
}

stopLoading(){
  setState(() {
    processing = false;
  });
}

  Future<void> _retrieveDynamicLink() async {
    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();

    final Uri deepLink = data?.link;
    print(deepLink.toString());

    if (deepLink.toString() != null) {
      _link = deepLink.toString();
      authService.signInWithEmailAndLink(context: context, link: _link, email: emailController.text);
    
    }
    return deepLink.toString();
  }
}
