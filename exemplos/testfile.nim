import ../src/passtring, strutils, streams


let db = @[
    "John McCarthy,LISP,1960",
    "Ralph Griswold,SNOBOL,1962",
    "Kenneth E. Iverson,APL,1966",
    "Niklaus Wirth,Pascal,1970",
    "Dennis Ritchie,C,1972",
    "Yukihiro Matsumoto,Ruby,1995",
    "Carl Sassenrath,REBOL,1997",
    "Walter Bright,D,2001"]

type Row = object
    name: PasString[20]
    lang: PasString[6]
    date: int16
var record: Row        
let s = newFileStream("data.dat",fmWrite)

for row in db:
    let field = row.split(",")
    record.name << field[0]
    record.lang << field[1]
    record.date = field[2].parseInt.int16
    s.write(record)
s.close
