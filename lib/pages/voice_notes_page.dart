import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoiceNotes extends StatelessWidget {
  const VoiceNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250.0),
          child: Column(
            children: [
              Icon(
                Icons.voicemail,
                size: 150,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Text(
                "There's nothing to see here",
                style: GoogleFonts.dmSerifText(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
