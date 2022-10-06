<!DOCTYPE html>
<html>

<head>
	<title>EscolaDeCursosBR</title>
	<meta charset="UTF-8">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
	<link rel="stylesheet" href="css/estilo.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="?pagina=home"><img src="img/logo.png" title="Logo" alt="Logo" "></a>
    <button class=" navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="nav justify-content-end">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="?pagina=cursos">Cursos</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="?pagina=alunos">Alunos</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="?pagina=matriculas">Matrículas</a>
						</li>
						
						<?php if (isset($_SESSION['login'])) { ?>
							<li class="nav-item">
								<a class="nav-link" href="logout.php"><?php echo $_SESSION['usuario']; ?> (Sair)</a>
							</li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</nav>


	<div id="conteudo" class="container">
		