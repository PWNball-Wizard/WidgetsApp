import 'package:flutter/material.dart';

final cards = <Map<String, dynamic>>[
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 0.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 1.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 2.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 3.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 4.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 5.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 6.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 7.0,
  },
  {
    'title': 'Card Title',
    'subtitle': 'Card Subtitle',
    'elevation': 8.0,
  },
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ...cards
                .map((e) => CardTipo1(
                    title: e['title'],
                    elevation: e['elevation'],
                    subtitle: e['subtitle']))
                .toList(),
            ...cards
                .map((e) => CardTipo2(
                    title: e['title'],
                    elevation: e['elevation'],
                    subtitle: e['subtitle']))
                .toList(),
            ...cards
                .map((e) => CardTipo3(
                    title: e['title'],
                    elevation: e['elevation'],
                    subtitle: e['subtitle']))
                .toList(),
            const SizedBox(height: 66),
          ]),
        ),
      ),
    );
  }
}

class CardTipo1 extends StatelessWidget {
  final String title;
  final double elevation;
  final String subtitle;

  const CardTipo1(
      {super.key,
      required this.title,
      required this.elevation,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                //leading: const Icon(Icons.photo_album),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                )),
            //const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CardTipo2 extends StatelessWidget {
  final String title;
  final double elevation;
  final String subtitle;

  const CardTipo2(
      {super.key,
      required this.title,
      required this.elevation,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: Colors.blue, width: 2)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            ListTile(
                title: Text('$title - Tipo 2'),
                subtitle: Text(subtitle),
                //leading: const Icon(Icons.photo_album),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                )),
            //const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CardTipo3 extends StatelessWidget {
  final String title;
  final double elevation;
  final String subtitle;

  const CardTipo3(
      {super.key,
      required this.title,
      required this.elevation,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: Colors.blue, width: 2)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            ListTile(
                title: Text('$title - Tipo 2'),
                subtitle: Text(subtitle),
                //leading: const Icon(Icons.photo_album),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                )),
            //const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
