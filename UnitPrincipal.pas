unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Ani;

type
  TfrmPrincipal = class(TForm)
    rect_tb: TRectangle;
    Label1: TLabel;
    cir_img_menu: TCircle;
    img_menu: TImage;
    lay_menu: TLayout;
    rect_icons: TRectangle;
    lay_home: TLayout;
    Circle1: TCircle;
    Image1: TImage;
    Label4: TLabel;
    lay_setting: TLayout;
    Circle2: TCircle;
    Image2: TImage;
    Label5: TLabel;
    lay_notification: TLayout;
    Circle3: TCircle;
    Image3: TImage;
    Label6: TLabel;
    lay_sub: TLayout;
    Circle4: TCircle;
    Image4: TImage;
    Label7: TLabel;
    lay_message: TLayout;
    Circle5: TCircle;
    Image5: TImage;
    Label8: TLabel;
    lay_vacancy: TLayout;
    Circle6: TCircle;
    Image6: TImage;
    Label9: TLabel;
    lay_profile: TLayout;
    Circle7: TCircle;
    Image7: TImage;
    Label10: TLabel;
    cir_anima: TCircle;
    AnimaHeigth: TFloatAnimation;
    AnimaWidth: TFloatAnimation;
    Rectangle1: TRectangle;
    Circle8: TCircle;
    Image8: TImage;
    AnimaOpacity: TFloatAnimation;
    procedure FormShow(Sender: TObject);
    procedure cir_img_menuClick(Sender: TObject);
    procedure Circle8Click(Sender: TObject);
    procedure AnimaHeigthProcess(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.AnimaHeigthProcess(Sender: TObject);
begin
  if cir_img_menu.Tag = 1 then begin
    AnimaOpacity.Inverse := False;
    AnimaOpacity.Start;
  end;

end;

procedure TfrmPrincipal.Circle8Click(Sender: TObject);
begin
  lay_menu.Visible := False;
  cir_img_menu.Tag := 0;
  AnimaHeigth.Inverse := True;
  AnimaWidth.Inverse := True;
  AnimaHeigth.Start;
  AnimaWidth.Start;

end;

procedure TfrmPrincipal.cir_img_menuClick(Sender: TObject);
begin
  lay_menu.Opacity := 0;
  lay_menu.Visible := True;


  AnimaHeigth.Inverse := False;
  AnimaWidth.Inverse := False;
  cir_img_menu.Tag := 1;
  AnimaHeigth.Start;
  AnimaWidth.Start;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  cir_anima.Height := 0;
  cir_anima.Width  := 0;

end;

end.
