import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  // Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List quotes = [
    "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.",
    "Instead of worrying about what you cannot control, shift your energy to what you can create.",
    "Be the reason someone smiles. Be the reason someone feels loved and believes in the goodness in people.",
    "Be mindful. Be grateful. Be positive. Be true. Be kind.",
    "Accept yourself, love yourself, and keep moving forward. If you want to fly, you have to give up what weighs you down.",
    "Live the Life of Your Dreams: Be brave enough to live the life of your dreams according to your vision and purpose instead of the expectations and opinions of others.",
    "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine.",
    "It’s only after you’ve stepped outside your comfort zone that you begin to change, grow, and transform.",
    "Don’t waste your time in anger, regrets, worries, and grudges. Life is too short to be unhappy.",
    "More smiling, less worrying. More compassion, less judgment. More blessed, less stressed. More love, less hate."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Motivation Quote"),
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.blue.shade400,
                        fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                      ),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.greenAccent.shade700,
                icon: Icon(Icons.shuffle),
                label: Text(
                  "Motivate ME!!!",
                  style: TextStyle(fontSize: 18.8, color: Colors.white),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  _showQuote() {
    //incerement our index.counter by 1
    setState(() {
      _index += 1;
    });
  }
}
