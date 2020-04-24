import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class EmailLoginScreen extends StatefulWidget {
  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  var _showProgress = false;

  static final _formKey = GlobalKey<FormState>();

  FocusNode mEmailFocusNode ;

  String _email;

  FocusNode mPasswordFocus;

  String _password;

  var _passwordVisibility = true;

  @override
  void initState() {
    super.initState();

    mEmailFocusNode = FocusNode();
    mPasswordFocus = FocusNode();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Builder(
        builder: (context) => ModalProgressHUD(
          inAsyncCall: _showProgress,
          child: Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Form(
                              key: _formKey,
                              child: Column(children: <Widget>[
                                SizedBox(height: 20.0),
                                Text(
                                  'Login Information',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(height: 20.0),
                                TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      FocusScope.of(context)
                                          .requestFocus(mEmailFocusNode);
                                      return "Please provide the email";
                                    }
                                    return null;
                                  },
                                  textInputAction: TextInputAction.next,
                                  focusNode: mEmailFocusNode,
                                  onSaved: (value) {
                                    _email = value;
                                  },
                                  onFieldSubmitted: (v) {
                                    FocusScope.of(context)
                                        .requestFocus(mPasswordFocus);
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Email Address"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      FocusScope.of(context)
                                          .requestFocus(mPasswordFocus);
                                      return "Please provide the password!";
                                    }
                                    return null;
                                  },
                                  focusNode: mPasswordFocus,
                                  textInputAction: TextInputAction.done,
                                  onSaved: (value) => _password = value,
                                  obscureText: _passwordVisibility,
                                  onFieldSubmitted: (v) {
                                    _doLogin(buildContext);
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _passwordVisibility
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisibility =
                                              !_passwordVisibility;
                                        });
                                      },
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "Password",
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          FlatButton(
                                            child: Text("Forgot Password?"),
                                            onPressed: () {
//                                              Navigator.pushNamed(buildContext,
//                                                  RecoverPasswordPage.ID);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: RaisedButton(
                                        child: Text("LOGIN"),
                                        onPressed: () {
                                          _doLogin(context);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ])),
                        ),
                      ),
                      FlatButton(
                        child: Text(
                          "or Sign Up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
//                          Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                              builder: (context) => SignUpWithEmailScreen(),
//                            ),
//                          );
                        },
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  void _doLogin(buildContext) {}
}
