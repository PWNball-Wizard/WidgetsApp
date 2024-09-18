import 'package:flutter/material.dart';
import 'package:widgets_app_new/config/menu/menu_items.dart';
import 'package:widgets_app_new/config/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return CustomListTile(item: item);
      },
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.item,
  });

  final ItemMenu item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      leading: Icon(item.icon),
      onTap: () {
        const parametro = 'Hola';
        if (item.link == '/botones') {
          appRouter.push('/botones/$parametro');
          //appRouter.go('/botones/$parametro');
        } else {
          appRouter.push(item.link);
          //appRouter.go(item.link);
        }
        //context.go(item.link);
        //! Forma de manejar la navegacion con Navigator.pushNamed
        /* Navigator.pushNamed(context, item.link); */
        //! Forma de manejar la navegacion con Navigator.push y MaterialPageRoute
        /* Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ButtonsScreen(
            parametro: 'Hola',
          );
        })); */
      },
    );
  }
}
