<h1>Inserir nova matrícula</h1>

<form method="POST" action="processa_matricula.php">
    <p class="badge text-bg-secondary">Selecione o aluno</p>
    <select class="form-select" name="escolha_aluno">
        <option>Selecione um aluno</option>
        <?php
        while ($linha = mysqli_fetch_array($consulta_alunos)) {
            echo '<option value="' . $linha['id_aluno'] . '">' . $linha['nome_aluno'] . '</option>';
        }
        ?>
    </select>

    <br><br>
    
    <p class="badge text-bg-secondary">Selecione o curso</p>
    <select class="form-select" name="escolha_curso">
        <option>Selecione um curso</option>
        <?php
        while ($linha = mysqli_fetch_array($consulta_cursos)) {
            echo '<option value="' . $linha['id_curso'] . '">' . $linha['nome_curso'] . '</option>';
        }
        ?>
    </select>

    <br><br>

    <input type="submit" class="btn btn-success" value="Matricular aluno no curso">

</form>
