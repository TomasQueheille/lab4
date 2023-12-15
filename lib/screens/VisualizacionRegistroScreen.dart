<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:laboratorio4proyecto2/screens/CityRecord.dart';

class VisualizacionRegistroScreen extends StatelessWidget {
  final Registros registro;

  const VisualizacionRegistroScreen({super.key, required this.registro});
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    if (registro != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Visualización de Registro'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('${registro.temperature}º',style: textStyle.headlineLarge),
              Text('Detalles de ${registro.city}', style: textStyle.titleLarge),
              Text(registro.weatherDescription, style: textStyle.titleMedium)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      );
    } else {
      // Manejar el caso en el que el argumento sea nulo
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No se encontraron detalles del registro'),
        ),
      );
    }
  }
}
=======
import 'package:flutter/material.dart';

class VisualizacionRegistroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? registro =
        ModalRoute.of(context)?.settings.arguments as String?;

    if (registro != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Visualización de Registro'),
        ),
        body: Center(
          child: Text('Detalles de $registro'),
        ),
      );
    } else {
      // Manejar el caso en el que el argumento sea nulo
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No se encontraron detalles del registro'),
        ),
      );
    }
  }
}
>>>>>>> e69cf61b5795d290caa0b0cbecbced888b6c4822
