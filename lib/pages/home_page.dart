import 'package:clone_netflix/components/cartel_principal.dart';
import 'package:clone_netflix/components/item_img.dart';
import 'package:clone_netflix/components/item_redondeado.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          listaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox(height: 10),
          listaHorizontal('Programas sobre viajes', ItemImg(), 9),
          SizedBox(height: 10),
          listaHorizontal('Tendencias', ItemImg(), 9),
          SizedBox(height: 10),
          listaHorizontal('Mi lista', ItemImg(), 9),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: navInferior(),
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 10,
          ),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontSize: 12),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'Inicio',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Buscar',
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: 'Proximamente',
          icon: Icon(Icons.library_music),
        ),
        BottomNavigationBarItem(
          label: 'inicio',
          icon: Icon(Icons.arrow_downward),
        ),
        BottomNavigationBarItem(
          label: 'inicio',
          icon: Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
