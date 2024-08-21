import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextField(
          decoration: InputDecoration(labelText: 'Nome'),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(labelText: 'Mensagem'),
          maxLines: 3,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Adicionar lógica para envio de formulário, se necessário.
          },
          child: const Text('Enviar'),
        ),
      ],
    );
  }
}
