import 'package:flutter/material.dart';

import '../../../../core/constant/style.dart';
import 'widgets/caller_info.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({Key? key}) : super(key: key);

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
        children: const [
          CallerInfo(
            name: 'Ebrahem Khaled',
            description: 'Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum',
            imageURL:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"',
            role: 'Specialist - Manager',
            date: '02:39AM',
          ),

        ],
      ),
    );
  }
}
