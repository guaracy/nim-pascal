# Intro

## Necessidade

 O módulo `PasString` surgiu da necessidade de ler/gravar arquivos compatíveis com o FreePascal utilizando ShortStrings. ShortString é, basicamente, um array de caracteres onde a posição zero possui o tamanho e as posições de 1 a 255 possuem o conteúdo. 

## Diferenças e semelhanças

Como pode ser visto abaixo, as diferenças são bem pequenas. Apenas muda de `String`no Pascal para `PasString`no Nim. Mas aí também tem a diferença de `double` para `float`. Você deverá compatibilizar a nomenclatura utilizada pelas duas linguagens.

#### Pascal

```pascal
type
  tRecord = Record
    id:     String[6];
    nome:   String[50];
    idade:  byte;
    pais:   String[15];
    salario: double;
  end;
```

#### Nim

```nim
type TRec = object
    id: PasString[6]
    nome: PasString[50]
    idade: byte
    pais: PasString[15]
    salario: float
```

## Instalação

Para instalar o pacote globalmente, rode `nimble install` no diretório raiz.

## Utilização

- Para atribuir o valor de uma string para a variável utilize o operado `<<` (depois eu vejo se consigo trocar para `=`). Por exemplo: `nome << "Guaracy"`

- Para retornar a string contida na variável utilize o `$`. Por exemplo: `echo $nome`.

- Para retornar o tamanho da variável (conteúdo atual) utilize `len`. Por exemplo: `nome.len` retorna o tamanho do conteúdo. Atente que o valor retornado pode ser maior que o número de caracteres. Se o conteúdo for `é` retorna 2 (número de caracteres para a composição da letra em UTF-8)



E erra isso.




