import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:splashscreen/const.dart';

void main() async {
  final apiKey = GEMINI_API_KEY;
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

  runApp(BotPage(model: model));
}

class BotPage extends StatefulWidget {
  final GenerativeModel model;

  const BotPage({Key? key, required this.model}) : super(key: key);

  @override
  State<BotPage> createState() => _MyAppState();
}

class _MyAppState extends State<BotPage> {
  final _userInputController = TextEditingController();
  String _userText = '';
  String? _geminiResponse;
  bool _isProcessing = false; // Flag to indicate processing state

  Future<void> _sendUserInput() async {
    if (_userText.isEmpty) return;

    setState(() {
      _isProcessing = true; // Set processing flag to show progress bar
    });

    try {
      final response = await widget.model.generateContent([
        Content.text(_userText),
      ]);
      setState(() {
        _geminiResponse = response.text;
        _userText = ''; // Clear user input after response
        _isProcessing = false; // Reset processing flag to hide progress bar
      });
    } on Exception catch (e) {
      // Handle errors gracefully
      print('Error sending user input: $e');
      setState(() {
        _geminiResponse = 'An error occurred. Please try again.';
        _isProcessing = false; // Reset processing flag to hide progress bar
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [

                TextField(
                  controller: _userInputController,
                  decoration: const InputDecoration(
                    hintText: 'Ask your query...',
                  ),
                  onChanged: (text) => setState(() => _userText = text),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _sendUserInput,
                  child: const Text('Ask'),
                ),
                const SizedBox(height: 16.0),

                // Show progress bar when processing
                _isProcessing
                    ? const LinearProgressIndicator()
                    : const SizedBox(),

                SingleChildScrollView(
                  child: Text(_geminiResponse ?? ''), // Handle null value
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
