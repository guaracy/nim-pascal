uses sysutils;

type
  tRecord = Record
    name: string[20];
    lang: string[6];
    ano: integer;
  end;

var
  db: tRecord;
  f: file of tRecord;
  
begin
  assign(f,'data.dat');
  reset(f);
  while not eof(f) do begin
    read(f,db);
    writeln(db.ano,' : ',db.name,' : ',db.lang);
  end;
  close(f);
end.
