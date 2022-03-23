import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Daftar",style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 18,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nama",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey,width: 1)
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  decoration: new InputDecoration.collapsed(
                                      hintText: 'Nama'
                                  ),
                                ),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 18,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey,width: 1)
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  decoration: new InputDecoration.collapsed(
                                      hintText: 'Email'
                                  ),
                                ),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 18,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey,width: 1)
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  obscureText: true,
                                  decoration: new InputDecoration.collapsed(
                                      hintText: 'Password'
                                  ),
                                ),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 18,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Confirm Password",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey,width: 1)
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  obscureText: true,
                                  decoration: new InputDecoration.collapsed(
                                      hintText: 'Re-Enter Password'
                                  ),
                                ),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 36,
                          ),
                          child: ElevatedButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 90,vertical: 8),
                                child: Text("Daftar",style: TextStyle(fontSize: 20),)),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Nav()),);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
