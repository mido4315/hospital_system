// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/features/call_screen/presentation/business%20logic/calls%20cubit/calls_cubit.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Text_feld.dart';
import '../../../../widget/callsTask.dart';

class call extends StatelessWidget {
  // create_call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return BlocProvider(
      create: (context) => CallsCubit()..fetchCalls(),
      child: Scaffold(
          backgroundColor: ConstantColor.white,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ConstantColor.black3,
              ),
            ),
            shadowColor: Colors.transparent,
            backgroundColor: ConstantColor.white,
            title: const Text(
              " Call",
              style: Style.style2,
            ),
            centerTitle: true,
          ),
          body: BlocBuilder<CallsCubit, CallsState>(
            builder: (context, state) {
              if (state is CallsSuccess) {
                return Center(
                    child: ListView.builder(
                  itemCount: state.myCalls!.length,
                  itemBuilder: (context, index) {
                    return callstask(
                        "${state.myCalls![index]?.data!.patientName}",
                        "${state.myCalls![index]?.data!.createdAt}",
                        () {},
                        () {});
                  },
                ));
              } else if (state is CallsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Center(
                  child: Text("Error please try again"),
                );
              }
            },
          )),
    );
  }
}
