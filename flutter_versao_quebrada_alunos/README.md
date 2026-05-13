# Projeto Flutter Otimizado

Este projeto é uma versão corrigida de um aplicativo que apresentava graves problemas de desempenho e consumo de memória. O código foi refatorado para utilizar as melhores práticas do Flutter, garantindo uma navegação correta e a renderização sob demanda.

## Melhorias Técnicas Implementadas

### 1. Correção no Sistema de Navegação
No código original, a mudança de telas era feita chamando a função `runApp()`, o que recriava toda a estrutura da aplicação desde o início, perdendo o estado atual e causando lentidão.
**Solução implementada:** A navegação foi alterada para utilizar o sistema de rotas padrão do Flutter por meio da função `Navigator.push(context, MaterialPageRoute(...))`. Isso empilha as telas de forma adequada, permitindo que o usuário consiga voltar à tela anterior sem destruir o programa.

### 2. Otimização da Lista de Itens (Lazy Loading)
A lista anterior utilizava um `SingleChildScrollView` em conjunto com uma `Column`, forçando a criação de todos os 200 itens de uma só vez através da função `items.map().toList()`. Isso obrigava o sistema a baixar e desenhar 200 imagens simultaneamente através do `Image.network()`, causando travamentos ou o fechamento do aplicativo por falta de memória.
**Solução implementada:** A estrutura foi substituída pelo widget `ListView.builder()`. Este componente utiliza a função `itemBuilder(context, index)`, que garante que as imagens e os textos só sejam construídos e alocados na memória quando aparecem na tela do utilizador. Ao rolar a tela, o sistema limpa o que ficou para trás e carrega os itens seguintes sob demanda.

### 3. Otimização da Grade de Imagens (Grid)
Semelhante ao problema da lista, a tela de grade utilizava o widget `GridView.count()`, que também tentava carregar e exibir todos os elementos de forma simultânea.
**Solução implementada:** A grade foi refatorada para utilizar o `GridView.builder()`, configurando a distribuição visual com a classe `SliverGridDelegateWithFixedCrossAxisCount`. Mais uma vez, o uso do `itemBuilder` aplicou o carregamento sob demanda, mantendo a rolagem da página fluida.

### 4. Limpeza de Estado e Estrutura
O arquivo principal utilizava a classe `StatefulWidget` com uma variável `counter` e uma chamada vazia para `setState()`, o que forçava a interface a se redesenhar desnecessariamente, desperdiçando processamento. Além disso, as páginas secundárias abriam instâncias redundantes do `MaterialApp`.
**Solução implementada:** As classes principais foram convertidas para `StatelessWidget`, que são estruturas mais leves, pois não precisam monitorar ou redesenhar estados variáveis. Os `MaterialApp` duplicados também foram removidos, mantendo apenas a estrutura limpa com o `Scaffold` em cada página.

## Como executar o projeto

1. Abra a pasta principal do projeto no terminal.
2. Execute o comando para instalar as dependências: `flutter pub get`
3. Execute o comando para iniciar a aplicação: `flutter run`