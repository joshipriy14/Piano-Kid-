import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(piano_kid());
}
class piano_kid extends StatelessWidget
{
  static AudioCache player = AudioCache();

  void playAudio({String fileName})
  {
    // player.load(fileName);
    player.play(fileName);

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // ignore: deprecated_member_use
            PianoButton(
              onKeyPress: (){

                playAudio(
                    fileName: 'piano_notes/B.wav'
                );
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/A.wav'
                );
              },
              onSuperKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/BB.wav'
                );
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/G.wav'
                );
              },
              onSuperKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/GG.wav'
                );
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/F.wav'
                );
              },
              onSuperKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/FF.wav'
                );
              },
            ),
            PianoButton(
              onKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/E.wav'
                );
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/D.wav'
                );
              },
              onSuperKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/EE.wav'
                );
              },
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: ()
              {
                playAudio(
                    fileName: 'piano_notes/C.wav'
                );
              },
              onSuperKeyPress: (){
                playAudio(
                    fileName: 'piano_notes/CC.wav'
                );
              },
            ),

          ],
        ),


      ),
    );
  }
}

class PianoButton extends StatelessWidget {
  final Function onKeyPress;

  const PianoButton({Key key, @required  this.onKeyPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding:
            const EdgeInsets.only(right: 8.0, top: 2.0, bottom: 2.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: RaisedButton(
                onPressed: onKeyPress,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class PianoButtonWithSuperKey extends StatelessWidget {
  final Function onMainKeyPress;
  final Function onSuperKeyPress;
  const PianoButtonWithSuperKey({Key key, @required this.onMainKeyPress, @required this.onSuperKeyPress}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:Stack(
        overflow: Overflow.visible,
        children:<Widget> [
          Padding(
            padding:
            const EdgeInsets.only(right: 8.0,top: 2.0,bottom: 2.0),
            child : Container(
              width: double.infinity,
              height: double.infinity,
              child: RaisedButton(
                onPressed:onMainKeyPress ,
              ),
            ),
          ),
          Positioned(
              top: -50.0,

              child: Container(
                width: 250.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.black,
                  onPressed:onSuperKeyPress,
                ),
              )
          )
        ],
      ),
    );
  }
}

