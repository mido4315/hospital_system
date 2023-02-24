import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: CircleAvatar(
          child: Image.asset('images/FingerPrint/MaskGroup2.png'),
        ),
      ),
      title: Text('Ebrahem Elzainy'),
      subtitle: Text('Specialist , Doctor'
      ,style: TextStyle(
          color: Color(0xFF22C7B8)
        ),),
      trailing: IconButton(
        icon: Icon(Icons.notification_add),
        onPressed: () {},
      ),
    );
  }
}