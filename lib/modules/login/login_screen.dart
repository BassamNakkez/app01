import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget
{
  var  emailController = TextEditingController();
  var  passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sing in',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    //  fontStyle: CupertinoIcons.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                  Container(
                    decoration: const BoxDecoration(

                      ),
                    child: const TextField(
                      //controller: emailController,
                      keyboardType:TextInputType.emailAddress ,
                     keyboardAppearance: Brightness.light,
                     strutStyle: StrutStyle(
                       fontSize: 20,
                       ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        paste: true,
                        cut: true,
                        selectAll: true,
                      ),
                      cursorColor: Colors.deepOrange,
                     ),
                  ),

                const SizedBox(
                  height: 80,
                ),
                Container(
                  height:0.5,
                  color: Colors.white,
                  child: const TextField(
                    cursorColor: Colors.deepOrange,

                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),


                    const Spacer(),
                    FloatingActionButton(onPressed: ()
                    {

                    },
                      backgroundColor: Colors.deepOrange,
                      child : const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 20,),
                Row(
                  children: [
                    const Text(
                      'Don\' have an account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(onPressed: (){} , child:
                    const Text(
                      'SING UP',
                      style: TextStyle(
                        color: Colors.deepOrange,
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
    );
  }
}