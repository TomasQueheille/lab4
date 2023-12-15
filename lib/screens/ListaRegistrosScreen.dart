<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:laboratorio4proyecto2/screens/CityRecord.dart';

class ListaRegistrosScreen extends StatelessWidget {
  final String? cityName;

  const ListaRegistrosScreen({super.key, this.cityName});
  @override
  Widget build(BuildContext context) {
    
    final registros = cityName=='New York' ? Registros.getNewYorkRegistros()
    : Registros.getLondresRegistros(); 
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Registros de $cityName'),
      ),
      body: ListView.builder(
        itemCount: registros.length, // Ejemplo: Número de registros
        itemBuilder: (context, index) {
          final registro = registros[index];
          return ListTile(
            leading: Registros.getIcon(registro.weatherDescription),
            title: Text("${registro.temperature}º"),
            subtitle: Text(registro.weatherDescription),
            onTap: () {
              Navigator.pushNamed(context, '/visualizacion_registro',
                  arguments: registro);
            },
          );
        },
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';

class ListaRegistrosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? cityName =
        ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Registros de $cityName'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ejemplo: Número de registros
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$cityName - Registro $index'),
            onTap: () {
              Navigator.pushNamed(context, '/visualizacion_registro',
                  arguments: '$cityName - Registro $index');
            },
          );
        },
      ),
    );
  }
}
>>>>>>> e69cf61b5795d290caa0b0cbecbced888b6c4822
