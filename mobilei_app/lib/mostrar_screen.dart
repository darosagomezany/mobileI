import 'package:flutter/material.dart';
import 'widgets/info_card.dart';

class MostrarScreen extends StatelessWidget {
  final String nome;
  final String email;
  final String telefone;

  const MostrarScreen({
    super.key,
    required this.nome,
    required this.email,
    required this.telefone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Datos Informados")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          InfoCard(label: "Nombre", value: nome, icon: Icons.person),
          InfoCard(label: "E-mail", value: email, icon: Icons.email),
          InfoCard(label: "Teléfono", value: telefone, icon: Icons.phone),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volver a la pantalla de registro
              },
              child: const Text("Volver"),
            ),
          ),
        ],
      ),
    );
  }
}
