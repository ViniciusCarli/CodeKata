unit TestFuncoes;

interface

uses
  TestFramework, System.SysUtils, Vcl.Graphics, Winapi.Windows, System.Variants,
  System.Classes, Vcl.Dialogs, Vcl.Controls, Vcl.Forms, Winapi.Messages;

type
  // Test methods for class TForm1

  TesteLista = class(TTestCase)
  published
    procedure TestarDataNula;
    procedure TestarDataMaiorAtual;
    procedure TestarDataMenorAtual;

    procedure TestarStatusNulo;
    procedure TestarStatusAgendado;
    procedure TestarStatusFinalizado;
    procedure TestarStatusAdiado;
    procedure TestarStatusOutro;

    procedure TestarTarefaNula;
    procedure TestarTrefaNaoNula;
  end;

implementation

{ TesteLista }

uses UntFuncoes, System.DateUtils;

procedure TesteLista.TestarDataMaiorAtual;
begin
  CheckEquals(Ord(tdMaiorHoje), Ord(TFuncoes.ChecarData(Tomorrow)));
end;

procedure TesteLista.TestarDataMenorAtual;
begin
  CheckEquals(Ord(tdMenorHoje), Ord(TFuncoes.ChecarData(Yesterday)));
end;

procedure TesteLista.TestarDataNula;
begin
  CheckEquals(Ord(tdNula), Ord(TFuncoes.ChecarData(Null)));
end;


procedure TesteLista.TestarStatusFinalizado;
begin
  CheckEquals('1', TFuncoes.ChecarStatus('Finalizado'))
end;

procedure TesteLista.TestarStatusAdiado;
begin
  CheckEquals('2', TFuncoes.ChecarStatus('Adiado'))
end;

procedure TesteLista.TestarStatusAgendado;
begin
  CheckEquals('0', TFuncoes.ChecarStatus('Agendado'))
end;

procedure TesteLista.TestarStatusNulo;
begin
  CheckEquals('Nulo', TFuncoes.ChecarStatus(''))
end;

procedure TesteLista.TestarStatusOutro;
begin
  CheckEquals('Outro', TFuncoes.ChecarStatus('Exemplo'))
end;


procedure TesteLista.TestarTarefaNula;
begin
  CheckEquals('Nulo', TFuncoes.ChecarTarefa(''))
end;

procedure TesteLista.TestarTrefaNaoNula;
begin
  CheckEquals('1', TFuncoes.ChecarTarefa('exemplo'));
end;

initialization

TestFramework.RegisterTest(TesteLista.Suite);

end.
