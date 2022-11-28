import 'package:ae_project/sign_up.dart';
import 'package:flutter/material.dart';

class ParticipantsScreen extends StatelessWidget {
  String ibrohim = 'Ibroximjon Maxammadjonov';
  String bobomurod = 'Bobomurod Najmiyev';
  String kamron = 'Kamronbek Kamilov';
  String zokir = 'Zokir Zugurov';
  String humoyiddin = 'Humoyiddin Qamariddinov';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACADEMIC ENGLISH PROJECT'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Group participants',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Participant(participant: kamron, color: Colors.blue),
            Participant(participant: humoyiddin, color: Colors.red),
            Participant(participant: zokir, color: Colors.green),
            Participant(participant: bobomurod, color: Colors.orange),
            Participant(participant: ibrohim, color: Colors.pink),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SignUpScreen())));
                }),
                child: Text('Let\'s start')),
          ],
        ),
      ),
    );
  }
}

class Participant extends StatelessWidget {
  const Participant({
    Key? key,
    required this.participant,
    required this.color,
  }) : super(key: key);

  final String participant;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          height: 40,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Text(participant),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
