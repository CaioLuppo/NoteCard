# NoteCard ✏

O NoteCard é um aplicativo de notas feito em **Flutter**, onde o usuário pode **escrever, editar e deletar** notas, que ficam **salvas no dispositivo**.

Obs. Feito para o processo seletivo da <a href="https://targetsistemas.com.br/">TargetSistemas</a>.

## Bibliotecas utilizadas
- <a href="https://pub.dev/packages/mobx">mobx</a>: Utilizado para gerenciamento de estados, permitindo conectar dados reativos à UI, como a adição dos cards e verificação do login;
- <a href="https://pub.dev/packages/mockito">mockito<a/>: Biblioteca para mock de dados, utilizada para a simulação de uma API com os dados dos usuários (<a href="https://github.com/CaioLuppo/NoteCard/blob/master/lib/controller/http/DAO/mock/users_dao.mocks.dart">Arquivo Mock</a>).
- <a href="https://pub.dev/packages/shared_preferences">shared_preferences<a/>: Biblioteca para armazenamento do conteúdo dos cards.

## Desing Patterns - MVC
O padrão de design utilizado foi o MVC, já que se trata de uma aplicação simples, além de ter  sido utilizada durante o meu periodo da faculdade.

## Como utilizar
Na tela de login, insira as credenciais:
- Usuário -> TargetSistemas
- Senha -> Password

Após isso, você poderá criar/editar/deletar as notas.
