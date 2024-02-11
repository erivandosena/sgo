unit UnRelCobrancas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelCobrancas = class(TForm)
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
    IBQuery_Vencimentos: TIBQuery;
    DataSource2: TDataSource;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRSysData4: TQRSysData;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape1: TQRRoundRect;
    QRLabel22Data: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    IBQuery_VencimentosCODIGO: TIBStringField;
    IBQuery_VencimentosDATA_VENCIMENTO: TDateTimeField;
    IBQuery_VencimentosNOME_CLIENTE: TIBStringField;
    IBQuery_VencimentosNUMERO_CONTRATO: TIBStringField;
    IBQuery_VencimentosNUMERO_DOC: TIBStringField;
    IBQuery_VencimentosNUMERO_PARCELA: TIBStringField;
    IBQuery_VencimentosQUANT_PARCELAS: TIBStringField;
    IBQuery_VencimentosSITUACAO_PARCELA: TIBStringField;
    IBQuery_VencimentosVALOR_PARCELA: TIBBCDField;
    IBQuery_VencimentosVALOR_PENDENTE: TIBBCDField;
    IBQuery_VencimentosF_1: TIntegerField;
    IBQuery_VencimentosF_2: TIBBCDField;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
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
  FrmRelCobrancas: TFrmRelCobrancas;
  Valor: String;

implementation

uses UnDm, UnPrincipal, UnCobrancas;

{$R *.dfm}

procedure TFrmRelCobrancas.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel22Data.Caption:= 'Data: '+DateToStr(Data);
if FrmCobrancas.MEdit_Cidade.Text = '' then
begin
QRLabel_Data.Caption:= 'Vencimentos de: '+DateToStr(FrmCobrancas.Data1.Date)+ ' a '+DateToStr(FrmCobrancas.Data2.Date)+' de Todas as Cidades.';
Exit;
end else
QRLabel_Data.Caption:= 'Vencimentos de: '+DateToStr(FrmCobrancas.Data1.Date)+ ' a '+DateToStr(FrmCobrancas.Data2.Date)+' de '+FrmCobrancas.MEdit_Cidade.Text;
end;

procedure TFrmRelCobrancas.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
IBQuery_Vencimentos.Close;
IBQuery_Vencimentos.SQL.Clear;
IBQuery_Vencimentos.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_DOC, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA, VALOR_PENDENTE, ');
// TOTAL DE MENSALIDADE
IBQuery_Vencimentos.SQL.Add('(select count (NUMERO_CONTRATO) from CARNE ');
IBQuery_Vencimentos.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Vencimentos.SQL.Add('(select sum (VALOR_PARCELA) from CARNE ');
IBQuery_Vencimentos.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+') ');
IBQuery_Vencimentos.SQL.Add('from CARNE ');
IBQuery_Vencimentos.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', FrmCobrancas.Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39);
IBQuery_Vencimentos.ParamByName('CODIGO').AsString;
IBQuery_Vencimentos.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Vencimentos.Open;
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_Vencimentos.FieldByName('CODIGO').AsString,[]);
end;

procedure TFrmRelCobrancas.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if IBQuery_Vencimentos.FieldByName('CODIGO').AsString = '' then
begin
QRLabel4.Enabled:= True;
end else
QRLabel4.Enabled:= False;
end;

end.
