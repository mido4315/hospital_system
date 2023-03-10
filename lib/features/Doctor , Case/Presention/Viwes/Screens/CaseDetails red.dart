import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constant/Provider_Data.dart';
import '../../../../Cases/Presentaion/View/Screen/Cases.dart';
import '../../../../Cases/Presentaion/View/Screen/MedicalRecord.dart';
import '../../../../Select Doctor/presentation/views/Select_Doctor.dart';
import '../../../../addmeasurement/Presentation/screen/addmeasurement.dart';
import '../../../../addmedicalrecord/Presentation/screen/addmedicalrecord.dart';
import '../../../../Measurment/presentation/view/screens/MedicalRecord.dart';
import '../../../../splash - prototype map/presentation/views/splash_view.dart';
import 'CaseDetails.dart';
import 'Cases.dart';
import 'TextWIDGET.dart';

class CaseDetailsred extends StatelessWidget {
   const CaseDetailsred({Key? key}) : super(key: key);

  void _showmodelbottomsheet(BuildContext context) {
    showBottomSheet(
        backgroundColor: Colors.transparent,
        enableDrag: true,
        context: context,
        builder: (context) =>
            SingleChildScrollView(child: DetailsSheet(

            )));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidgets(
          title: 'Patient Name',
          subtitle: 'Ebrahim Khaled',
        ),
        TextWidgets(
          title: 'Age',
          subtitle: '24 years',
        ),
        TextWidgets(
          title: 'phone number',
          subtitle: '254110241423',
        ),
        TextWidgets(
          title: 'Date',
          subtitle: '24,04,2021',
        ),
        TextWidgets(
          title: 'Doctor',
          subtitle: 'Salma Ahmed',
        ),
        TextWidgets(
          title: 'Nurse',
          subtitle: 'Ali islam',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Status', style: TextStyle(color: color)),
              Row(
                children: const [
                  Text('Process'),
                  Icon(
                    Icons.timelapse_rounded,
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Row(
            children: const [
              Text(
                'Case Description',
                style: TextStyle(color: color),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Row(
            children: const [
              Text('''
 Details note : Lorem Ipsum is simply dummy
 text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's ''')
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 152,
                height: 45,
                child: Provider
                    .of<Provider_data>(context)
                    .Prototype == 2
                    ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color(0xFF22C7B8)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            Select_Doctor('Select Analysis employee'),));
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 40,
                        ),
                        Text(
                          'Add Nurse',
                        ),
                      ],
                    ))
                    : SizedBox()),
            SizedBox(
                width: 150,
                height: 45,
                child: Provider
                    .of<Provider_data>(context)
                    .Prototype == 2
                    ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color(0xFF22C7B8)),
                    onPressed: () {
                      _showmodelbottomsheet(context);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 40,
                        ),
                        Text(
                          'Request',
                        ),
                      ],
                    ))
                    : SizedBox()),
          ],
        ),
        SizedBox(
          height: 150,
        ),
        Provider
            .of<Provider_data>(context)
            .Prototype == 2
            ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minimumSize: Size(370, 53),
              primary: Color(0xFFE63A3A),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cases()));
            },
            child: Text('End Case'))
            : SizedBox()
      ],
    );
  }
}


class DetailsSheet extends StatefulWidget {
  const DetailsSheet({
    super.key,
  });

  @override
  State<DetailsSheet> createState() => _DetailsSheetState();
}

class _DetailsSheetState extends State<DetailsSheet> {
  String selected = "first";
  Color color= Colors.grey;
  bool ispressed=true;
  String ?record;
  String ?measurement;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration:
    ShapeDecoration(color:Color(0xFFEAEAEA),
    shape:
    RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(28),
    topLeft: Radius.circular(28)
    )
    )),
    height: 290,
    child: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Divider(
    indent: 150,
    endIndent: 150,
    thickness: 5,
    color: Colors.grey,
    ),
    SizedBox(height: 30,),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    GestureDetector(
      onTap: (){
        setState(() {
          ispressed=!ispressed;

        });

      },
      child: Container(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.medical_services_outlined,size: 50,
            color:ispressed? Color(0xFF22C7B8):Colors.grey,),
            SizedBox(height: 10,),
            Text("medical record",style: TextStyle(
              color: ispressed? Color(0xFF22C7B8):Colors.grey,
            ),)
          ],
        ),
      height: 130,
      width: 180,
      decoration:BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
      color:ispressed? Color(0xFF22C7B8):Colors.grey,
      width: 2
      )
      ),
      ),
    ),
      GestureDetector(
        onTap: (){
          setState(() {
            ispressed=!ispressed;
          });
        },
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.timelapse_rounded,size: 50,
                  color:ispressed? Colors.grey:Color(0xFF22C7B8),),
              SizedBox(height: 5,),
              Text("medical Measurement",style: TextStyle(fontSize: 13,
                  color: ispressed? Colors.grey:Color(0xFF22C7B8),)
              )],
          ),
          height: 130,
          width: 180,
          decoration:BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: ispressed? Colors.grey:Color(0xFF22C7B8),
                  width: 2
              )
          ),
        ),
      )
    ],
    ),
      SizedBox(height: 50,),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(370, 53),
            primary: Color(0xFF22C7B8),
          ),
          onPressed: () {
            if(ispressed==true|| ispressed==record){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecordtext(MyState: 'record',)));
            }else if(ispressed==false || ispressed==measurement){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecordtext(MyState: 'measurment',)));
            }
          },
          child: Text('Request'))
    ],
    ),
    );
    }
}
