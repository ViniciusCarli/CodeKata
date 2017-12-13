unit UntFuncoes;

interface

uses System.SysUtils, System.DateUtils;

type
  TFuncoes = Class

    class function ChecarData(Data_Usuario: TDateTime): Double;
    class function ChecarStatus(StatusUsuario: String): String;
    class function ChecarTarefa(TarefaUsuario: String): String;

  End;

implementation

{ TFuncoes }

class function TFuncoes.ChecarData(Data_Usuario: TDateTime): Double;
begin
  if Data_Usuario <= Now then
  begin
    Result := 0;
  end
  // else if Data_Usuario = Date(0000,00,00) then
  // begin
  // Data_Usuario := Tomorrow;
  // Result := 2;
  // end
  else if Data_Usuario > Now then
    Result := 1;
end;

class function TFuncoes.ChecarStatus(StatusUsuario: String): String;
begin
  if StatusUsuario = '' then
  begin
    StatusUsuario := 'Agendado';
    Result := '0';
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

end;

class function TFuncoes.ChecarTarefa(TarefaUsuario: String): String;
begin
  if TarefaUsuario = '' then
  begin

    Result := '0';
  end
  else if TarefaUsuario <> '' then
  begin
    Result := '1'
  end;

end;

end.
