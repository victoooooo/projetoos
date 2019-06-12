unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroClientes = class(TForm)
    queClientes: TFDQuery;
    queClientesidClientes: TFDAutoIncField;
    queClientescpf: TLargeintField;
    queClientesdataNascimento: TDateField;
    queClientesnome: TStringField;
    queClientesendereco: TStringField;
    queClientesbairro: TStringField;
    queClientescidade: TStringField;
    queClientesestado: TStringField;
    queClientestelefone: TStringField;
    queClientescelular: TStringField;
    queClientesemail: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses uBancoDados;

procedure TfrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Libera o formulário da memória
Action := caFree;
end;

procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
//Ativa a query para a consulta ao banco
queClientes.Active := true;
//Abrir a query para as operações
queClientes.Open;
end;

procedure TfrmCadastroClientes.FormDestroy(Sender: TObject);
begin
//Anular o ponteiro de memória associado a variável do formulário
frmCadastroClientes := nil;
end;

end.
