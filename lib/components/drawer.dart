import 'package:flutter/material.dart';
import 'package:note/pages/settings_page.dart';
import 'package:note/pages/trash_page.dart';
import 'package:note/pages/voice_notes_page.dart';
import 'drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        const DrawerHeader(
          child: Icon(
            Icons.notes_sharp,
            size: 60,
          ),
        ),
        DrawerTile(
          title: 'Notes',
          leading: const Icon(Icons.home),
          onTap: () => Navigator.pop(context),
        ),
        DrawerTile(
          title: 'Settings',
          leading: const Icon(Icons.settings),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
        ),
        DrawerTile(
          title: 'Trashes',
          leading: const Icon(Icons.delete),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Trashpage(),
              ),
            );
          },
        ),
        DrawerTile(
          title: 'Voice Notes',
          leading: const Icon(Icons.voicemail),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VoiceNotes(),
              ),
            );
          },
        ),
      ]),
    );
  }
}
