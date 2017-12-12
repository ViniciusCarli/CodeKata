program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  TForm1 = class

    // Function Chop(Vetor : TArray<Integer>;Numero : Integer): Integer;

  public

  end;
  // implementation
  { TForm1 }

  // function TForm1.Chop(Vetor: TArray<Integer>; Numero: Integer): Integer;
  // var
  // Meio: Integer;
  // begin
  // Writeln('teste');
  // Vetor := TArray<Integer>.Create(1, 2, 3, 4, 5);
  // Meio := Round(High(Vetor) / 2);

  // end;

var
  Vetor: TArray<Integer>;
  Numero, Meio, Sup, Inf: Integer;

begin
  Vetor := TArray<Integer>.Create(2, 4, 6, 10, 20,45);
  Sup := High(Vetor);
  Inf := Low(Vetor);

  Write('Digite o numero' + #10, #13);
  Readln(Numero);

  while Inf <= Sup do
  begin
    Meio := Round((Sup + Inf) / 2);
    if Numero = Vetor[Meio] then
    begin
      WriteLn('Igual = ' + IntToStr(Meio));
      ReadLn;
      exit;
    end

    else if Vetor[Meio] > Numero then
    begin
      Sup := Meio - 1;
      WriteLn('AA ' + IntToStr(Sup));
      continue;
    end
    else if Vetor[Meio] < Numero then
    begin
      Inf := Meio + 1;
      WriteLn('BB ' + IntToStr(Inf));
      continue;
    end;
    Readln;
  end;

end.
