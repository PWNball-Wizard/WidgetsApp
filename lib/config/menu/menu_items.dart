import 'package:flutter/material.dart';

class ItemMenu {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const ItemMenu({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const List<ItemMenu> menuItems = [
  ItemMenu(
    title: 'Botones',
    subTitle: 'Vaerios botones en Flutter',
    link: '/botones',
    icon: Icons.smart_button_outlined,
  ),
  ItemMenu(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/tarjetas',
    icon: Icons.credit_card,
  ),
];
