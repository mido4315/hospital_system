import 'package:flutter/material.dart';

import '../../../../core/constant/style.dart';
import '../../../report/presentation/views/widgets/custombutton.dart';
import '../../../report/presentation/views/widgets/customtextformfield.dart';
import '../../../report/presentation/views/widgets/dropdownlist.dart';


class CreateCallManager extends StatelessWidget {
  const CreateCallManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.002),
        centerTitle: true,
        title: const Text(
          "Create Call",
          style: Style.appBarText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const DropdownList(),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormField(
                  label: "Description",
                  maxLine: 3,
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              child: CustomButton(
                  label: "Create Call",
                  style: Style.buttonText2,
                  color: const Color(0xff22C7B8),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
