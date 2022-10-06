-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Out-2022 às 14:01
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula_php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(255) DEFAULT NULL,
  `data_nascimento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome_aluno`, `data_nascimento`) VALUES
(1, 'josé ferreira da silva', '01-05-1995'),
(2, 'maria de sousa ferreira Lima', '08-01-1997'),
(5, 'João Mariano Cardoso', '14-03-1998'),
(9, 'jose nascimento', '15-09-1998');

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos_cursos`
--

CREATE TABLE `alunos_cursos` (
  `id_aluno_curso` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos_cursos`
--

INSERT INTO `alunos_cursos` (`id_aluno_curso`, `id_aluno`, `id_curso`) VALUES
(36, 6, 5),
(39, 2, 1),
(40, 1, 2),
(43, 6, 20),
(44, 8, 21),
(45, 1, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(255) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `carga_horaria`) VALUES
(2, 'Desenvolvimento web', 25),
(18, 'ANGULAR JS', 22),
(19, 'Perl', 10),
(20, 'SQL SERVER', 45),
(21, 'PHP+MYSQL', 60),
(22, 'JAVA', 50),
(23, 'ANDROID', 50),
(24, 'JAVA SCRIPT', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `id` int(11) UNSIGNED NOT NULL,
  `secao_id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `resposta_oficial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`id`, `secao_id`, `pergunta`, `resposta_oficial`) VALUES
