import 'package:flutter/material.dart';

import '../../../../profile/presentation/views/screens/profile.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            );
          },
          child: CircleAvatar(
            child: Image.asset('images/FingerPrint/MaskGroup2.png'),
          ),
        ),
      ),
      title: const Text('Ebrahem Elzainy'),
      subtitle: const Text('Specialist , Doctor'
      ,style: TextStyle(
          color: Color(0xFF22C7B8)
        ),),
      trailing: IconButton(
        icon: Image.asset('images/FingerPrint/notification.png',width: 25),
        onPressed: () {},
      ),
    );
  }
}