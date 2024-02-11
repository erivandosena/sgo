unit UnRelEtiquetaProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, Barcode, ExtCtrls;


type
  TFrmRelEtiquetaProd = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    Grafico: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Barcode1: TBarcode;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEtiquetaProd: TFrmRelEtiquetaProd;

implementation

uses UnProdutos;

{$R *.dfm}

procedure TFrmRelEtiquetaProd.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
Grafico.Picture := Nil;
Barcode1.Left:=1;
BarCode1.Top:=1;
Barcode1.Height:=20;
Grafico.Height:=20;
BarCode1.Text := FrmProdutos.IBQuery_EtiquetaProdutosCOD_PROD.AsString;
Barcode1.DrawBarcode(Grafico.Canvas);


(*
Shortdateformat:='dd/mm/yyyy';
Barcode1.Bar_CodeType:= CODE39;
Barcode1.Bar_Modulewidth:= SC2;
Barcode1.Bar_Rotation:= rotate_000;
Barcode1.Bar_HighDensity:= False;
Barcode1.Bar_Zoomsize:= False;
Barcode1.Bar_WidthReduce:= False;
Barcode1.Bar_HumanReadable:= False;
Barcode1.Bar_HeightPercent:= 30;
Barcode1.Bar_Caption:= FrmProdutos.IBQuery_EtiquetaProdutosCOD_PROD.AsString;
Barcode1.SaveToFile(1,'C:\Windows\Temp\Cb.bmp');
if FrmProdutos.CheckBox_ValorUnitario.Checked = True then
begin
QRDBText2.DataSet:= FrmProdutos.IBQuery_EtiquetaProdutos;
QRDBText2.DataField:= 'VALOR_UNITARIO';
end else
QRDBText2.Enabled:= False;
Grafico.Picture.LoadFromFile('C:\Windows\Temp\Cb.bmp');   *)
end;

end.
