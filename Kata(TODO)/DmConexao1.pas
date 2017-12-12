unit DmConexao1;

interface

uses
  System.SysUtils, System.Classes, DbxDevartPostgreSQL, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr, DmCliente, Datasnap.DBClient;

type
  TDmConexao = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SqlLista: TSQLQuery;
    DsLista: TDataSetProvider;
    SqlListaTarefa: TWideStringField;
    SqlListaData: TDateField;
    SqlListaPessoa: TWideStringField;
    SqlListaStatus: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
