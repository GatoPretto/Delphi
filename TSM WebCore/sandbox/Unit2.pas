unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.Actions, WEBLib.ExtCtrls;

type
  TForm2 = class(TWebForm)
    wlblAbrirForm1: TWebLabel;
    procedure wlblAbrirForm1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  classFuncoesWeb, Unit1;

{$R *.dfm}

procedure TForm2.wlblAbrirForm1Click(Sender: TObject);
begin
  //TFuncoesWeb.AbrirNovaPagina(Tform1);
  Application.CreateForm(Tform1, form1);
end;

end.