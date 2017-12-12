program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

type
  TForm1 = class

    // Function Chop(Vetor : TArray<Integer>;Numero : Integer): Integer;

  public

  end;

var
  Vetor: TArray<Integer>;
  Numero, Meio, Sup, Inf: Integer;

begin
  Vetor := TArray<Integer>.Create(2, 4, 6, 10, 20,45,100,350,999);
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
      Break;
    end else if Vetor[Meio] > Numero then
    begin
      Sup := Meio - 1;
      WriteLn(IntToStr(Sup));
    end
    else if Vetor[Meio] < Numero then
    begin
      Inf := Meio + 1;
      WriteLn(IntToStr(Inf));
    end;
  end;

  Readln;

end.
