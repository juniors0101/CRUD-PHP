<h1 style="text-align:center">Bem vindos a Escola de cursos BR</h1>

<form method="POST" action="login.php">

    <label class="badge text-bg-secondary">Usuário</label><br>
    <input type="text" name="usuario" placeholder="nome do usuário" class="form-control">

    <br><br>
    <label class="badge text-bg-secondary">Senha</label><br>
    <input type="text" name="senha" placeholder="digite a senha" class="form-control">

    <br><br>
    <input type="submit" value="Entrar" class="btn btn-success">
</form>

<?php if(isset($_GET['erro'])){ ?>
<div class="alert alert-warning" role="alert">
Usuário e/ou senha inválidos!
</div>

<?php } ?>