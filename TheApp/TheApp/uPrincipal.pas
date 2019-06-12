unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Usurios1: TMenuItem;
    Aplicaes1: TMenuItem;
    CalculodeVolumes1: TMenuItem;
    CalculodeIMC1: TMenuItem;
    abuada1: TMenuItem;
    ringulo1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Banco1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure abuada1Click(Sender: TObject);
    procedure ringulo1Click(Sender: TObject);
    procedure CalculodeIMC1Click(Sender: TObject);
    procedure CalculodeVolumes1Click(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uTabuadas, uTriangulo, uCalculoIMC, uVolumes, uCadastroClientes;

procedure TFrmPrincipal.abuada1Click(Sender: TObject);
begin
 if (FrmTabuadas = nil) then
 begin
  Application.CreateForm(TFrmTabuadas, FrmTabuadas);
 end;
 FrmTabuadas.Show;

end;

procedure TFrmPrincipal.Banco1Click(Sender: TObject);
begin
 if (frmCadastroClientes = nil) then
 begin
   Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 end;
 frmCadastroClientes.Show;
end;

procedure TFrmPrincipal.CalculodeIMC1Click(Sender: TObject);
begin
 if (frmIMC = nil) then
 begin
   Application.CreateForm(TfrmIMC, frmIMC);
 end;
 frmIMC.Show;
end;

procedure TFrmPrincipal.CalculodeVolumes1Click(Sender: TObject);
begin
 if (frmVolume = nil) then
 begin
   Application.CreateForm(TfrmVolume, FrmVolume);
 end;
 frmVolume.Show;
end;

procedure TFrmPrincipal.ringulo1Click(Sender: TObject);
begin
 if (frmTriangulo = nil) then
 begin
   Application.CreateForm(TfrmTriangulo, FrmTriangulo);
 end;
 frmTriangulo.Show;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
 if (messagedlg('Deseja sair da aplica��o?', mtInformation, [mbYes, mbNo], 0) = mrYes)
 then
 begin
  messagedlg('Encerrando a aplica��o!', mtInformation, [mbOK], 0);
 end;
 Close;
end;

end.
