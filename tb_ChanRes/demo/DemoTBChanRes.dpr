program DemoTBChanRes;

uses
  Forms,
  CMAIN in 'CMAIN.pas' {FMAIN};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���� ����� ����������...';
  Application.CreateForm(TFMAIN, FMAIN);
  Application.Run;
end.
