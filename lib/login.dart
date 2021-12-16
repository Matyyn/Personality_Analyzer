import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/person.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 150, top: 150),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35, top: 320),
              child: Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 29,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Container(
                            child: TextField(
                              controller: myController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              obscureText: true,
                              controller: myController2,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                //backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    //  color: Colors.white,
                                    onPressed: () {

                                      if(myController.text =='Mateen@gmail.com' && myController2.text == 'mateen') {
                                        Navigator.pushNamed(context, 'form');
                                      }
                                      else if(myController.text =='Kumail@gmail.com' && myController2.text == '123') {
                                        Navigator.pushNamed(context, 'form');
                                      }
                                      else if(myController.text =='Hadi@gmail.com' && myController2.text == '1234') {
                                        Navigator.pushNamed(context, 'form');
                                      }
                                      else{
                                        Navigator.pushNamed(context, 'login');
                                      }
                                      /* var db = await new_db().connection();
                                      var coll =  db.collection('User');
                                      var res = await coll.find({
                                        'Email': myController,
                                        'Password': myController2
                                      }).toList();*/
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.deepOrange,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'forgotPassword');
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.deepOrange,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
