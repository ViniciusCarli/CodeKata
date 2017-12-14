unit TestFuncoes;

interface

uses
  TestFramework, System.SysUtils, Vcl.Graphics, Winapi.Windows, System.Variants,
  System.Classes, Vcl.Dialogs, Vcl.Controls, Vcl.Forms, Winapi.Messages;

type

  TesteLista = class(TTestCase)
  published
    procedure TestarDataNula;
    procedure TestarDataMaiorAtual;
    procedure TestarDataMenorAtual;

    procedure Status_Nulo_RetonatdNula;
    procedure Status_Agendado_Retornar0;
    procedure Status_Finalizado_Retornar1;
    procedure Status_Adiado_Retornar2;
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

procedure TesteLista.Status_Finalizado_Retornar1;
begin
  CheckEquals('1', TFuncoes.ChecarStatus('Finalizado'));
end;

procedure TesteLista.Status_Adiado_Retornar2;
begin
  CheckEquals('2', TFuncoes.ChecarStatus('Adiado'));
end;

procedure TesteLista.Status_Agendado_Retornar0;
begin
  CheckEquals('0', TFuncoes.ChecarStatus('Agendado'));
end;

procedure TesteLista.Status_Nulo_RetonatdNula;
begin
  CheckEquals('Nulo', TFuncoes.ChecarStatus(''));
end;

procedure TesteLista.TestarStatusOutro;
begin
  CheckEquals('Outro', TFuncoes.ChecarStatus('Exemplo'));
end;

procedure TesteLista.TestarTarefaNula;
begin
  CheckEquals('Nulo', TFuncoes.ChecarTarefa(''));
end;

procedure TesteLista.TestarTrefaNaoNula;
begin
  CheckEquals('1', TFuncoes.ChecarTarefa('exemplo'));
end;

initialization

TestFramework.RegisterTest(TesteLista.Suite);

end.
