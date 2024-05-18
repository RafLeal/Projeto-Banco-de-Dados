CREATE TABLE Alunos
(
  RA INT NOT NULL,
  Nome CHAR(30) NOT NULL,
  PRIMARY KEY (RA)
);

CREATE TABLE Professor
(
  Professor_ID INT NOT NULL,
  Nome CHAR(30) NOT NULL,
  PRIMARY KEY (Professor_ID)
);

CREATE TABLE Curso
(
  Curso_ID INT NOT NULL,
  Nome CHAR(30) NOT NULL,
  PRIMARY KEY (Curso_ID)
);

CREATE TABLE Orientacao_TCC
(
  Orientacao_ID INT NOT NULL,
  Titulo CHAR(50) NOT NULL,
  RA INT NOT NULL,
  Professor_ID INT NOT NULL,
  RA2 INT NOT NULL,
  PRIMARY KEY (Orientacao_ID),
  FOREIGN KEY (RA) REFERENCES Alunos(RA),
  FOREIGN KEY (Professor_ID) REFERENCES Professor(Professor_ID),
  FOREIGN KEY (RA2) REFERENCES Alunos(RA)
);

CREATE TABLE Departamento
(
  Departamento_ID INT NOT NULL,
  Nome CHAR(30) NOT NULL,
  Chefe_ID INT NOT NULL,
  PRIMARY KEY (Departamento_ID),
  FOREIGN KEY (Chefe_ID) REFERENCES Professor(Professor_ID)
);

CREATE TABLE Matriz_Curricular
(
  Matriz_ID INT NOT NULL,
  Ano_Implementacao INT NOT NULL,
  Curso_ID INT NOT NULL,
  PRIMARY KEY (Matriz_ID),
  FOREIGN KEY (Curso_ID) REFERENCES Curso(Curso_ID)
);

CREATE TABLE Disciplina
(
  Disciplina_ID INT NOT NULL,
  Nome CHAR(30) NOT NULL,
  Departamento_ID INT NOT NULL,
  PRIMARY KEY (Disciplina_ID),
  FOREIGN KEY (Departamento_ID) REFERENCES Departamento(Departamento_ID)
);

CREATE TABLE Professor_Disciplina
(
  Professor_ID INT NOT NULL,
  Disciplina_ID INT NOT NULL,
  PRIMARY KEY (Professor_ID, Disciplina_ID),
  FOREIGN KEY (Professor_ID) REFERENCES Professor(Professor_ID),
  FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Disciplina_ID)
);

CREATE TABLE Matricula
(
  Matricula_ID INT NOT NULL,
  Semestre INT NOT NULL,
  Ano INT NOT NULL,
  RA INT NOT NULL,
  Disciplina_ID INT NOT NULL,
  PRIMARY KEY (Matricula_ID),
  FOREIGN KEY (RA) REFERENCES Alunos(RA),
  FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Disciplina_ID)
);

CREATE TABLE Matriz_Curricular_Disciplina
(
  Semestre INT NOT NULL,
  Matriz_ID INT NOT NULL,
  Disciplina_ID INT NOT NULL,
  PRIMARY KEY (Matriz_ID, Disciplina_ID),
  FOREIGN KEY (Matriz_ID) REFERENCES Matriz_Curricular(Matriz_ID),
  FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Disciplina_ID)
);

CREATE TABLE Notas
(
  Nota_ID INT NOT NULL,
  Nota INT NOT NULL,
  Matricula_ID INT NOT NULL,
  PRIMARY KEY (Nota_ID),
  FOREIGN KEY (Matricula_ID) REFERENCES Matricula(Matricula_ID)
);
