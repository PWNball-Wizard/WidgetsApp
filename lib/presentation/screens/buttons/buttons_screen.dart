import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  final String parametro;
  const ButtonsScreen({super.key, required this.parametro});

  @override
  Widget build(BuildContext context) {
    int numero = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numero = 0;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(alignment: WrapAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              numero++;
              if (numero == 5) {
                //!Mostrar un snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Has llegado al límite de 5'),
                  ),
                );
                numero = 0;
              }
            },
            child: const Text('Mostrar mensaje'),
          ),
          const ElevatedButton(
              onPressed: null, child: Text('Mostrar mensaje disabled')),
          ElevatedButton.icon(
              icon: const Icon(Icons.add),
              onPressed: () {},
              label: const Text('Botón con icono')),
          //TODO FilledButton y FilledButton.icon
          OutlinedButton(onPressed: () {}, child: const Text('Botón Outlined')),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              label: const Text('Botón Outlined con icono')),
          TextButton(onPressed: () {}, child: const Text('Botón Text')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              label: const Text('Botón Text con icono')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          //TODO Style del IconButton
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
        ]),
      ),
    );
  }
}
