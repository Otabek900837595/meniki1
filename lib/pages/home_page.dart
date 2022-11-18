
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade600,
              Colors.grey.shade400,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Sign up", style: TextStyle(fontSize: 40, color: Colors.white,),),
                  SizedBox(height: 10,),
                  Text("Welcome ", style: TextStyle(fontSize: 20, color: Colors.white,),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, .7),
                                offset: Offset(0, 10),
                                blurRadius: 20,
                              ),
                            ]
                        ),
                        child: Column(
                          children: [
                            // email
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Fullname",
                                    hintStyle: TextStyle(color: Colors.grey,)
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey,)
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "phone",
                                    hintStyle: TextStyle(color: Colors.grey,)
                                ),
                              ),
                            ),
                            // password
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey,)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      // SignInButton
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: MaterialButton(
                          height: 50,
                          minWidth: double.infinity,
                          color: Colors.grey.shade800,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: (){},
                          child: const Text("SignUp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Sign up with SNS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, ),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: MaterialButton(
                                height: 50,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                onPressed: (){},
                                child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: MaterialButton(
                                height: 50,
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                onPressed: (){},
                                child: Text("google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: MaterialButton(
                                height: 50,
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                onPressed: (){},
                                child: Text("Apple", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}