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
    btnSalvar: TButton;
    btnAtualizar: TButton;
    btnAdicionar: TButton;
    checkBoxAgendadas: TCheckBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    checkBoxFinalizadas: TCheckBox;
    checkBoxAdiadas: TCheckBox;
    Button1: TButton;
    dsLista: TDataSource;
    Button2: TButton;
    procedure CriarFilterAdequado;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Salvar;
    procedure Atualizar;
    procedure Adicionar;
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

uses Unit1, Unit2;

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
  Teste : String;
  Filtro: string;

  procedure Adicionar(Valor: string);
  begin
    if not Filtro.IsEmpty then
      Filtro := Filtro + ' or ';
    Filtro := Filtro + Valor;
  end;
begin
if checkBoxAdiadas.Checked  then
    Adicionar(BoxAdiada);

  if checkBoxAgendadas.Checked then
    Adicionar(BoxAgendada);

  if checkBoxFinalizadas.Checked then
    Adicionar(BoxFinalizada);

  FCliente.CdsLista.Filter := Filtro;
  FCliente.CdsLista.Filtered := True;
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

procedure TListaForm.Button2Click(Sender: TObject);
begin
   Form2.ShowModal;
end;


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
