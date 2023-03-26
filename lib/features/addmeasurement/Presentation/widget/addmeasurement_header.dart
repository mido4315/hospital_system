import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:hospital_system/features/report/presentation/views/widgets/custombutton.dart';
import '../../../../core/constant/style.dart';

class AddMeasurementHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('images/Path.png'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const Profile(),
                          //   ),
                          // );
                        },
                        child: Image.asset('images/Rectangle.png'),
                      ),
                    ),
                    title: Text(
                      'Ebrahem Elzainy',
                      style: Style.measurementStyle1.copyWith(fontSize: 14),
                    ),
                    subtitle: Text(
                      'Specialist - Doctor',
                      style: Style.style1.copyWith(color: Color(0xFF22C7B8)),
                    ),
                    trailing: Text(
                      formatDate(DateTime.now(), [dd, ' ', MM, ' ', yyyy]),
                      style: Style.measurementStyle2,
                    ),
                  ),
                  Text(
                    "Details note : Lorem Ipsum is simply"
                    " dummy text of printing and typesetting industry.Lorem Ipsum",
                    style: Style.style1.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CustomButton(
                        label: 'Blood pressure',
                        color: const Color(0xff22C7B8),
                        onPressed: () {},
                        style: Style.style1.copyWith(color: Colors.white),
                        width: 113,
                        height: 44,
                        radius: 5,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        label: 'Sugar analysis',
                        color: const Color(0xff22C7B8),
                        onPressed: () {},
                        style: Style.style1.copyWith(color: Colors.white),
                        width: 113,
                        height: 44,
                        radius: 5,
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
