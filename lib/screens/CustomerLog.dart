import 'package:flutter/material.dart';
import 'package:markbran/adjust/short.dart';

class CustomerLog extends StatefulWidget {
  @override
  _CustomerLogState createState() => _CustomerLogState();
}

class _CustomerLogState extends State<CustomerLog> {
  TextEditingController email;
  TextEditingController pwd;
  bool showPwd = true;

  Icon _icon = Icon(
    Icons.visibility,
  );
  @override
  void initState() {
    // TODO: implement initState
    email = new TextEditingController();
    pwd = new TextEditingController();
    super.initState();
  }

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _toggle() {
    setState(() {
      showPwd = !showPwd;
      if (showPwd) {
        _icon = Icon(
          Icons.visibility,
        );
      } else {
        _icon = Icon(Icons.visibility_off, color: Colors.grey);
      }
    });
  }

  List<String> _dropList = ['English', "Telugu", "Hindi"];
  String _selected = "Select Language";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Image.asset(
                  "img/xyzlogo.jpg",
                  width: Short.w * 0.4,

                  // width: 30,height: 50,
                ),
              ),
            ),
            width: Short.w,
            height: MediaQuery.of(context).size.height * 0.20,
            color: Colors.blue[800],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // key: k2,
              height: Short.h * 0.82,
              width: Short.w,

              color: Colors.white,

              child: Column(children: <Widget>[
                Material(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: Short.h * 0.05),
                    child: DropdownButton<String>(
                      iconEnabledColor: Colors.black,
                      items: _dropList
                          .map((drop) => DropdownMenuItem<String>(
                                child: Text(
                                  drop,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                value: drop,
                              ))
                          .toList(),
                      onChanged: (String value) {
                        setState(() => _selected = value);
                      },
                      hint: Text(
                        _selected,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height:Short.h*0.1),

                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 25,
                            left: Short.w * 0.07,
                            right: Short.w * 0.07),
                        child: Material(
                          shape: Border(
                            left:
                                BorderSide(width: 5.0, color: Colors.blue[800]),
                                 bottom:
                                BorderSide(width: 1.8, color: Colors.blue[800]),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                labelText: '  Email/Phone',
                                hintText: " Enter your email /Phone",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(
                                //         Short.h * 2.5)),
                              ),
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              // validator: emailValidator,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 25,
                            left: Short.w * 0.07,
                            right: Short.w * 0.07),
                        child: Material(
                          shape: Border(
                            left:
                                BorderSide(width: 5.0, color: Colors.blue[800]),
                                bottom:
                                BorderSide(width: 1.8, color: Colors.blue[800]),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: TextFormField(
                              obscureText: showPwd,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                labelText: '  Password',
                                hintText: " Enter your Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                suffixIcon: IconButton(
                                  icon: _icon,
                                  onPressed: _toggle,
                                ),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(
                                //         Short.h * 2.5)),
                              ),
                              controller: pwd,
                              keyboardType: TextInputType.visiblePassword,
                              validator: pwdValidator,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Short.h * 0.045),
                  child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: Short.h * 0.01,
                          bottom: Short.h * 0.01,
                          left: Short.w * 0.30,
                          right: Short.w * 0.30),
                      color: Colors.blue[800],
                      onPressed: () {
                        print("Login button is clicked");
                      },
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.white, fontSize: Short.h * 0.04))),
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                  Material(
                      color: Colors.white,
                      child: Text(
                        "or",
                        style: TextStyle(
                            color: Colors.grey, fontSize: Short.h * 0.02),
                      )),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                ]),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(
                      top: Short.h * 0.018, bottom: Short.h * 0.018),
                  child: FlatButton(
                    onPressed: () {
                      print("Login via otp");
                    },
                    child: Text(
                      "Login via OTP",
                      style: TextStyle(
                          color: Colors.blue[800], fontSize: Short.h * 0.025),
                    ),
                  ),
                )),
                Divider(color: Colors.grey[300], thickness: Short.h * 0.01),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: Short.h * 0.01),
                  child: FlatButton(
                    onPressed: () {
                      print("Forgot Password");
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.blue[800], fontSize: Short.h * 0.025),
                    ),
                  ),
                )),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                  Material(
                      color: Colors.white,
                      child: Text(
                        "or",
                        style: TextStyle(
                            color: Colors.grey, fontSize: Short.h * 0.02),
                      )),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                ]),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                          color: Colors.white,
                          child: Text(
                            "Don't have an account ? ",
                            style: TextStyle(
                                color: Colors.grey, fontSize: Short.h * 0.025),
                          )),
                      FlatButton(
                        onPressed: () {
                          print("Forgot Password");
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontSize: Short.h * 0.025),
                        ),
                      ),
                    ]),
              ]),
            )),
        // Positioned(top:Short.h*0.15,left:Short.w*0.1,
        Align(
          alignment: Alignment.center,
          heightFactor: Short.h / 175,
// 5.5,
          child: Padding(
            padding: EdgeInsets.only(top: Short.h * 0),
            child: SizedBox(
              width: Short.w * 0.7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue[800], width: 7.0),
                    borderRadius: BorderRadius.circular(40)
                    // border:BoxBorder()
                    ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "img/cus.png",
                        width: 30,
                        height: 50,
                      ),
                      Material(
                        child: Text("Customer Login",
                            style: TextStyle(
                                fontSize: 20, color: Colors.blue[800])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

String pwdValidator(String value) {
  if (value.length < 3) {
    return "please fill this field with atleast 3 characters";
  } else {
    return null;
  }
}
