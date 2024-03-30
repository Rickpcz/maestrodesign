import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/components/TabBar/components/General/createNotice.dart';
import 'package:maestro/views/Classes/components/TabBar/components/General/noticeForm.dart';

class GeneralTab extends StatelessWidget {
  const GeneralTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF60A9CD),
        onPressed: () {
          Navigator.push(context,
               MaterialPageRoute<void>(
      builder: (BuildContext context) =>  CreateNoticeScreen(),
    ), );
        },
        child: const Icon(Icons.create_sharp, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: const CreateNewNoticie(
        title: 'Título',
        subtitle: 'Subtítulo',
        description: 'Descripción',
        img: 'https://cdn-icons-png.flaticon.com/512/6269/6269251.png',
      ),
    );
  }
}

