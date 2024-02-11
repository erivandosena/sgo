unit UnRelCobrancasBole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect, ADODB;

type
  TFrmRelCobrancasBole = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel_Data: TQRLabel;
    QRLabel1: TQRLabel;
    QRMemo2: TQRMemo;
    QRImageLogo: TQRImage;
    QRSubDetail1: TQRSubDetail;
    Ds_Vencimentos: TDataSource;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText12: TQRDBText;
    Label_Tot: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape1: TQRRoundRect;
    QRLabel22Data: TQRLabel;
    Label_Men: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    IBQuery_Vencimentos: TADOQuery;
    IBQuery_VencimentosCodSac: TStringField;
    IBQuery_VencimentosSeuNum: TStringField;
    IBQuery_VencimentosDtVecto: TDateTimeField;
    IBQuery_VencimentosNossoNumero: TStringField;
    IBQuery_VencimentosValorTitulo: TBCDField;
    IBQuery_VencimentosVrPago: TBCDField;
    IBQuery_VencimentosDtEmissao: TDateTimeField;
    IBQuery_VencimentosTipDtOcorrencia: TDateTimeField;
    Ds_Clientes: TDataSource;
    IBQuery_Clientes: TADOQuery;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCobrancasBole: TFrmRelCobrancasBole;
  Valor: String;

implementation

uses UnCobrancasBole, UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmRelCobrancasBole.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel22Data.Caption:= 'Data: '+DateToStr(Data);
if FrmCobrancasBole.MEdit_Cidade.Text = '' then
begin
QRLabel_Data.Caption:= 'Vencimentos de: '+DateToStr(FrmCobrancasBole.Data1.Date)+ ' a '+DateToStr(FrmCobrancasBole.Data2.Date)+' de Todas as Cidades.';
Exit;
end else
QRLabel_Data.Caption:= 'Vencimentos de: '+DateToStr(FrmCobrancasBole.Data1.Date)+ ' a '+DateToStr(FrmCobrancasBole.Data2.Date)+' de '+FrmCobrancasBole.MEdit_Cidade.Text;
end;

procedure TFrmRelCobrancasBole.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
IBQuery_Vencimentos.Close;
IBQuery_Vencimentos.SQL.Clear;
IBQuery_Vencimentos.SQL.Add('select CodSac, DtVecto, ValorTitulo, VrPago, TipDtOcorrencia, SeuNum, NossoNumero, DtEmissao ');
// TOTAL DE MENSALIDADE
IBQuery_Vencimentos.SQL.Add('from tbTitulos ');
IBQuery_Vencimentos.SQL.Add('where (CodSac = :CodSac and DtVecto between :Data1 and :Data2 and VrPago = :Valor)');
IBQuery_Vencimentos.Parameters.ParamByName('Data1').Value:= FrmCobrancasBole.Data1.Date;
IBQuery_Vencimentos.Parameters.ParamByName('Data2').Value:= FrmCobrancasBole.Data2.Date;
IBQuery_Vencimentos.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Vencimentos.Parameters.ParamByName('CodSac').Value:= FrmCobrancasBole.IBQuery_Clientes.FieldByName('CodSacado').AsString;
IBQuery_Vencimentos.SQL.Add('order by DtVecto');
IBQuery_Vencimentos.Open;
IBQuery_Vencimentos.Last;
Label_Men.Caption:= 'Mensalidade(s) Vencida(s): '+IntToStr(IBQuery_Vencimentos.RecordCount);
Label_Tot.Caption:= FormatFloat('Total Acumulado: R$ #,##0.00', IBQuery_Vencimentos.FieldByName('ValorTitulo').AsFloat * IBQuery_Vencimentos.RecordCount);
IBQuery_Vencimentos.First;
IBQuery_Clientes.Locate('CodSacado',IBQuery_Vencimentos.FieldByName('CodSac').AsString,[]);
end;

procedure TFrmRelCobrancasBole.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if IBQuery_Vencimentos.FieldByName('CodSac').AsString = '' then
begin
QRLabel4.Enabled:= True;
end else
QRLabel4.Enabled:= False;
end;

end.
