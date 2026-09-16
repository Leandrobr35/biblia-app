import 'package:flutter/material.dart';
import '../data/sample_verses.dart';
import 'books_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bíblia de Estudo')),
      drawer: _buildDrawer(context),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Boa noite', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 12),
            _VerseOfTheDayCard(),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              icon: const Icon(Icons.menu_book),
              label: const Text('Abrir a Bíblia'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const BooksScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    final items = <_DrawerItem>[
      _DrawerItem(Icons.home, 'Início', () => Navigator.pop(context)),
      _DrawerItem(Icons.menu_book, 'Bíblia', () {
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const BooksScreen()),
        );
      }),
      _DrawerItem(Icons.search, 'Encontrar Versículo', () {}),
      _DrawerItem(Icons.calendar_today, 'Plano de Leitura', () {}),
      _DrawerItem(Icons.favorite, 'Favoritos', () {}),
    ];

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Bíblia de Estudo', style: TextStyle(fontSize: 20)),
          ),
          for (final item in items)
            ListTile(
              leading: Icon(item.icon),
              title: Text(item.label),
              onTap: item.onTap,
            ),
        ],
      ),
    );
  }
}

class _DrawerItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  _DrawerItem(this.icon, this.label, this.onTap);
}

class _VerseOfTheDayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Versículo do Dia',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(verseOfTheDayRef,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text(verseOfTheDayText, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
