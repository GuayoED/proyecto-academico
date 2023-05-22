import 'package:flutter/material.dart';
import 'package:proyecto_academico/pages/InicioPage.dart';
import 'package:proyecto_academico/pages/pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    InicioPage(),
    ServiciosPage(),
    AgendaPage(),
    PromocionesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xff313133),
        unselectedItemColor: Color(0xffc2c4ce),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all_rounded),
            label: 'Servicios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Promociones',
          ),
        ],
      ),
    );
  }
}