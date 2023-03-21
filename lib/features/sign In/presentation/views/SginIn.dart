import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hospital_system/core/constant/imgeassets.dart';
import 'package:hospital_system/features/sign%20In/presentation/business_logic/sign%20in%20cubit/sign_in_cubit.dart';
import 'package:hospital_system/features/sign%20In/presentation/views/widgets/textFormField.dart';

import '../../../../core/constant/FreeWidget.dart';
import '../../../../core/constant/color.dart';
import '../../../HR-Employee/presentation/views/widget/textformfieldCustom.dart';
import '../../../Main/presentation/view/screens/main_page.dart';
import '../../data/api service/api_service.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: SafeArea(
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
                width: PageSize.width(context),
                child: BlocBuilder<SignInCubit, SignInState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(),
                        const SizedBox(
                          height: 120,
                          width: 120,
                          child: Image(
                            image: AssetImage(
                              ImageAssets.applogo,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Welcome back !',
                          style: TextStyle(
                              fontSize: 26, color: ConstantColor.lightGreen),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'To Continue,Login New',
                          style: TextStyle(
                              color: ConstantColor.Gray, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  TextformFieldCustom(
                                    hintText: 'Phone Number',
                                    passmode: false,
                                    errorText:
                                    'The number you entered is not connected to an account.',
                                    prefix: Icon(
                                      Icons.phone_outlined,
                                      color: ConstantColor.lightGreen,
                                    ),
                                    onChanged: (value) {
                                      context
                                          .read<SignInCubit>()
                                          .emailChanged(value);

                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextformFieldCustom(
                                    passmode: true,
                                    hintText: 'Password',
                                    errorText:
                                    'The password that you have entered is incorrect.',
                                    prefix: Icon(
                                      Icons.lock_outline,
                                      color: ConstantColor.lightGreen,
                                    ),
                                    onChanged: (value) {
                                      context
                                          .read<SignInCubit>()
                                          .passwordChanged(value);
                                    },
                                  ),
                                ],
                              ),
                            ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Future<bool?> status = SignInCubit().login(state.email,state.password);
                            if (await status == true) {
                              Show.snackBar(
                                  context: context,
                                  content: 'open Start Page',
                                  duration: 2);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const mainPage()));
                            } else {
                              Show.snackBar(
                                  context: context, content: 'try again');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: ConstantColor.lightGreen),
                          child: SizedBox(
                            height: 50,
                            width: PageSize.width(context) * 0.9,
                            child: const Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
