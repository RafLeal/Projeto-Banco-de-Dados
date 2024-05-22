# Projeto Banco de Dados

<br>Grupo:</br>
* Rafael Leal Silva - RA: 22.122.029-6
* Juan Caio Paronitti Galera - RA: 22.122.067-6
<br>

# Execução Código

<br></br>
**OBSERVAÇÃO:** Todos os códigos forem feitos e testados no pgAdmin 4.
<br></br>

Primeiramente, é necessario pegar todo o código do arquivo `Tabelas.sql` e rodar, para que sejam criadas todas as tabelas necessarias.

Depois, é necessario acessar o arquivo `Dados_aleatorios.sql`, copiar todo o código e executa-lo.

E finalmente, a execução dos códigos para a extração dos relatórios. Siga a ordem a seguir:
<br></br>

***1-) Historico Escolar***

Abrir arquivo `Historico_Escolar.sql` e copiar código.

Este código fornece, o(s) código(s) e nome(s) da(s) disciplina(s) do aluno, junto com seu(s) respectivo(s) semestre(s), ano(s) e nota(s) final. 

É necessario apenas inserir o número do RA do aluno que deseja vizualizar o histórico (RA vai de 1 a 20), na parte ":RA", e então, executar o código

***2-) Historico de Disciplinas***

Abrir arquivo `Historico_Disciplinas.sql` e copiar código.

Este código fornece, o ID do professor, seu nome, o código e nome da(s) disciplina(s) que ministra, junto de seu(s) respectivo(s) semestre(s) e ano(s).

É necessario apenas inserir o número do ID do professor que deseja vizualizar o histórico de disciplinas (ID do professor vai de 1 a 5), na parte ":ID", e então, executar o código.

***3-) Alunos Formados***

Abrir arquivo `Alunos_formados.sql` e copiar código.

Este código fornece, o RA e o nome do(s) aluno(s) que se formaram.

É necessario inserir o ano que deseja visualizar (Ano vai de 2018 até 2023) na parte ":Ano", e tambem inserir o semestre que deseja visualizar (1 ou 2 semestre) na parte ":Semestre", e então por fim, executar o código.

***4-) Professores Chefes***

Abrir arquivo `Professor_Chefe.sql`, copiar código e executar.

Este código fornece, os nomes dos professores e quais depertamentods eles chefiam. Um professor pode chefiar mais de um departamento.

***5-) TCC***

Abrir arquivo `TCC.sql`, copiar código e executar.

Este código fornece, o código do TCC, junto de seu título, os alunos participantes e o professor orientador.

# Diagrama Relacional

![image](https://github.com/RafLeal/Projeto-Banco-de-Dados/assets/165904115/690f67e2-210f-4701-b3fa-51ff6728b600)



