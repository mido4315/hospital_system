import 'package:flutter/material.dart';

import 'package:hospital_system/core/constant/imgeassets.dart';
import 'package:hospital_system/features/sign%20In/presentation/views/widgets/textFormField.dart';

import '../../../../core/constant/FreeWidget.dart';
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: Image(
                      image: AssetImage(ImageAssets.applogo,),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Welcome back !',
                    style: TextStyle(
                        fontSize: 26, color: ConstantColor.lightGreen),
                  ),
                  SizedBox(height: 8,),
                  Text('To Continue,Login New',style: TextStyle(color: ConstantColor.Gray,fontSize: 14),),
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextformFieldCustom(
                            controller: emailController,
                            hintText: 'Phone Number',
                            textInputType: TextInputType.number,
                            passmode: false,
                            errorText: 'Plz Enter your Email ',
                            prefix: Icon(
                              Icons.phone_outlined,
                              color: ConstantColor.lightGreen,
                            ),

                          ),
                          SizedBox(height: 20,),
                          TextformFieldCustom(
                            controller: passController,
                            hintText: 'Password',
                            passmode: true,
                            errorText: 'plz Enter your Password',
                            prefix: Icon(
                              Icons.lock_outline,
                              color: ConstantColor.lightGreen,
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        Show.snackBar(context: context, content: 'open Start Page',duration: 2);
                      }
                      else Show.snackBar(context: context, content: 'try again');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: ConstantColor.lightGreen
                    ),
                    child: SizedBox(
                      height: 50,
                      width: PageSize.width(context)*0.9,
                      child:Center(child: Text('Login',style: TextStyle(fontSize: 16,color:Colors.white),)),
                    ),
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
