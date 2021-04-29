import 'package:flutter/material.dart';
import 'package:prototype_app/error_message.dart';
import 'package:prototype_app/screens/sign_in/components/sign_in_error.dart';
import 'package:prototype_app/size_config.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;
  String emailError = '';
  String passwordError = '';
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(28.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sign in with your email and password \nor continue with social media',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (newValue) => email = newValue,
                          onChanged: (value) {
                            setState(() {
                              if (value.isNotEmpty) {
                                emailError = '';
                              } else if (emailValidatorRegExp.hasMatch(value)) {
                                emailError = '';
                              }
                            });
                          },
                          validator: (value) {
                            setState(() {
                              if (value.isEmpty) {
                                emailError = kEmailNullError;
                              } else if (!emailValidatorRegExp
                                  .hasMatch(value)) {
                                emailError = kInvalidEmailError;
                              }
                            });
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.grey),
                            errorText: emailError,
                            errorStyle: TextStyle(color: Colors.red),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: getProportionateScreenHeight(30.0)),
                        TextFormField(
                          obscureText: true,
                          onSaved: (newValue) => password = newValue,
                          onChanged: (value) {
                            setState(() {
                              if (value.isNotEmpty) {
                                passwordError = '';
                              } else if (value.length >= 8) {
                                passwordError = '';
                              }
                              return null;
                            });
                          },
                          validator: (value) {
                            setState(() {
                              if (value.isEmpty) {
                                passwordError = kPassNullError;
                                return '';
                              } else if (value.length < 8) {
                                passwordError = kShortPassError;
                                return '';
                              }
                            });
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.grey),
                            errorText: passwordError,
                            errorStyle: TextStyle(color: Colors.red),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.white,
                        ),
                        child: Checkbox(
                          value: remember,
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              remember = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20.0)),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenHeight(56.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18.0),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
