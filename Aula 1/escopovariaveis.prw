STATIC cArquivo := "escopovariaveis.prw"

/*
Tipagem de Variáveis
- Char ou Caracter (texto)
- Number (numérico)
- Date (tipos de data)
- Array (coleção de dados)
- logical - (lógica, verdadeiro ou falso)
- Block/Codeblock - (Bloco de código, ou aninhamento de funções)
- Object - Conceito de Orientação a objetos e manipulação de classes
- nil/null - (variável nula)

** Boas Práticas de declaração de variáveis
** Variáveis em ADVPL são de tipagem fraca
**Variáveis em TLPP são de tipagem forte
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
    Escopo de declaração de variáveis
    - Local (Visível apenas na função em que foi criada e as funções chamadas por ela)
    - Private (Visível na função em que foi criada e as funções chamadas por ela)
    - Public (Disponível em todo o sistema após se criada)
    - Stativa(disponível demtrp do fonte em que foi criado, cabeçalho)
    - Default (tratamento de passagem de parâmetro)
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

    //Default pcVar := "variável default"

Return
