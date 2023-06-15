/*
Alltrim - Remove espa�os em branco no in�cio e fim da string
Rtrim - Remove espa�os em branco do final (� direita) da string
Ltrim - Remove espa�os em branco do in�cio (� esquerda) da string
Right - Retorna o conte�do a direita da string
Left - Retorna o conte�do a esquerda da string
Padr - Retorna a pr�pria string com espa�os a direita at� completar o valor determinado conforme par�metro.
Padl - Retorna a pr�pria string com espa�os a esquerda at� completar o valor determinado conforme par�metro.
Substr - Retorna parte da string conforme par�metros informados
**Concatena��o: Operador de soma (+) junta duas ou mais strings
Space - Retorna espa�os em branco conforme par�metro informado
Upper - Retorna toda string em ma�usculo
StrTran - Consulta e substitui informa��es na string
*/

user function strModos()

    local cNome := "    ADVPL   Essentials  "
    local cAlltrim := alltrim(cNome)
    local cRtrim := rtrim(cNome)
    local cLtrim := ltrim(cNome)

    local cCodCliente := "C0099901"
    local cRight := right(cCodCliente, 2)
    local cLeft := left(cCodCliente, 6)

    local cTexto := "Texto"
    local cPadR := padr(cTexto,15)
    local cPadL := padl(cTexto,15)

    local cNome1 := ""
    local cNome2 := ""
    local ctexto2 := ""

    cNome := alltrim(cNome) // Removendo os espa�os em branco
    cNome1 := substr(cNome, 1, 5) //Armazenei ADVPL em cNome1
    cNome2 := alltrim(substr(cNome, 6)) //Armazenei Essentials em cNome2 e removi espa�os em branco

    alert(cNome1+" "+cNome2)
    alert(cNome1+space(2)+cNome2)

    ctexto2 := "Advpl Essentials"
    alert(ctexto2)
    alert(UPPER( ctexto2 ))


    conout(cAlltrim)
    conout(cRtrim)
    conout(cLtrim)
    conout(cRight)
    conout(cLeft)
    conout(cLtrim)
    conout(cPadR)
    conout(cPadL)
    conout(cNome2)

return
