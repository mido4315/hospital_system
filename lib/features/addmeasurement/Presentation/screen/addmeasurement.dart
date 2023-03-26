import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/style.dart';
import '../widget/addmeasurement_content.dart';
import '../widget/addmeasurement_header.dart';

class AddMeasurement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Add measurement', style: Style.measurementStyle1),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddMeasurementHeader(),
            AddMeasurementContent(),
          ],
        ),
      ),
    );
  }
}
