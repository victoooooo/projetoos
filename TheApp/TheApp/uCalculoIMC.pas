unit uCalculoIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmIMC = class(TForm)
    lblAlt: TLabel;
    txtAlt: TEdit;
    btnVerifica: TButton;
    lblPeso: TLabel;
    txtPeso: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure btnVerificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIMC: TfrmIMC;

implementation

{$R *.dfm}

procedure TfrmIMC.btnVerificaClick(Sender: TObject);
var
peso, alt, result : Double;
begin
 peso := strtofloat(txtPeso.Text);
 alt := strtofloat(txtAlt.Text);
 result:= peso/(alt * alt);
 if (result < 18.5) then
 begin
  lbl1.Color := clLime;
  lbl2.Color := clMenu;
  lbl3.Color := clMenu;
  lbl4.Color := clMenu;
  lbl5.Color := clMenu;
 end
 else if ((result >= 18.5) and (result <= 24.9)) then
      begin
       lbl1.Color := clMenu;
       lbl2.Color := clLime;
       lbl3.Color := clMenu;
       lbl4.Color := clMenu;
       lbl5.Color := clMenu;
      end
      else if ((result >= 25.0) and (result <= 29.9)) then 
		   begin
	        lbl1.Color := clMenu;
          lbl2.Color := clMenu;
          lbl3.Color := clLime;
          lbl4.Color := clMenu;
          lbl5.Color := clMenu;
			end
			else if ((result >= 30.0) and (result <= 39.9)) then
		         begin
	              lbl1.Color := clMenu;
                lbl2.Color := clMenu;
                lbl3.Color := clMenu;
                lbl4.Color := clLime;
                lbl5.Color := clMenu;
			     end
				 else if (result >= 40.0) then
		              begin
	                   lbl1.Color := clMenu;
                     lbl2.Color := clMenu;
                     lbl3.Color := clMenu;
                     lbl4.Color := clMenu;
                     lbl5.Color := clLime;
                  end
					  else
					  begin

					  end;

			     begin

	             end;
       begin

			 end;
	  begin

    end;
 begin

 end;

end;

end.
