<?php if (!isset($_GET['editar'])) { ?>

    <h1>Inserir novo aluno</h1>
    <form method="POST" action="processa_aluno.php">
    <br>
        <label class="badge text-bg-secondary">Nome do curso: </label><br><br>
        <input class="form-control" type="text" name="nome_aluno" placeholder="Insira o nome do aluno">
        <br><br>
        <label class="badge text-bg-secondary">Data de nascimento: </label><br><br>
        <input class="form-control" type="text" name="data_nascimento" placeholder="Insira a data de nascimento">
        <br><br>
        <input type="submit" class="btn btn-success" value="Inserir aluno">
    </form>

<?php } else { ?>
    <?php while ($linha = mysqli_fetch_array($consulta_alunos)) { ?>
        <?php if ($linha['id_aluno'] == $_GET['editar']) { ?>

            <h1>Editar aluno</h1>
            <form method="POST" action="edita_aluno.php">
                <input type="hidden" name="id_aluno" value="<?php echo $linha['id_aluno']; ?>">
                <br>
                <label class="badge text-bg-secondary">Nome do curso: </label><br><br>
                <input class="form-control" type="text" name="nome_aluno" value="<?php echo $linha['nome_aluno']; ?>" placeholder="Insira o nome do aluno">
                <br><br>
                <label class="badge text-bg-secondary">Data de nascimento: </label><br><br>
                <input class="form-control" type="text" name="data_nascimento" value="<?php echo $linha['data_nascimento']; ?>" placeholder="Insira a data de nascimento">
                <br><br>
                <input type="submit" class="btn btn-success" value="Editar aluno">
            </form>
        <?php } ?>
    <?php } ?>
<?php } ?>