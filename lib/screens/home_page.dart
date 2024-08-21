import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/project_card.dart';
import '../widgets/contact_form.dart';
import '../models/project.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      Project(
        title: 'Projeto 1',
        description: 'Descrição breve do projeto 1.',
        url: 'https://github.com/seuusuario/projeto1',
      ),
      Project(
        title: 'Projeto 2',
        description: 'Descrição breve do projeto 2.',
        url: 'https://github.com/seuusuario/projeto2',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Henrique França'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle('Sobre Mim'),
              Text(
                'Sou estudante de Ciência da Computação na PUC-MG e Administração de Empresas no CEFET-MG, '
                'apaixonado por tecnologia e pesquisa na área de análise de imagens e algoritmos de segmentação.',
                style: Theme.of(context).textTheme.bodyLarge, // Substituto para bodyText1
              ),
              const SizedBox(height: 20),
              const SectionTitle('Projetos'),
              Column(
                children: projects.map((project) => ProjectCard(project: project)).toList(),
              ),
              const SizedBox(height: 20),
              const SectionTitle('Contato'),
              ContactForm(),
            ],
          ),
        ),
      ),
    );
  }
}
