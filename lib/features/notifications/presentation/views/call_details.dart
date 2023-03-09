import 'package:flutter/material.dart';

import '../../../../core/constant/style.dart';
import 'widgets/caller_info.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({Key? key}) : super(key: key);

  void _showmodelbottomsheet(BuildContext context) {
    showBottomSheet(
        backgroundColor: Colors.transparent,
        enableDrag: true,
        context: context,
        builder: (context) => SingleChildScrollView(child: CallBottom()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.002),
        centerTitle: true,
        title: const Text(
          "Call details",
          style: Style.appBarText,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              _showmodelbottomsheet(context);
            },
            child: CallerInfo(
              name: 'Ebrahem Khaled',
              description:
                  'Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum',
              imageURL:
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"',
              role: 'Specialist - Manager',
              date: '02:39AM',
            ),
          ),
        ],
      ),
    );
  }
}

class CallBottom extends StatelessWidget {
  const CallBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: ShapeDecoration(
          color: Color(0xFFEAEAEA),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(28),
                  topLeft: Radius.circular(28)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            indent: 150,
            endIndent: 150,
            thickness: 5,
            color: Colors.white54,
          ),
          ListTile(
            leading: Image.asset('images/Rectangle.png'),
            title: Text('Shawky Ahmed'),
            subtitle: Text(
              "Specialist - Manger",
              style: TextStyle(color: Color(0xFF22C7B8)),
            ),
            trailing: Text("13 Mar 2020"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''Details note : Lorem Ipsum is simply dummy text of 
printing and typesetting industry.Lorem Ipsum''',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    minimumSize: const Size(60, 50),
                    primary: Colors.green),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Accept')
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      minimumSize: const Size(125, 50),
                      primary: Colors.orange),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Busy')
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
