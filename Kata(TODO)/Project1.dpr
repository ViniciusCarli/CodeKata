program Project1;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {ListaForm},
  DmConexao1 in 'DmConexao1.pas' {DmConexao: TDataModule},
  DmCliente in 'DmCliente.pas' {DmCliente1: TDataModule},
  UntFuncoes in 'UntFuncoes.pas',
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TListaForm, ListaForm);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmCliente1, DmCliente1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
