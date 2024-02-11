unit UnRelFluxo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelFluxo = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel_Carne: TQRLabel;
    QRLabel_Boleto: TQRLabel;
    QRLabel_Cheque: TQRLabel;
    QRLabel_Cartao: TQRLabel;
    QRLabel_Avista: TQRLabel;
    QRLabel_Aprazo: TQRLabel;
    QRLabel_Totalvenda: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel_RCarne: TQRLabel;
    QRLabel_RBoleto: TQRLabel;
    QRLabel_RCheque: TQRLabel;
    QRLabel_RCartao: TQRLabel;
    QRLabel_RDinheiro: TQRLabel;
    QRLabel_RTotal: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel_ROutros: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFluxo: TFrmRelFluxo;

implementation

uses UnDmFluxo, UnFluxo;

{$R *.dfm}

procedure TFrmRelFluxo.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel_Data.Caption:= 'Período de: '+DateToStr(FrmFluxo.Dia1.Date)+ ' à ' +DateToStr(FrmFluxo.Dia2.Date);
end;

procedure TFrmRelFluxo.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//vendas
QRLabel_Carne.Caption:= FormatFloat('Carnê: R$ #,##0.00', FrmFluxo.IBQuery_CarneF_1.Value);
QRLabel_Boleto.Caption:= FormatFloat('Boleto: R$ #,##0.00', FrmFluxo.IBQuery_BoletoF_1.Value);
QRLabel_Cheque.Caption:= FormatFloat('Cheque: R$ #,##0.00', FrmFluxo.IBQuery_ChequeF_3.Value);
QRLabel_Cartao.Caption:= FormatFloat('Cartão: R$ #,##0.00', FrmFluxo.IBQuery_CartaoF_3.Value);
QRLabel_Avista.Caption:= FormatFloat('Á Vista: R$ #,##0.00', FrmFluxo.IBQuery_VendasVistaF_4.Value);
QRLabel_Aprazo.Caption:= FormatFloat('A Prazo: R$ #,##0.00', FrmFluxo.IBQuery_VendasPrazoF_5.Value);
QRLabel_Totalvenda.Caption:= FormatFloat('Total: R$ #,##0.00', FrmFluxo.IBQuery_TotalVendasF_2.Value);
//recebimentos
QRLabel_RCarne.Caption:= FormatFloat('Carnê: R$ #,##0.00', FrmFluxo.IBQuery_RCarneF_1.Value);
QRLabel_RBoleto.Caption:= FormatFloat('Boleto: R$ #,##0.00', FrmFluxo.IBQuery_RBoletoF_1.Value);
QRLabel_RCheque.Caption:= FormatFloat('Cheque: R$ #,##0.00', FrmFluxo.IBQuery_RChequeF_1.Value);
QRLabel_RCartao.Caption:= FormatFloat('Cartão: R$ #,##0.00', FrmFluxo.IBQuery_RCartaoF_1.Value);
QRLabel_RDinheiro.Caption:= FormatFloat('Dinheiro: R$ #,##0.00', FrmFluxo.IBQuery_RDinheiroF_1.Value);
QRLabel_ROutros.Caption:= FormatFloat('Outros: R$ #,##0.00', FrmFluxo.IBQuery_ROutrosF_1.Value);
QRLabel_RTotal.Caption:= FormatFloat('Total: R$ #,##0.00', Total);
end;

end.
