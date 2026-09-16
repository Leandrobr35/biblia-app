import 'package:flutter/material.dart';

class BibleBook {
  final String name;
  final int chapters;
  final bool oldTestament;
  final Color color;

  const BibleBook({
    required this.name,
    required this.chapters,
    required this.oldTestament,
    required this.color,
  });
}

const List<Color> _palette = [
  Color(0xFFE74C3C),
  Color(0xFFF39C12),
  Color(0xFF9B59B6),
  Color(0xFF3498DB),
  Color(0xFF2ECC71),
  Color(0xFFE91E63),
  Color(0xFF3F51B5),
];

Color _colorFor(int index) => _palette[index % _palette.length];

final List<BibleBook> bibleBooks = [
  BibleBook(name: 'Gênesis', chapters: 50, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: 'Êxodo', chapters: 40, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: 'Levítico', chapters: 27, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: 'Números', chapters: 36, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: 'Deuteronômio', chapters: 34, oldTestament: true, color: _colorFor(4)),
  BibleBook(name: 'Josué', chapters: 24, oldTestament: true, color: _colorFor(5)),
  BibleBook(name: 'Juízes', chapters: 21, oldTestament: true, color: _colorFor(6)),
  BibleBook(name: 'Rute', chapters: 4, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: '1 Samuel', chapters: 31, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: '2 Samuel', chapters: 24, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: '1 Reis', chapters: 22, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: '2 Reis', chapters: 25, oldTestament: true, color: _colorFor(4)),
  BibleBook(name: '1 Crônicas', chapters: 29, oldTestament: true, color: _colorFor(5)),
  BibleBook(name: '2 Crônicas', chapters: 36, oldTestament: true, color: _colorFor(6)),
  BibleBook(name: 'Esdras', chapters: 10, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: 'Neemias', chapters: 13, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: 'Ester', chapters: 10, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: 'Jó', chapters: 42, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: 'Salmos', chapters: 150, oldTestament: true, color: _colorFor(4)),
  BibleBook(name: 'Provérbios', chapters: 31, oldTestament: true, color: _colorFor(5)),
  BibleBook(name: 'Eclesiastes', chapters: 12, oldTestament: true, color: _colorFor(6)),
  BibleBook(name: 'Cânticos', chapters: 8, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: 'Isaías', chapters: 66, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: 'Jeremias', chapters: 52, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: 'Lamentações', chapters: 5, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: 'Ezequiel', chapters: 48, oldTestament: true, color: _colorFor(4)),
  BibleBook(name: 'Daniel', chapters: 12, oldTestament: true, color: _colorFor(5)),
  BibleBook(name: 'Oséias', chapters: 14, oldTestament: true, color: _colorFor(6)),
  BibleBook(name: 'Joel', chapters: 3, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: 'Amós', chapters: 9, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: 'Obadias', chapters: 1, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: 'Jonas', chapters: 4, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: 'Miquéias', chapters: 7, oldTestament: true, color: _colorFor(4)),
  BibleBook(name: 'Naum', chapters: 3, oldTestament: true, color: _colorFor(5)),
  BibleBook(name: 'Habacuque', chapters: 3, oldTestament: true, color: _colorFor(6)),
  BibleBook(name: 'Sofonias', chapters: 3, oldTestament: true, color: _colorFor(0)),
  BibleBook(name: 'Ageu', chapters: 2, oldTestament: true, color: _colorFor(1)),
  BibleBook(name: 'Zacarias', chapters: 14, oldTestament: true, color: _colorFor(2)),
  BibleBook(name: 'Malaquias', chapters: 4, oldTestament: true, color: _colorFor(3)),
  BibleBook(name: 'Mateus', chapters: 28, oldTestament: false, color: _colorFor(4)),
  BibleBook(name: 'Marcos', chapters: 16, oldTestament: false, color: _colorFor(5)),
  BibleBook(name: 'Lucas', chapters: 24, oldTestament: false, color: _colorFor(6)),
  BibleBook(name: 'João', chapters: 21, oldTestament: false, color: _colorFor(0)),
  BibleBook(name: 'Atos', chapters: 28, oldTestament: false, color: _colorFor(1)),
  BibleBook(name: 'Romanos', chapters: 16, oldTestament: false, color: _colorFor(2)),
  BibleBook(name: '1 Coríntios', chapters: 16, oldTestament: false, color: _colorFor(3)),
  BibleBook(name: '2 Coríntios', chapters: 13, oldTestament: false, color: _colorFor(4)),
  BibleBook(name: 'Gálatas', chapters: 6, oldTestament: false, color: _colorFor(5)),
  BibleBook(name: 'Efésios', chapters: 6, oldTestament: false, color: _colorFor(6)),
  BibleBook(name: 'Filipenses', chapters: 4, oldTestament: false, color: _colorFor(0)),
  BibleBook(name: 'Colossenses', chapters: 4, oldTestament: false, color: _colorFor(1)),
  BibleBook(name: '1 Tessalonicenses', chapters: 5, oldTestament: false, color: _colorFor(2)),
  BibleBook(name: '2 Tessalonicenses', chapters: 3, oldTestament: false, color: _colorFor(3)),
  BibleBook(name: '1 Timóteo', chapters: 6, oldTestament: false, color: _colorFor(4)),
  BibleBook(name: '2 Timóteo', chapters: 4, oldTestament: false, color: _colorFor(5)),
  BibleBook(name: 'Tito', chapters: 3, oldTestament: false, color: _colorFor(6)),
  BibleBook(name: 'Filemom', chapters: 1, oldTestament: false, color: _colorFor(0)),
  BibleBook(name: 'Hebreus', chapters: 13, oldTestament: false, color: _colorFor(1)),
  BibleBook(name: 'Tiago', chapters: 5, oldTestament: false, color: _colorFor(2)),
  BibleBook(name: '1 Pedro', chapters: 5, oldTestament: false, color: _colorFor(3)),
  BibleBook(name: '2 Pedro', chapters: 3, oldTestament: false, color: _colorFor(4)),
  BibleBook(name: '1 João', chapters: 5, oldTestament: false, color: _colorFor(5)),
  BibleBook(name: '2 João', chapters: 1, oldTestament: false, color: _colorFor(6)),
  BibleBook(name: '3 João', chapters: 1, oldTestament: false, color: _colorFor(0)),
  BibleBook(name: 'Judas', chapters: 1, oldTestament: false, color: _colorFor(1)),
  BibleBook(name: 'Apocalipse', chapters: 22, oldTestament: false, color: _colorFor(2)),
];
