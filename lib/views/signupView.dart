
import 'package:flutter/material.dart';

import '../component/tetxfieldCotainer.dart';
import 'loginView.dart';

class SignupView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin:const  EdgeInsets.only(top: 50.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon:const Icon(Icons.arrow_back,
                      size: 30.0,),
                    onPressed: () {
                      // Navigate back when the back button is pressed
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40.0, top: 20.0),
                child:const  Align(
                  alignment: Alignment.topLeft,
                  child:  Text(
                    "Register",
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),


              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController,
                labeltext: 'First Name ',
                hinttext: 'Enter your First Name',),
              const SizedBox(
                height: 20.0,
              ),

              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController,
                labeltext: 'Last Name', hinttext: 'Enter your last Name ',),
              const SizedBox(
                height: 20.0,
              ),

              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Adress', hinttext: 'Enter your Adress',),
              const SizedBox(
                height: 20.0,
              ),

              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, hinttext: 'Email', labeltext: 'Enter your Email',),
              const SizedBox(
                height: 20.0,
              ),

              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Mobile No.', hinttext: 'Enter your Mobile No.',),
              const SizedBox(
                height: 20.0,
              ),

              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, hinttext: 'Password', labeltext: 'Enter your Password',),
              const SizedBox(
                height: 20.0,
              ),

              ElevatedButton(child: Text('Register'), onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyHomePage()),
                // );
              },),
              Container(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                            margin:const  EdgeInsets.only(left: 80.0),
                            child: Text("Already  have a account ? ")),
                        const SizedBox(height: 40.0,),

                        Padding(
                            padding: const EdgeInsets.only(left:1.0),
                            child: InkWell(
                              onTap: (){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginView()),
                                );
                              },
                              child: Text('login', style: TextStyle(fontSize: 18, color: Colors.green,)),
                            )
                        ) ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}


