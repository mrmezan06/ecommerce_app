import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/AppColors.dart';
import 'loginScreen.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
   final TextEditingController _emailController = TextEditingController();
   final TextEditingController _passwordController = TextEditingController();
   bool _obscureText = true;

  // signIn()async{
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: _emailController.text,
  //         password: _passwordController.text
  //     );
  //     var authCredential = userCredential.user;
  //     print(authCredential!.uid);
  //     if(authCredential.uid.isNotEmpty){
  //       Navigator.push(context, CupertinoPageRoute(builder: (_)=>const BottomNavController()));
  //     }
  //     else{
  //       Fluttertoast.showToast(msg: "Something is wrong");
  //     }

  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       Fluttertoast.showToast(msg: "No user found for that email.");

  //     } else if (e.code == 'wrong-password') {
  //       Fluttertoast.showToast(msg: "Wrong password provided for that user.");

  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          color: Colors.redAccent,
          alignment: Alignment.center,
          child: Column(
            
            children: [
              Container(
                height: 50,
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 40,left: 20),
                child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 36),),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height-160,
                  width: double.infinity,
                  
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                      const Text('Welcome Buddy', style: TextStyle(color: Colors.deepOrange, fontSize: 32),),
                      const Text('Glad to see you back'),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.email_outlined, color: Colors.redAccent, size: 32,),
                          Expanded(
                            child: TextField(
                              controller: _emailController,
                                decoration: const InputDecoration(
                                  hintText: "example@gmail.com",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: 'EMAIL',
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.deep_orange,
                                  ),
                                ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.lock_outlined, color: Colors.redAccent, size: 32,),
                          Expanded(
                            child: TextField(
                                controller: _passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  
                                  hintText: 'Password must be 6 character',
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF414041),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(
                                    fontSize: 15,
                                    color: AppColors.deep_orange,
                                  ),
                                  suffixIcon: _obscureText == true
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = false;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                            size: 20,
                                            color: AppColors.deep_orange,
                                          ))
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = true;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.visibility_off,
                                            size: 20,
                                            color: AppColors.deep_orange,
                                          )),
                                ),
                                
                            ),
                            
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(left: 20, right: 40),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                primary: AppColors.deep_orange,
                                elevation: 3,
                              ),
                          onPressed: (){},
                           child: const Text('Register', style: TextStyle(fontSize: 32,color: Colors.white),)
                           ),
                      ),
                      const SizedBox(height: 10,),
                      Center(
                        child: Wrap(
                          children: [
                            const Text('Already have an account?',style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBBBB),
                              ),
                              ),
                              GestureDetector(
                              child: const Text(
                                " Sign In",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.deep_orange,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            )

                          ],
                        ),
                      )
                    ],
                    )
                  )
                ),
              )
            ]
            ),
        ),
      ),
    );
  }
}