unit UntFuncoes;

interface

uses  System.SysUtils;

type
  TFuncoes = Class

    class function ChecarData(Data_Usuario: TDateTime): Double;
//    class function ChecarStatus()

  End;

implementation

{ TFuncoes }

class function TFuncoes.ChecarData(Data_Usuario: TDateTime): Double;
begin
  if Data_Usuario <= Now then
  begin
    Result := 0;
  end
  else
    Result := 1;
end;

end.
