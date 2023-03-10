import 'package:flutter/material.dart';
import 'package:hospital_system/features/Measurment/presentation/view/widgets/MultiSelect.dart';
import 'package:hospital_system/features/report/presentation/views/widgets/customtextformfield.dart';
class MedicalRecordtext extends StatefulWidget {
  const MedicalRecordtext({Key? key, required this.MyState}) : super(key: key);
  final String MyState;

  @override
  State<MedicalRecordtext> createState() => _MedicalRecordtextState();
}

class _MedicalRecordtextState extends State<MedicalRecordtext> {
  List<String> _selectedItems = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> items = [
      'Blood Pressure',
      'Sugar analysis',
      'SGOT,SGPT',
      'ESR',
      'Liquid Profile',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: widget.MyState=='record'?const Text('Medical Record',
          style: TextStyle(color: Colors.black),):
        const Text('Medical Measurment',
          style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.close,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // use this button to open the multi-select dialog
                Wrap(
                  children:
                  _selectedItems
                      .map((e) =>
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Chip(
                          backgroundColor: Color(0xff22C7B8),
                          deleteIconColor: Colors.white,
                          deleteIcon: Icon(Icons.close),
                          onDeleted: () => setState(() {
                            _selectedItems.remove(e);
                          }),
                          label: Text(e,style: TextStyle(color: Colors.white),),
                        ),
                      ))
                      .toList(),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFFFFF)),
                    onPressed: _showMultiSelect,
                    child: Row(
                      children: [
                        Text('Add Measurment',style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 20,),
                        Icon(Icons.add,color: Colors.grey,),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 30,
                ),
                CustomTextFormField(
                    label: 'Add note',
                  maxLine: 3,
                  color: Color(0xffEFEFEF),

                ),

                // display selected items

              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.914,
                height: MediaQuery.of(context).size.height * 0.0675,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff22C7B8)),
                    child: const Text('Send'),
                    onPressed: () {


                    })),
          ],
        ),
      ),
    );
  }
}