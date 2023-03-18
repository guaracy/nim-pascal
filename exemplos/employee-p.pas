uses sysutils;

type
  tRecord = Record
    id:     String[6];
    nome:   String[50];
    idade:  byte;
    pais:   String[15];
    salario: double;
  end;

var
  db: tRecord;
  f: file of tRecord;
  
begin
  assign(f,'employee.dat');
  reset(f);
  while not eof(f) do begin
    read(f,db);
    writeln(db.id,' : ',db.nome,' : ',db.idade,' : ',db.pais,' : ',db.salario:6:2);
  end;
  close(f);
  writeln('FIM');
end.
