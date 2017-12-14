unit UntFuncoes;

interface

uses System.SysUtils, System.DateUtils;

type
  TTipoData = (tdNula, tdMenorHoje, tdMaiorHoje);
  TFuncoes = Class

    class function ChecarData(Data_Usuario: Variant): TTipoData;
    class function ChecarStatus(StatusUsuario: String): String;
    class function ChecarTarefa(TarefaUsuario: String): String;

  End;

implementation

uses
  System.Variants;

{ TFuncoes }

class function TFuncoes.ChecarData(Data_Usuario: Variant): TTipoData;
begin
  if VarIsNull(Data_Usuario) then
    Exit(tdNula);

  if VarToDateTime(Data_Usuario) < Now then
    Exit(tdMenorHoje);

  if VarToDateTime(Data_Usuario) > Now then
    Exit(tdMaiorHoje);
end;

class function TFuncoes.ChecarStatus(StatusUsuario: String): String;
begin
  if StatusUsuario = '' then
  begin
    StatusUsuario := 'Agendado';
    Result := 'Nulo';
  end
  else if StatusUsuario = 'Finalizado' then
  begin
    Result := '1'
  end
  else if StatusUsuario = 'Adiado' then
  begin
    Result := '2'
  end
  else if StatusUsuario = 'Agendado' then
  begin
    Result := '0'
  end
  else
    Result := 'Outro'

end;

class function TFuncoes.ChecarTarefa(TarefaUsuario: String): String;
begin
  if TarefaUsuario = '' then
  begin
    Result := 'Nulo'
  end
  else if TarefaUsuario <> '' then
  begin
    Result := '1'
  end;

end;

end.
