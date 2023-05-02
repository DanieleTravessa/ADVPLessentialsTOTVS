STATIC cArquivo := "escopovariaveis.prw"

/*
Tipagem de Vari�veis
- Char ou Caracter (texto)
- Number (num�rico)
- Date (tipos de data)
- Array (cole��o de dados)
- logical - (l�gica, verdadeiro ou falso)
- Block/Codeblock - (Bloco de c�digo, ou aninhamento de fun��es)
- Object - Conceito de Orienta��o a objetos e manipula��o de classes
- nil/null - (vari�vel nula)

** Boas Pr�ticas de declara��o de vari�veis
** Vari�veis em ADVPL s�o de tipagem fraca
**Vari�veis em TLPP s�o de tipagem forte
*/

/*/{Protheus.doc} User Function varTipos
    (long_description)
    @type  Function
    @author user
    @since 02/05/2023
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
    /*
User Function varTipos()

    Local cTexto := ""
    Local nNumero := 10
    Local dData := ddatabase //data base do sistema
    Local dHoje := CtoD('01/05/23')    
    Local aDados := [cTexto, nNumero, dHoje]
    Local lValida := .T. 
    Local bBloco := {|| nNumero+10, alert(nNumero+10)}
    Local oObjeto := Nil
    Local xNull := Nil
    
    cTexto := 20
    alert(cTexto)*/

    /*
    Escopo de declara��o de vari�veis
    - Local (Vis�vel apenas na fun��o em que foi criada e as fun��es chamadas por ela)
    - Private (Vis�vel na fun��o em que foi criada e as fun��es chamadas por ela)
    - Public (Dispon�vel em todo o sistema ap�s se criada)
    - Stativa(dispon�vel demtrp do fonte em que foi criado, cabe�alho)
    - Default (tratamento de passagem de par�metro)
    */
user function escopoVr()

    Local cNome1 := "ADVPL"

    Private cNome2 := "Protheus"
    teste1()
    teste2(cNome1)

    alert(cNome3)

Return 

Static Function teste1()

    Public cNome3 := "TLPP"
    
    alert(cNome1)

return

Static Function teste2(pcVar)

    //Default pcVar := "vari�vel default"

Return
