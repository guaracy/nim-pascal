# planilha de https://www.thespreadsheetguru.com/blog/sample-data
import ../src/passtring
import xl, streams

type TRec = object
    id: PasString[6]
    nome: PasString[50]
    idade: byte
    pais: PasString[15]
    salario: float
let
    workbook = xl.load("Employee Sample Data.xlsx")
    sheet = workbook.active

var 
    row = 2
    rec: TRec

let s = newFileStream("employee.dat",fmWrite)

while sheet.cell("A" & $row).value != "":
    if sheet.cell("G" & $row).value == "Latino":
        rec.id << sheet.cell("A" & $row).value
        rec.nome << sheet.cell("B" & $row).value
        rec.idade = sheet.cell("H" & $row).number.byte
        rec.pais << sheet.cell("L" & $row).value
        rec.salario = sheet.cell("J" & $row).number
        s.write(rec)
    row += 1
    
s.close