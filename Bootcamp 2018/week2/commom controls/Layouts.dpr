program Layouts;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmLayouts in 'frmLayouts.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
