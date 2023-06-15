/*
Alltrim - Remove espaços em branco no início e fim da string
Rtrim - Remove espaços em branco do final (à direita) da string
Ltrim - Remove espaços em branco do início (à esquerda) da string
Right - Retorna o conteúdo a direita da string
Left - Retorna o conteúdo a esquerda da string
Padr - Retorna a própria string com espaços a direita até completar o valor determinado conforme parâmetro.
Padl - Retorna a própria string com espaços a esquerda até completar o valor determinado conforme parâmetro.
Substr - Retorna parte da string conforme parâmetros informados
**Concatenação: Operador de soma (+) junta duas ou mais strings
Space - Retorna espaços em branco conforme parâmetro informado
Upper - Retorna toda string em maíusculo
StrTran - Consulta e substitui informações na string
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

    cNome := alltrim(cNome) // Removendo os espaços em branco
    cNome1 := substr(cNome, 1, 5) //Armazenei ADVPL em cNome1
    cNome2 := alltrim(substr(cNome, 6)) //Armazenei Essentials em cNome2 e removi espaços em branco

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
