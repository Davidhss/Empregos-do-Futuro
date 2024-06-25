function mostrarSenha() {

    //Variavel recebendo o input 
    var inputPass = document.getElementById('txtSenha')

    //Variavel do icone para mostra a senha
    var btnShowPass = document.getElementById('btn-Senha')

    //verificação (sempre que o usuario clicar no olho verificar se esta escondido ou se estar amostra)
    if (inputPass.type === 'password') {
        //se o tipo do input for exatamente igual a password quero que mude para texto
        inputPass.setAttribute('type', 'text')


        btnShowPass.classList.replace('bi-eye-fill', 'bi-eye-slash-fill')
        //mudando a class do icone para muda-lo
    } else {
        inputPass.setAttribute('type', 'password')
        btnShowPass.classList.replace('bi-eye-slash-fill', 'bi-eye-fill')
    }
}