programa {
  funcao inicio() {
  real menu, saque, saldo = 0, deposito
  caracter enter, simnao
  cadeia login, senha, login2, senha2, extrato = " "
  escreva("|---------------- AREA DE LOGIN - BANCO MIGUELITO ----------------|")
  escreva("\\n|CRIE SEU LOGIN: ")
  leia(login)
  escreva("|CRIE SUA SENHA: ")
  leia(senha)
  limpa()
 
 
 
  escreva("|---------------- SEJA BEM VINDO! ----------------|")
  escreva("\\n|CONFIRME LOGIN: ")
  leia(login2)
  escreva("|CONFIRME SENHA: ")
  leia(senha2)

  se(login2 != login ou senha2 != senha){
  enquanto(login2 != login ou senha2 != senha){
  escreva("|LOGIN OU SENHA INVALIDOS! TENTE NOVAMENTE -->")
  escreva("\\n|LOGIN: ")
  leia(login2)
  escreva("|SENHA: ")
  leia(senha2)
  }
  }
 
  se(login2 == login e senha2 == senha){
  escreva("|LOGIN CONCLUIDO COM SUCESSO!\\n")
  }
limpa()
enquanto(verdadeiro){
escreva("\\n|------------ MENU ------------|\\n")
escreva("|1: SALDO\\n")
escreva("|2: SAQUE\\n")
escreva("|3: DEPOSITO\\n")
escreva("|4: EXTRATO\\n")
escreva("|------------------------------------------------|")
escreva("\\n|0: SAIR\\n")
escreva("|OPÇÃO --> ")
leia(menu)
limpa()

enquanto(menu != 1 e menu != 2 e menu != 3 e menu != 0 e menu != 4){
escreva("|OPÇÃO INVALIDA! TENTE NOVAMENTE: ")
leia(menu)
}

escolha(menu){
  caso 1:
    escreva("|SALDO: DESEJA VIZUALIZAR O SALDO? (S/ PARA SIM E N/ PARA NAO): ")
    leia (simnao)
    se(simnao == "s" ou simnao == "S"){
    escreva("|SALDO IGUAL A: " + saldo, "\\n")
    }
    senao se(simnao == "n" ou simnao == "N"){
    escreva("|APERTE 'ENTER' PARA CONTINUAR: ")
    leia (enter)
    }
   
    pare
    caso 2:
    escreva("|DIGITE O VALOR DO SAQUE: ")
    leia(saque)
    se(saque <= saldo e saque >0){
    saldo = saldo - saque
    extrato = extrato + "|SAQUE ---- R$ " + saque + "\\n"
    limpa()
    escreva("|SAQUE REALIZADO COM SUCESSO \\n|NOVO SALDO: " + saldo, "\\n")
    }
    senao{
    escreva("|VALOR INSUFICIENTE! \\n")
    }
   
    pare
    caso 3:
    escreva("|DIGITE O VALOR DO DEPOSITO: ")
    leia(deposito)
   
    se(deposito < 0){
    enquanto(deposito < 0){
    escreva("|VALOR INVALIDO! TENTE NOVAMENTE: ")
    leia(deposito)
    }
    }
    saldo = saldo + deposito
    extrato = extrato + "|SAQUE ---- R$ " + deposito + "\\n"
    limpa()
    escreva("|DEPOSITO CONCLUIDO COM SUCESSO!\\n")
    escreva("|NOVO SALDO: " + saldo, "\\n")
   
    pare

    caso 0:
    se(menu == 0){
    escreva("|APERTE 'ENTER' PARA CONTINUAR: ")
    leia (enter)
    }

    caso 4:
    escreva("|EXTRATO: \\n", extrato)
  }
 }
}
}