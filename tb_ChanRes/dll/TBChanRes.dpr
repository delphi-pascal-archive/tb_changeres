library TBChanRes;


  ///////////////////////////////////////////////////////
  //                                                   //
  //  Эта библиотека содержит функции для управления   //
  //                           разрешением экрана...   //
  //                                                   //
  //  Автор - Багавиев Тимур                           //
  //                                                   //
  ///////////////////////////////////////////////////////



uses
  SysUtils, Classes, Windows;

{$R *.res}

//Функция 640x480x16:
function SetScreenModeAA: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=16;
   dmPelsWidth:=640;
   dmPelsHeight:=480;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 800x600x16:
function SetScreenModeBA: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=16;
   dmPelsWidth:=800;
   dmPelsHeight:=600;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 1024x768x16:
function SetScreenModeCA: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=16;
   dmPelsWidth:=1024;
   dmPelsHeight:=768;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 640x480x24:
function SetScreenModeAB: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=24;
   dmPelsWidth:=640;
   dmPelsHeight:=480;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 800x600x24:
function SetScreenModeBB: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=24;
   dmPelsWidth:=800;
   dmPelsHeight:=600;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 1024x768x24:
function SetScreenModeCB: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=24;
   dmPelsWidth:=1024;
   dmPelsHeight:=768;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 640x480x32:
function SetScreenModeAC: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=32;
   dmPelsWidth:=640;
   dmPelsHeight:=480;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 800x600x32:
function SetScreenModeBC: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=32;
   dmPelsWidth:=800;
   dmPelsHeight:=600;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция 1024x768x32:
function SetScreenModeCC: Boolean;
var
  DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=32;
   dmPelsWidth:=1024;
   dmPelsHeight:=768;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

//Функция возвращения разрешения:
procedure RestoreDefaultMode;
var T: TDevMode;
begin
 ChangeDisplaySettings(T,CDS_FULLSCREEN);
end;

//делаем экспорт:
Exports SetScreenModeAC, SetScreenModeBC, SetScreenModeCC, SetScreenModeAB, SetScreenModeBB, SetScreenModeCB, SetScreenModeAA, SetScreenModeBA, SetScreenModeCA, RestoreDefaultMode;

begin

end.
