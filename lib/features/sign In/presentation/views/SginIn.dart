import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/MediaQuery.dart';
import 'package:hospital_system/core/constant/imgeassets.dart';

import '../../../../core/constant/color.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const Positioned(
              left: 0,
              top: 0,
              child: Image(
                image: AssetImage('assets/Sign_In/backimage1.png'),
              ),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: Image(
                image: AssetImage('assets/Sign_In/backimage2.png'),
              ),
            ),
            Container(
              height: PageSize.height(context),
              width: PageSize.width(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(ImageAssets.applogo),
                  ),
                  Text(
                    'Welcome back !',
                    style: TextStyle(
                        fontSize: 26, color: ConstantColor.green_white),
                  ),
                  Text('data'),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.local_phone_outlined,color: ConstantColor.green_white,),
                            // prefix: Icon(
                            //   Icons.local_phone_outlined,
                            //   color: ConstantColor.green_white,
                            // ),
                          ),
                          validator: (value) {
                            if (value!.length < 6)
                              return null;
                            else
                              return 'plz enter your E_Mail';
                          },
                        ),
                        TextFormField(),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
