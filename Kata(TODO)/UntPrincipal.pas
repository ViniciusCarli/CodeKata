unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DmConexao1, DmCliente, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.CheckLst;

type
  TListaForm = class(TForm)
    GridLista: TDBGrid;
    dsLista: TDataSource;
    btnSalvar: TButton;
    btnAtualizar: TButton;
    btnAdicionar: TButton;
    checkBoxAgendadas: TCheckBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    checkBoxFinalizadas: TCheckBox;
    checkBoxAdiadas: TCheckBox;
    Button1: TButton;
    procedure CriarFilterAdequado;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Salvar;
    procedure Atualizar;
    procedure Adicionar;
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
//    procedure checkBoxAdiadasClick(Sender: TObject);
//    procedure checkBoxAgendadasClick(Sender: TObject);
//    procedure checkBoxFinalizadasClick(Sender: TObject);
//    procedure checkBoxTodasClick(Sender: TObject);
  private
    FLista: TDmConexao;
    FCliente: TDmCliente1;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListaForm: TListaForm;
  StatusAdiconados : String;

implementation

{$R *.dfm}

constructor TListaForm.Create(AOwner: TComponent);
begin
  inherited;
  FLista := TDmConexao.Create(Self);
  FCliente := TDmCliente1.Create(Self);

  FCliente.CdsLista.SetProvider(FLista.DspLista);
end;

procedure TListaForm.CriarFilterAdequado;
const
  BoxAdiada = 'Status = ''Adiada''';
  BoxAgendada = 'Status = ''Agendada''';
  BoxFinalizada = 'Status = ''Finalizada''';
var
  Filtro: string;

  procedure Adicionar(Valor: string);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + ' or ';
    Filtro := Filtro + Valor
  end;
begin
  if checkBoxAdiadas.Checked then
    Adicionar(BoxAdiada);

  if checkBoxAgendadas.Checked then
    Adicionar(BoxAgendada);

  if checkBoxFinalizadas.Checked then
    Adicionar(BoxFinalizada);

  FCliente.CdsLista.Filter := Filtro;
  FCliente.CdsLista.Filtered := True;
//  FCliente.CdsLista.Filtered := not Filtro.IsEmpty;
end;

procedure TListaForm.Adicionar;
begin
  FCliente.CdsLista.Insert
end;

procedure TListaForm.Atualizar;
begin
  FCliente.CdsLista.Refresh
end;

procedure TListaForm.btnAtualizarClick(Sender: TObject);
begin
  Atualizar
end;

procedure TListaForm.btnAdicionarClick(Sender: TObject);
begin
  Adicionar
end;

procedure TListaForm.btnSalvarClick(Sender: TObject);
begin
  Salvar
end;

procedure TListaForm.Button1Click(Sender: TObject);
begin
  CriarFilterAdequado
end;

//procedure TListaForm.checkBoxAdiadasClick(Sender: TObject);
//begin
//  if checkBoxAdiadas.Checked then
//  begin
//    FCliente.CdsLista.Filter := FCliente.CdsLista.Filter + 'status = ''Adiada''';
//    FCliente.CdsLista.Filtered := True;
//  end
//  else
//  begin
//    FCliente.CdsLista.Filter := '';
//    FCliente.CdsLista.Filtered := False;
//  end;

//end;

//procedure TListaForm.checkBoxAgendadasClick(Sender: TObject);
//begin
//  if checkBoxAgendadas.Checked then
//  begin
//    FCliente.CdsLista.Filter := FCliente.CdsLista.Filter + 'status = ''Agendada''';
//    FCliente.CdsLista.Filtered := True;
//  end
//  else
//  begin
//    FCliente.CdsLista.Filter := '';
//    FCliente.CdsLista.Filtered := False;
//  end;

//end;

//procedure TListaForm.checkBoxFinalizadasClick(Sender: TObject);
//begin
//  if checkBoxFinalizadas.Checked then
//  begin
//    FCliente.CdsLista.Filter := 'status = ''Finalizada''';
//    FCliente.CdsLista.Filtered := True;
//  end
//  else
//  begin
//    FCliente.CdsLista.Filter := '';
//    FCliente.CdsLista.Filtered := False;
//  end;

//end;

//procedure TListaForm.checkBoxTodasClick(Sender: TObject);
//begin
//  if not checkBoxTodas.Checked then
//  begin
//    FCliente.CdsLista.Filter := 'status = ''Finalizada'' and ''status'' = ''Agendada'' and ''status'' = ''Adiadas''';
//    FCliente.CdsLista.Filtered := True;
//  end
//  else
//  begin
//    FCliente.CdsLista.Filter := '';
//    FCliente.CdsLista.Filtered := False;
//  end;
//end;

procedure TListaForm.FormCreate(Sender: TObject);
begin
  FCliente.CdsLista.Open;
  dsLista.DataSet := FCliente.CdsLista;
  GridLista.DataSource := dsLista;

end;

procedure TListaForm.Salvar;
begin
  FCliente.CdsLista.ApplyUpdates(0)
end;

end.
