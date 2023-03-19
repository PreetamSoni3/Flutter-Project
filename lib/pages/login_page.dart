import 'package:firstproject/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png",fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),

            Text("Welcom $name",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 40,
            ),),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {});
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  InkWell(
                    onTap: () async{
                    setState(() {
                      changeBtn = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);


                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeBtn? 50: 150,
                      height: 50,
                      alignment: Alignment.center,

                      child: changeBtn ? Icon(Icons.done, color: Colors.white,) : Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),

                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeBtn ? 50 :8),
                      ),
                    ),
                  ),

                  // ElevatedButton(onPressed:(){
                  //   Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  // }, child: Text("Login")),



                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
