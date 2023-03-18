# To run these tests, simply execute `nimble test`.

import unittest

import passtring

suite "Pascal ShortString":
  setup:
    var
      nome: PasString[10]
      tiny: PasString[0]

  test "Assign and length":
    let s1 = "Guaracy"
    nome << s1
    check $nome == s1
    nome << ""
    check nome.len == 0
  test "Errors":
    expect IndexDefect:
      tiny << "123"
