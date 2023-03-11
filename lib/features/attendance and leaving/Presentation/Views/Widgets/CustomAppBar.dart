import 'package:flutter/material.dart';

import '../../../../notifications/presentation/views/notifications.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: CircleAvatar(
          child: Image.asset('images/FingerPrint/MaskGroup2.png'),
        ),
      ),
      title: const Text('Ebrahem Elzainy'),
      subtitle: const Text('Specialist , Doctor'
      ,style: TextStyle(
          color: Color(0xFF22C7B8)
        ),),
      trailing: IconButton(
        icon: const Icon(Icons.notification_add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications(),));
        },
      ),
    );
  }
}