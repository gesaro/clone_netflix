import 'package:clone_netflix/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.asset(
          'assets/img/interestelar.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black38,
                Colors.black,
              ],
            ),
          ),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
        Text(
          'Telenovelesco',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
        Text(
          'Suspenso insotenible',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
        Text(
          'De suspenso',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        SizedBox(width: 6),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
        Text(
          'Adoles',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3),
              Text(
                'My lista',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3),
              Text(
                'Información',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