(1, 1, 'O que é um select?', 'Uma consulta que devolve resultados'),
(2, 1, 'Como funciona um select?', 'select campos from tabela'),
(3, 2, 'O que é um update?', 'serve pra alterar dados'),
(4, 2, 'Perigos do update?', 'Nao pode esquecer de colocar where'),
(5, 3, 'O que é um delete?', 'deleta uma linha do banco de dados'),
(6, 3, 'Cuidados com ele?', 'nao pode esquecer do where'),
(7, 4, 'o que eh um insert?', 'serve para inserir um dado no banco'),
(8, 4, 'como funciona?', 'insert into (coluna1, coluna2) values (v1, v2)'),
(9, 5, 'Como funciona a web?', 'requisicao e resposta'),
(10, 5, 'Que linguagens posso ajudar?', 'varias, java, php, c#, etc'),
(11, 6, 'O que eh MVC?', 'model view controller'),
(12, 6, 'Frameworks que usam?', 'vraptor, spring mvc, struts, etc'),
(13, 7, 'O que é a classe Result?', 'serve para lidar com o resultado'),
(14, 8, 'O que é um interceptor?', 'eh como se fosse um filtro que eh executado antes'),
(15, 8, 'quando usar?', 'tratamento de excecoes, conexao com o banco de dados'),
(16, 9, 'o que eh iteracao', 'tempo que vc tem pra agregar valor'),
(17, 9, 'qual tamanho bom?', 'de 2 a 4 semanas, segundo o scrum guide antigo'),
(18, 10, 'o que sao retrospectiva?', 'reunioes onde a ideia eh melhorar o processo'),
(19, 10, 'quando devemos fazer?', 'geralmente a cada iteracao'),
(20, 11, 'o que eh a reuniao diaria?', 'uma pequena reuniao para informar a equipe sobre o andamento da iteracao'),
(21, 11, 'quando fazemos?', 'uma vez por dia, em um horario fixo e pre definido'),
(22, 12, 'o que eh kanban?', 'um metodo agil tb'),
(23, 12, 'o que eh xp?', 'outro metodo agil'),
(24, 12, 'tem outros?', 'lean, crystal, fdd'),
(25, 13, 'o que eh a web?', 'eh a internet, ue'),
(26, 13, 'como funciona a web?', 'requisicao e resposta'),
(27, 14, 'o que eh o apache?', 'servidor que sabe trabalhar com HTTP'),
(28, 14, 'java funciona?', 'sim, quando colocamos o tomcat junto com ele'),
(29, 15, 'o que eh mysql', 'essa voce sabe, certo? :)'),
(30, 16, 'o que eh deploy?', 'eh o processo de colocarmos a aplicacao no ar'),
(31, 16, 'como faz?', 'em php, basta copiar os arquivos php, em java, basta copiar o jar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) UNSIGNED NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `tipo` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`id`, `aluno_id`, `curso_id`, `data`, `tipo`) VALUES
(1, 1, 1, '2013-11-25 16:16:05', 'PAGA_PF'),
(2, 2, 1, '2013-05-25 16:16:25', 'PAGA_PJ'),
(3, 3, 3, '2013-07-21 16:16:30', 'PAGA_PF'),
(4, 4, 4, '2013-11-15 16:15:35', 'PAGA_PK'),
(5, 2, 2, '2012-01-04 00:00:00', 'PAGA_PJ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id` int(11) UNSIGNED NOT NULL,
  `resposta_id` int(11) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota`
--

INSERT INTO `nota` (`id`, `resposta_id`, `nota`) VALUES
(1, 1, 8),
(2, 2, 0),
(3, 3, 7),
(4, 4, 6),
(5, 5, 9),
(6, 6, 10),
(7, 7, 4),
(8, 8, 4),
(9, 9, 7),
(10, 10, 8),
(11, 11, 6),
(12, 12, 7),
(13, 13, 4),
(14, 14, 9),
(15, 15, 3),
(16, 16, 5),
(17, 17, 5),
(18, 18, 5),
(19, 19, 6),
(20, 20, 8),
(21, 21, 8),
(22, 22, 9),
(23, 23, 10),
(24, 24, 2),
(25, 25, 0),
(26, 26, 1),
(27, 27, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id` int(11) UNSIGNED NOT NULL,
  `exercicio_id` int(11) DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `resposta_dada` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `exercicio_id`, `aluno_id`, `resposta_dada`) VALUES
(1, 1, 1, 'uma selecao'),
(2, 2, 1, 'ixi, nao sei'),
(3, 3, 1, 'alterar dados'),
(4, 4, 1, 'eskecer o where e alterar tudo'),
(5, 5, 1, 'apagar coisas'),
(6, 6, 1, 'tb nao pode eskecer o where'),
(7, 7, 1, 'inserir dados'),
(8, 1, 2, 'buscar dados'),
(9, 2, 2, 'select campos from tabela'),
(10, 3, 2, 'alterar coisas'),
(11, 4, 2, 'ixi, nao sei'),
(12, 16, 3, 'tempo pra fazer algo'),
(13, 17, 3, '1 a 4 semanas'),
(14, 18, 3, 'melhoria do processo'),
(15, 19, 3, 'todo dia'),
(16, 20, 3, 'reuniao de status'),
(17, 21, 3, 'todo dia'),
(18, 22, 3, 'o quadro branco'),
(19, 23, 3, 'um metodo agil'),
(20, 24, 3, 'tem varios outros'),
(21, 25, 4, 'eh a internet'),
(22, 26, 4, 'browser faz requisicao, servidor manda resposta'),
(23, 27, 4, 'eh o servidor que lida com http'),
(24, 28, 4, 'nao sei'),
(25, 29, 4, 'banco de dados!'),
(26, 30, 4, 'eh colocar a app na internet'),
(27, 31, 4, 'depende da tecnologia, mas geralmente eh levar pra um servidor que ta na internet');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `id` int(11) UNSIGNED NOT NULL,
  `curso_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL DEFAULT '',
  `explicacao` text NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `secao`
--

INSERT INTO `secao` (`id`, `curso_id`, `titulo`, `explicacao`, `numero`) VALUES
(1, 1, 'Aprendendo o SELECT', 'explicacao do capitulo Aprendendo o SELECT', 1),
(2, 1, 'Aprendendo o UPDATE', 'explicacao do capitulo Aprendendo o UPDATE', 2),
(3, 1, 'Aprendendo o DELETE', 'explicacao do capitulo Aprendendo o DELETE', 3),
(4, 1, 'Aprendendo o INSERT', 'explicacao do capitulo Aprendendo o INSERT', 4),
(5, 2, 'O que é a Web?', 'explicacao do capitulo O que é a Web?', 1),
(6, 2, 'Entendendo o MVC', 'explicacao do capitulo Entendendo o MVC', 2),
(7, 2, 'O objeto Result', 'explicacao do capitulo O objeto Result', 3),
(8, 2, 'Interceptor', 'explicacao do capitulo Interceptor', 4),
(9, 3, 'Planejando a iteração', 'explicacao do capitulo Planejando a iteração', 1),
(10, 3, 'Retrospectivas', 'explicacao do capitulo Retrospectivas', 2),
(11, 3, 'Reunião Diária', 'explicacao do capitulo Reunião Diária', 3),
(12, 3, 'Kanban e XP', 'explicacao do capitulo Kanban e XP', 4),
(13, 4, 'Introdução a Web', 'explicacao do capitulo Introdução a Web', 1),
(14, 4, 'O servidor Apache', 'explicacao do capitulo O servidor Apache', 2),
(15, 4, 'Lidando com o MySql', 'explicacao do capitulo Lidando com o MySql', 3),
(16, 4, 'Instalando a aplicação', 'explicacao do capitulo Instalando a aplicação', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `senha`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `alunos_cursos`
--
ALTER TABLE `alunos_cursos`
  ADD PRIMARY KEY (`id_aluno_curso`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices para tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `alunos_cursos`
--
ALTER TABLE `alunos_cursos`
  MODIFY `id_aluno_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `nota`
--
ALTER TABLE `nota`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `secao`
--
ALTER TABLE `secao`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
