import 'package:flutter/material.dart';
import 'package:gdsc_tech_nova/Presentation/MarksPrediction/marks_prediction_screen.dart';
import 'package:gdsc_tech_nova/Presentation/SpeechRecognition/speech_recognition_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Expanded(child: ListView(
          children: [
            
            ListTile(
              title: const Text('Speech recognition', style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SpeechRecognitionScreen()));
              },
            ),
            ListTile(
              title: const Text('Marks prediction'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const MarksPredictionScreen()));
              },
            ),
            
          ],
        )),
      ),
    );
  }
}
