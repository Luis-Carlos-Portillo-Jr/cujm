import 'package:flutter/material.dart';
import 'package:portillo/login.dart';
import 'package:portillo/desarrollador.dart';
import 'package:portillo/datosEmpleados.dart';
import 'package:portillo/datos.dart';
import 'package:portillo/conclusion.dart';
import 'package:portillo/cliente.dart';

class Empleados extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Gas Natural',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/Sesion': (context) => Sesion(),
        '/Cliente': (context) => Cliente(),
        '/DatosEmpleados': (context) => DatosEmpleados(),
        '/DatosClientes': (context) => DatosClientes(),
        '/Conclusion': (context) => Conclusion(),
        '/Empleados': (context) => Empleados(),
        '/Desarrollador': (context) => Desarrollador(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Inicio',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(95, 115, 254, 1),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color.fromRGBO(95, 115, 254, 1)),
              accountName: Text(
                "Liciencias de Conducir",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "estropajo@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_right_outlined,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Inicio de Sesion'),
              onTap: () {
                Navigator.pushNamed(context, '/Login');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.api,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Datos de Empleados'),
              onTap: () {
                Navigator.pushNamed(context, '/DatosEmpleados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.umbrella,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Datos de cliente'),
              onTap: () {
                Navigator.pushNamed(context, '/Datos');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.headset_off,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Empleados'),
              onTap: () {
                Navigator.pushNamed(context, '/Empleados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_airport,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Cliente'),
              onTap: () {
                Navigator.pushNamed(context, '/Cliente');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_alert,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Conclusion'),
              onTap: () {
                Navigator.pushNamed(context, '/Conclusion');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.luggage_sharp,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Desarrollador'),
              onTap: () {
                Navigator.pushNamed(context, '/Desarrollador');
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/Pablo.jpg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        'Pablo -Instructor de manejo',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/Erick.jpg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        'Erick -Recursos Humanos',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/Mars.jpg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        'Mario -Director Ejecutivo',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/Edwyn.jpg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        'Edwyn -Recursos Financieros',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/Angel.jpg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        'Angel -Cajero',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
