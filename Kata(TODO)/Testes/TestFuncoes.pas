unit TestFuncoes;


interface

uses
  TestFramework, System.SysUtils, Vcl.Graphics, Winapi.Windows, System.Variants,
  System.Classes, Vcl.Dialogs, Vcl.Controls, Vcl.Forms, Winapi.Messages;

type
  // Test methods for class TForm1

  TesteLista = class(TTestCase)
  published
    procedure TestarDataMaiorAtual;
    procedure TestarDataMenorAtual;
    {procedure TestarData }

  end;

implementation


{ TesteLista }

uses UntFuncoes, System.DateUtils;

procedure TesteLista.TestarDataMaiorAtual;
begin
  CheckEquals(1, TFuncoes.ChecarData(EncodeDate(2017, 12, 30)))
end;

procedure TesteLista.TestarDataMenorAtual;
begin
  CheckEquals(0, TFuncoes.ChecarData(EncodeDate(2017, 12, 11)))
end;

initialization
TestFramework.RegisterTest(TesteLista.Suite);

end.

