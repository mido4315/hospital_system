import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff22C7B8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('My Profile',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.arrow_back,)),

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 40),
          child: Stack(children: <Widget>[
            Center(
              child: Container(

                margin: const EdgeInsets.only(top: 80.0),
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height * 0.62,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                                        )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      const Center(
                        child: Text('Ebrahem ElZainy',style: TextStyle(color: Color(0xff22C7B8)),),
                      ),
                      CustomTile(icon: const Icon(Icons.medical_services_outlined,color: Color(0xff22C7B8),),tile: 'Specialist - Doctor',),
                      CustomTile(icon: Image.asset('assets/profile_screen/gender.png',scale: 3,),tile: 'Male',),
                      CustomTile(icon: const Icon(Icons.calendar_month,color: Color(0xff22C7B8),),tile: '29-03-1997',),
                      CustomTile(icon: const Icon(Icons.location_on_outlined,color: Color(0xff22C7B8),), tile: 'Mansoura,Shirben'),
                      CustomTile(icon: Image.asset('assets/profile_screen/heart.png',scale: 3,),tile: 'Single',),
                      CustomTile(icon: Image.asset('assets/profile_screen/message.png',scale:3,), tile: 'ebrahemelzainey@gmail.com'),
                      CustomTile(icon: Image.asset('assets/profile_screen/phone.png',scale:3,), tile: '096521145523'),

                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4,color: const Color(0xff22C7B8)),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.white38.withOpacity(0.3),
                        ),
                      ]
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/profile_screen/Mask Group 2.png'),
                    ),
                  ),
                ],
              ),
            ),

           
          ]),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
 Widget? icon;
 String tile;

CustomTile({
  required this.icon,
  required this.tile,
}
    );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xff22C7B8).withOpacity(0.2),
          borderRadius: BorderRadius.circular(8)
        ),
        child: icon,
      ),
      title: Text(tile),
    );
  }
}
