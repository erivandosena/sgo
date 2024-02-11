unit UnRelAltentica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAltentica = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape19: TQRShape;
    TitleBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel_Altentica: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAltentica: TFrmRelAltentica;

implementation

uses UnCaixa, UnPrincipal;

{$R *.dfm}

procedure TFrmRelAltentica.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
DiaMesAno: TDateTime;
Year, Month, Day: Word;
begin
Shortdateformat:='dd/mm/yyyy';
DiaMesAno:= Data;
DecodeDate(DiaMesAno, Year, Month, Day);
QRLabel_Altentica.Caption:= '      '+NumeroDoDoc+' '+IntToStr(Day)+IntToStr(Month)+IntToStr(Year)+' '+FloatToStrF(ValorPago,ffFixed,18,2)+'D PP';
end;

end.
