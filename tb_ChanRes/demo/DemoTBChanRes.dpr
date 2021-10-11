program DemoTBChanRes;

uses
  Forms,
  CMAIN in 'CMAIN.pas' {FMAIN};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Тест смены разрешения...';
  Application.CreateForm(TFMAIN, FMAIN);
  Application.Run;
end.
