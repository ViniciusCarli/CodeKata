unit DmCliente;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmCliente1 = class(TDataModule)
    CdsLista: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCliente1: TDmCliente1 ;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
