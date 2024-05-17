# Projeto Banco de Dados

<br>Grupo:</br>
* Rafael Leal Silva - RA: 22.122.029-6
* Juan Caio Paronitti Galera - RA: 22.122.067-6
<br>

# Execução Código

Primeiramente, é necessario pegar todo o código do arquivo Tabelas.sql e rodar, para que sejam criadas todas as tabelas necessarias.

Depois, é necessario acessar o arquivo Dados_aleatorios.sql, e rodar os códigos separadamente e em ordem, começando pelo Alunos e terminando em Notas. É possivel identificar qual código pertence a qual tabela pelos comentarios acima deles.

E finalmente, a execução dos códigos para a extração dos relatórios. Siga a ordem a seguir:
<br></br>

***1-) Historico Escolar***

Abrir arquivo Historico_escolar.sql e copiar código.

É necessario apenas inserir o número do RA do aluno que deseja vizualizar o histórico (RA vai de 1000 a 1050), na parte ":RA".

Existem 3 tipos de situações que podem ocorrer:

* O aluno possuir apenas uma matricula, contendo apenas uma disciplina, o semestre, o ano e a nota final
* Alguns alunos podem possuir mais de uma matricula, pois é possivel fazer mais de um curso. Isso faz com que possam aparecer 2 ou mais vezes, porem cada linha com uma disciplina, ano e nota diferente
* Alguns alunos podem não possuir matricula, tendo apenas, por exemplo, realizado o vestibular e passado na faculdade, mas decidido não se matricular, possuindo apenas seu nome e RA mas não sua matricula

***2-) Historico de Disciplinas***

***3-) Alunos Formados***

***4-) Professores Chefes***

***5-) TCC***

# Diagrama Relacional

![image](https://github.com/RafLeal/Projeto-Banco-de-Dados/assets/165904115/4bb26165-6e84-48ae-b761-df93ef445845)


