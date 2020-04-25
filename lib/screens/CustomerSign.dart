import 'package:flutter/material.dart';
import 'package:markbran/adjust/short.dart';

class CustomerSign extends StatefulWidget {
  @override
  _CustomerSignState createState() => _CustomerSignState();
}

class _CustomerSignState extends State<CustomerSign> {
  TextEditingController email;
  TextEditingController pwd;
  // bool showPwd = true;

  // Icon _icon = Icon(
  //   Icons.visibility,
  // );
  @override
  void initState() {
    // TODO: implement initState
    email = new TextEditingController();
    pwd = new TextEditingController();
    super.initState();
  }

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // void _toggle() {
  //   setState(() {
  //     showPwd = !showPwd;
  //     if (showPwd) {
  //       _icon = Icon(
  //         Icons.visibility,
  //       );
  //     } else {
  //       _icon = Icon(Icons.visibility_off, color: Colors.grey);
  //     }
  //   });
  // }

  List<String> _dropList = ['English', "Telugu", "Hindi"];
  String _selected = "Select Language";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Stack(children: <Widget>[
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
            // Align(
            //   alignment: Alignment.bottomCenter,
            Positioned(
              top: MediaQuery.of(context).size.height * 0.18,
              child: Container(
                  // key: k2,
                  height: Short.h * 0.82,
                  width: Short.w,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 18,
                            left: Short.w * 0.03,
                            // right: Short.w * 0.07
                          ),
                          child: Material(
                            shape: Border(
                              left: BorderSide(
                                  width: 5.0, color: Colors.blue[800]),
                              bottom: BorderSide(
                                  width: 1.8, color: Colors.blue[800]),
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
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 18,
                              left: Short.w * 0.03,
                              right: Short.w * 0.02),
                          child: Material(
                            shape: Border(
                              left: BorderSide(
                                  width: 5.0, color: Colors.blue[800]),
                              bottom: BorderSide(
                                  width: 1.8, color: Colors.blue[800]),
                            ),
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: TextFormField(
                                // obscureText: showPwd,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Short.h * 0.02),
                                  labelText: '  Password',
                                  hintText: " Enter your Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Short.h * 0.02),
                                  // suffixIcon: IconButton(
                                  //   icon: _icon,
                                  //   onPressed: _toggle,
                                  // ),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(
                                  //         Short.h * 2.5)),
                                ),
                                controller: pwd,
                                keyboardType: TextInputType.visiblePassword,
                                // validator: pwdValidator,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 18,
                            left: Short.w * 0.03,
                            // right: Short.w * 0.07
                          ),
                          child: Material(
                            shape: Border(
                              left: BorderSide(
                                  width: 5.0, color: Colors.blue[800]),
                              bottom: BorderSide(
                                  width: 1.8, color: Colors.blue[800]),
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
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 18,
                              left: Short.w * 0.03,
                              right: Short.w * 0.02),
                          child: Material(
                            shape: Border(
                              left: BorderSide(
                                  width: 5.0, color: Colors.blue[800]),
                              bottom: BorderSide(
                                  width: 1.8, color: Colors.blue[800]),
                            ),
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: TextFormField(
                                // obscureText: showPwd,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Short.h * 0.02),
                                  labelText: '  Password',
                                  hintText: " Enter your Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: Short.h * 0.02),
                                  // suffixIcon: IconButton(
                                  //   icon: _icon,
                                  //   onPressed: _toggle,
                                  // ),
                                  // border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(
                                  //         Short.h * 2.5)),
                                ),
                                controller: pwd,
                                keyboardType: TextInputType.visiblePassword,
                                // validator: pwdValidator,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                                                    child: Padding(
                            padding: EdgeInsets.only(
                                top: 18,
                                left: Short.w * 0.03,
                                // right: Short.w * 0.07
                                ),
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
                        ),
                         Flexible(
                                                      child: Padding(
                      padding: EdgeInsets.only(
                            top: 18,
                            left: Short.w * 0.03,
                            right: Short.w * 0.02
                            ),
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
                              // obscureText: showPwd,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                labelText: '  Password',
                                hintText: " Enter your Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: Short.h * 0.02),
                                // suffixIcon: IconButton(
                                //   icon: _icon,
                                //   onPressed: _toggle,
                                // ),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(
                                //         Short.h * 2.5)),
                              ),
                              controller: pwd,
                              keyboardType: TextInputType.visiblePassword,
                              // validator: pwdValidator,
                            ),
                        ),
                      ),
                    ),
                         ),
                      ],
                    ),
                      Padding(
                           padding: EdgeInsets.only(
                               top: 18,
                               left: Short.w * 0.03,
                               // right: Short.w * 0.07
                               ),
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
                                   labelText: '  Enter your house address',
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
                  ],
                ),
              ),
                    ],
                  ),
                ),
            ),
            Align(
              alignment: Alignment.center,
              heightFactor: Short.h / 175,
// 5.5,
              child: Padding(
                padding: EdgeInsets.only(top: Short.h * 0.0),
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
                            child: Text("Customer Sign Up",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue[800])),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
