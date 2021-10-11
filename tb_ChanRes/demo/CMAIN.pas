unit CMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TFMAIN = class(TForm)
    BOK: TButton;
    BCANCEL: TButton;
    CBR: TComboBox;
    Label1: TLabel;
    procedure BOKClick(Sender: TObject);
    procedure BCANCELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN: TFMAIN;

implementation

{$R *.dfm}

 function SetScreenModeAA: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeBA: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeCA: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeAB: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeBB: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeCB: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeAC: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeBC: Boolean; Stdcall; External 'TBChanRes.dll';
 function SetScreenModeCC: Boolean; Stdcall; External 'TBChanRes.dll';
 procedure RestoreDefaultMode; Stdcall; External 'TBChanRes.dll';

procedure TFMAIN.BOKClick(Sender: TObject);
begin
 if CBR.ItemIndex=0 then SetScreenModeAA;
 if CBR.ItemIndex=1 then SetScreenModeBA;
 if CBR.ItemIndex=2 then SetScreenModeCA;
 if CBR.ItemIndex=3 then SetScreenModeAB;
 if CBR.ItemIndex=4 then SetScreenModeBB;
 if CBR.ItemIndex=5 then SetScreenModeCB;
 if CBR.ItemIndex=6 then SetScreenModeAC;
 if CBR.ItemIndex=7 then SetScreenModeBC;
 if CBR.ItemIndex=8 then SetScreenModeCC;
end;

procedure TFMAIN.BCANCELClick(Sender: TObject);
begin
 RestoreDefaultMode;
end;

end.
