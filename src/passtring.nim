## PasString serve para simular uma variável do tipo Shortstring do Pascal
## 
## onde o primeiro byte é usado para o tamanho e 255 bytes para os caracteres
## 
## `var nome: PasString[8]` equivale em Pascal a `var nome: String[8]`

type PasString*[n: static byte] = object
  ## `n` é o tamanho máximo de caracteres possíveis na string [1..255]. Aceita zero mas...
  ## 
  ## `size` tamanho atual da string e só é acessado por len
  ## 
  ## `content` array para armazenar o contepudo da string (PasString)
  size: byte
  content: array[n,char]

proc `<<`*(s:var PasString, v:string)=
  ## move string para a variável
  ## 
  ## `var << "string"` equivale a `var := "string"`
  s.size=v.len.byte
  if s.size > 0:
    for ix,c in v:
      s.content[ix]=c

proc `$`*(s:PasString):string=
  ## retorna o conteúdo da variável
  ## 
  ## $var -> "string"
  result = newString(s.size)
  copyMem(result[0].addr,s.content[0].unsafeAddr,s.size)

proc len*(s:PasString):int=
  ## retorna a comprimento da string
  result = s.size.int

# END -------------------
