function limpar() {
    document.getElementById("txtNome").className = " ";
    document.getElementById("txtEmail").className = " ";
    document.getElementById("txtDataNasc").className = " ";
    document.getElementById("txtCelular").className = " ";
    document.getElementById("txtSenha").className = " ";
}

function validarDados() {
    limpar();
    let enviar = true;

    // validação do nome
    if (!validarNome()) {
        enviar = false;
    }

    // validação do nome
    if (!validarCelular()) {
        enviar = false;
    }

    // validação se tem algum caractere no input Email
    if (!validarEmail()) {
        enviar = false;
    }

    // validação da data de nascimento
    if (!validarDataNasc()) {
        enviar = false;
    }

    // validação da senha (se não for válida, não envia o formulário)
    if (!validarSenha()) {
        enviar = false;
    }

    // envio do formulário se todos os campos estiverem válidos
    if (enviar) {
        document.formCadastro.submit();
    }
}

function validarNome() {
    let nome = document.getElementById("txtNome").value;
    let nomeValido = true;

    if (nome.length == 0) {
        document.getElementById("txtNome").className = "erroCampo";
        document.querySelector("#erroNome").textContent = "(*) Preencha seu nome";
        nomeValido = false;
    } else {
        document.querySelector("#erroNome").textContent = "";
    }

    return nomeValido;
}

function validarCelular() {
    // verificar letras maiúsculas e minúsculas
    let regexUpper = /[A-Z]/;
    let regexLower = /[a-z]/;

    let celular = document.getElementById("txtCelular").value;
    let celularValido = true;

    if (celular.length == 0) {
        document.getElementById("txtCelular").className = "erroCampo";
        document.querySelector("#erroCelular").textContent = "(*) Informe seu celular";
        celularValido = false;
    } else if (celular.length < 8 || celular.length > 15 || regexUpper.test(celular) || regexLower.test(celular)) {
        document.getElementById("txtCelular").className = "erroCampo";
        document.querySelector("#erroCelular").textContent = "Celular inválido";
        celularValido = false;
    } else {
        document.querySelector("#erroCelular").textContent = "";
    }

    return celularValido;
}

function validarEmail() {
    let email = document.getElementById("txtEmail").value;
    let emailValido = true;

    if (email.length == 0) {
        document.getElementById("txtEmail").className = "erroCampo";
        document.querySelector("#erroEmail").textContent = "(*) Preencha seu e-mail";
        emailValido = false;
    } else if (email.indexOf("@") < 0 || email.indexOf(".") < 0) {
        document.getElementById("txtEmail").className = "erroCampo";
        document.querySelector("#erroEmail").textContent = "Email inválido"
        emailValido = false
    } else {
        document.querySelector("#erroEmail").textContent = "";
    }

    return emailValido;
}

function validarDataNasc() {
    let DataNasc = document.getElementById("txtDataNasc").value
    let dataValida = true;

    if (DataNasc.length == 0) {
        document.getElementById("txtDataNasc").className = "erroCampo";
        document.querySelector("#erroDataNasc").textContent = "(*) Preencha sua data de nascimento";
        dataValida = false;
    } else {
        document.querySelector("#erroDataNasc").textContent = "";
    }

    return dataValida;
}

function validarSenha() {
    // verificar letras maiúsculas
    let regexUpper = /[A-Z]/;
    // verificar letras minúsculas
    let regexLower = /[a-z]/;
    // verificar se tem números
    let regexNum = /[0-9]/;

    let senha = document.getElementById("txtSenha").value;
    let senhaValida = true;

    // se a senha tiver menos de 6 caracteres
    if (senha.length < 6) {
        document.getElementById("txtSenha").className = "erroCampo";
        document.getElementById("erroSenhaChar").className = "erro";
        senhaValida = false;
    } else {
        document.getElementById("txtSenha").className = "";
        document.getElementById("erroSenhaChar").className = "requisito";
    }

    // se não tiver letras maiúsculas
    if (!regexUpper.test(senha)) {
        document.getElementById("txtSenha").className = "erroCampo";
        document.getElementById("erroSenhaUpper").className = "erro";
        senhaValida = false;
    } else {
        document.getElementById("erroSenhaUpper").className = "requisito";
    }

    // se não tiver letras minúsculas
    if (!regexLower.test(senha)) {
        document.getElementById("txtSenha").className = "erroCampo";
        document.getElementById("erroSenhaLower").className = "erro";
        senhaValida = false;
    } else {
        document.getElementById("erroSenhaLower").className = "requisito";
    }

    // se não tiver números
    if (!regexNum.test(senha)) {
        document.getElementById("txtSenha").className = "erroCampo";
        document.getElementById("erroSenhaNum").className = "erro";
        senhaValida = false;
    } else {
        document.getElementById("erroSenhaNum").className = "requisito";
    }

    // passa o resultado se é válida ou não (true ou false)
    return senhaValida;
}

