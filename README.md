
# DevFolio App — Carteira e Portfólio do Desenvolvedor Mobile

Aplicativo desenvolvido em Flutter e Dart como projeto da disciplina de Programação para Dispositivos Móveis (PPDM). O DevFolio tem como proposta apresentar as informações de um desenvolvedor em um perfil digital, reunindo dados pessoais, habilidades e projetos em uma única interface.

## Objetivo

Desenvolver uma aplicação mobile que funcione como uma carteira digital de apresentação profissional, aplicando conceitos de desenvolvimento Flutter, organização de componentes, reutilização de widgets e adaptação da interface para diferentes tamanhos de tela.

## Funcionalidades

- **Perfil do desenvolvedor:** apresentação de imagem, identificação e informações de contato.
- **Apresentação pessoal:** seção destinada à descrição do desenvolvedor.
- **Habilidades:** exibição das tecnologias e competências por meio de chips.
- **Dashboard de projetos:** apresentação de indicadores e projetos desenvolvidos.
- **Cards de projetos:** exibição de título, descrição e tecnologias utilizadas.
- **Interface responsiva:** organização dos elementos conforme a largura disponível da tela.
- **Tema personalizado:** centralização das cores e estilos visuais da aplicação.

## Tecnologias utilizadas

- **Flutter:** framework para desenvolvimento da aplicação.
- **Dart:** linguagem de programação.
- **Material Design 3:** sistema de componentes visuais.
- **Git e GitHub:** versionamento e armazenamento do código-fonte.

## Estrutura do projeto

```text
devfolio_app/
├── assets/
│   └── images/
│       └── perfil.png
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   └── perfil_screen.dart
│   ├── theme/
│   │   ├── app_colors.dart
│   │   └── app_theme.dart
│   └── widgets/
│       ├── dashboard_section.dart
│       ├── info_item.dart
│       ├── project_card.dart
│       ├── skill_chip.dart
│       └── stat_card.dart
├── pubspec.yaml
└── README.md
```

## Organização dos componentes

A aplicação foi organizada em pastas para facilitar a manutenção e a reutilização do código:

- `screens/`: contém as telas da aplicação.
- `widgets/`: reúne os componentes reutilizáveis da interface.
- `theme/`: centraliza as cores e configurações do tema.
- `assets/`: armazena os recursos visuais utilizados no aplicativo.

## Histórico de versões

| Versão | Descrição |
|---|---|
| V.0.0 | Estrutura inicial do projeto Flutter. |
| V.0.0.1 | Implementação da tela de perfil do desenvolvedor. |
| V.0.0.2 | Implementação do dashboard de projetos e indicadores. |
| V.0.0.3 | Componentização e organização dos widgets reutilizáveis. |
| V.0.0.4 | Refatoração do tema e melhorias de responsividade. |
| V.0.0.5 | Documentação do projeto e atualização do README. |
| V.1.0.0 | Versão final do aplicativo. |

## Capturas de tela

As imagens abaixo apresentam a interface do DevFolio em diferentes tamanhos de tela.

### Versão para computador

![DevFolio Desktop](screenshots/perfil-desktop.png)

### Versão para dispositivos móveis

![DevFolio Mobile](screenshots/perfil-mobile.png)

## Como executar o projeto

1. Instale o Flutter e o Dart.
2. Clone o repositório:

```bash
git clone https://github.com/IsaacGoncalves01/devfolio_app.git
```

3. Entre na pasta do projeto:

```bash
cd devfolio_app
```

4. Instale as dependências:

```bash
flutter pub get
```

5. Execute a aplicação:

```bash
flutter run
```

Para executar no navegador:

```bash
flutter run -d chrome
```

## Considerações finais

O desenvolvimento do DevFolio foi realizado de forma incremental, com cada versão acrescentando melhorias à aplicação. Durante o processo, foram trabalhados conceitos de construção de interfaces com Flutter, componentização, organização de código, personalização visual e responsividade.

O projeto representa a aplicação prática dos conhecimentos desenvolvidos ao longo da disciplina de Programação para Dispositivos Móveis.
