unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DmConexao1, DmCliente, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TListaForm = class(TForm)
    GridLista: TDBGrid;
    dsLista: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    FLista: TDmConexao;
    FCliente: TDmCliente1;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListaForm: TListaForm;

implementation

{$R *.dfm}

constructor TListaForm.Create(AOwner: TComponent);
begin
  inherited;
  FLista := TDmConexao.Create(Self);
  FCliente := TDmCliente1.Create(Self);

  FCliente.CdsLista.SetProvider(FLista.DspLista);
end;

procedure TListaForm.FormCreate(Sender: TObject);
begin
  FCliente.CdsLista.Open;
  dsLista.DataSet := FCliente.CdsLista;
  GridLista.DataSource := dsLista;

end;

end.
