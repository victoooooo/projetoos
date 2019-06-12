program TheApp;





uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uTabuadas in 'uTabuadas.pas' {FrmTabuadas},
  uTriangulo in 'uTriangulo.pas' {FrmTriangulo},
  uCalculoIMC in 'uCalculoIMC.pas' {frmIMC},
  uVolumes in 'uVolumes.pas' {frmVolume},
  uBancoDados in 'uBancoDados.pas' {DataModule1: TDataModule},
  uCadastroClientes in 'uCadastroClientes.pas' {frmCadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
