unit UnRelContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, UnDm, QRCtrls, DB, Jpeg;

type
  TFrmRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRDBText1: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    DataSource2: TDataSource;
    QRImage3: TQRImage;
    QRImage2: TQRImage;
    DetailBand1: TQRBand;
    QRDBRichText1: TQRDBRichText;
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRecibo: TFrmRelRecibo;

implementation

{$R *.dfm}

procedure TFrmRelRecibo.DataSource2DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_DAD_ESCOLOGO_ESCOLA.IsNull
      then QRImage2.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_DAD_ESCOLOGO_ESCOLA.SaveToStream(MS);
          MS.Seek(0,soFromBeginning);
          with J1 do begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(MS);
          end;
         QRImage2.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    End;
if  Dm.IBDS_DAD_ESCO.FieldByName('LOGO_ESCOLA').asString = '' then
begin
QRImage3.Enabled:=True;
end
else
QRImage3.Enabled:=False;
end;

end.
