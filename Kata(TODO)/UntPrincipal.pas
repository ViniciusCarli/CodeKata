unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, DmConexao1, DmCliente;

type
  TListaForm = class(TForm)
    DBGrid1: TDBGrid;
    dsLista: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    FLista : TDmConexao;
    FCliente : TDmCliente1;
  public
    constructor Create(AOwner: TComponent);override;
  end;

var
  ListaForm: TListaForm;

implementation

{$R *.dfm}

procedure TListaForm.FormCreate(Sender: TObject);
begin
  FLista := T
end;

end.
