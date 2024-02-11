unit UnCaixaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ComCtrls, DB, DateUtils,
  IBCustomDataSet, IBQuery;

type
  TFrmCaixaEntrada = class(TForm)
    REdit_Visualizar: TRichEdit;
    MEdit_ValorPagar: TMaskEdit;
    MEdit_Parcela: TMaskEdit;
    MEdit_Pagar: TMaskEdit;
    MEdit_NDocumento: TMaskEdit;
    MEdit_Dinheiro: TMaskEdit;
    MEdit_Desconto: TMaskEdit;
    MEdit_DataPagamento: TMaskEdit;
    MEdit_Contrato: TMaskEdit;
    MEdit_Acrescimo: TMaskEdit;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Lab_ValorTotal: TLabel;
    Lab_Troco: TLabel;
    ComboBoxFatura: TComboBox;
    BtnProximoLanc: TBitBtn;
    BtnLiquidar: TBitBtn;
    BtnImprimirRecibo: TBitBtn;
    BtnFechaEntrada: TBitBtn;
    BtnCancelaEntrada: TBitBtn;
    BtnAutenticaDoc: TBitBtn;
    Bevel3: TBevel;
    IBQuery_FaturaBoleto: TIBQuery;
    IBQuery_FaturaBoletoCODIGO: TIBStringField;
    IBQuery_FaturaBoletoDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaBoletoNOME_CLIENTE: TIBStringField;
    IBQuery_FaturaBoletoNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturaBoletoNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaBoletoQUANT_PARCELAS: TIBStringField;
    IBQuery_FaturaBoletoSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturaBoletoVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaBoletoVALOR_PENDENTE: TIBBCDField;
    IBQuery_FaturaCartao: TIBQuery;
    IBQuery_FaturaCartaoCODIGO: TIBStringField;
    IBQuery_FaturaCartaoDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaCartaoNOME_CLIENTE: TIBStringField;
    IBQuery_FaturaCartaoNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturaCartaoNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaCartaoQUANT_PARCELAS: TIBStringField;
    IBQuery_FaturaCartaoSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturaCartaoVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaCheque: TIBQuery;
    IBQuery_FaturaChequeCODIGO: TIBStringField;
    IBQuery_FaturaChequeDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaChequeNOME_CLIENTE: TIBStringField;
    IBQuery_FaturaChequeNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturaChequeNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaChequeQUANT_PARCELAS: TIBStringField;
    IBQuery_FaturaChequeSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturaChequeVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaCarne: TIBQuery;
    IBQuery_FaturaCarneCODIGO: TIBStringField;
    IBQuery_FaturaCarneDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaCarneNOME_CLIENTE: TIBStringField;
    IBQuery_FaturaCarneNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturaCarneNUMERO_DOC: TIBStringField;
    IBQuery_FaturaCarneNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaCarneVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaCarneVALOR_PAGO: TIBBCDField;
    IBQuery_FaturaCarneVALOR_PENDENTE: TIBBCDField;
    IBQuery_FaturaCarneSITUACAO_PARCELA: TIBStringField;
    procedure ComboBoxFaturaChange(Sender: TObject);
    procedure MEdit_ValorPagarKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DataPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_AcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DescontoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_PagarKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_ParcelaKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_NDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLiquidarClick(Sender: TObject);
    procedure BtnAutenticaDocClick(Sender: TObject);
    procedure BtnProximoLancClick(Sender: TObject);
    procedure BtnCancelaEntradaClick(Sender: TObject);
    procedure BtnImprimirReciboClick(Sender: TObject);
    procedure BtnFechaEntradaClick(Sender: TObject);
    procedure ComboBoxFaturaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaEntrada: TFrmCaixaEntrada;

implementation

uses UnDm, UnCaixa, UnPrincipal, UnRelAltentica, UnRelRecibo;

{$R *.dfm}

procedure TFrmCaixaEntrada.ComboBoxFaturaChange(Sender: TObject);
begin
ComboBoxFatura.Text:= 'CARN�';
end;

procedure TFrmCaixaEntrada.MEdit_ValorPagarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
MEdit_DataPagamento.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.MEdit_DataPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
// VERIFICA SE � CARN�
if ComboBoxFatura.Text = 'CARN�' then
begin
if LimparDados = 1 then
begin
TotalAcrescimo:= 0;
Total:= 0;
ValorPendente:= 0;
ValorPago:= 0;
SituacaoParcela:= '';
Troco:= 0;
MEdit_Acrescimo.Text:= '';
Lab_ValorTotal.Caption:= 'R$ 0,00';
Lab_Troco.Caption:= 'R$ 0,00';
MEdit_ValorPagar.Text:= MEdit_ValorPagar.Text;
MEdit_DataPagamento.Text:= IBQuery_FaturaCarneDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaCarneNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaCarneNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaCarneCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaCarneNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+MEdit_ValorPagar.Text);
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaCarneDATA_VENCIMENTO.AsString);
end else
if MEdit_valorPagar.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
ValorAApagar:= StrToFloat(MEdit_ValorPagar.Text);
DtaVencimento:= StrToDate(MEdit_DataPagamento.Text);
// VERIFICA SE J� VENCEU
if DtaVencimento > Data then
begin
// SE N�O VENCEU N�O CALCULA A MULTA E O JURO
Dias:= 0;
Meses:= 0;
TotalJurosDia:= Dias * Dm.IBDS_EMPRESAJUROS.AsFloat;
ValorMultaMeses:= Meses * ValorAApagar;
Percentual1:= Dm.IBDS_EMPRESAMULTA.AsFloat / 100;
try
TotalMultaMes:= ValorMultaMeses * Percentual1;
finally
TotalAcrescimo:= TotalJurosDia + TotalMultaMes;
end;
MEdit_Acrescimo.Text:= FloatToStrF(TotalAcrescimo,ffFixed,18,2);
TotalComMJ:= ValorAApagar + TotalAcrescimo;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
REdit_Visualizar.Lines.Add('Pagamento: Antecipado');
LimparDados:= 1;
MEdit_Acrescimo.Enabled:= True;
MEdit_Acrescimo.SetFocus;
Exit;
end else

// SE J� VENCEU CALCULA A MULTA E O JURO DOS DIAS �TEIS
NumeroDeDias:= IntToStr(FrmCaixa.DifDateUtil(DateToStr(DtaVencimento), DateToStr(Data)));
NumeroDeMeses:= IntToStr(MonthsBetween(DtaVencimento, Data));
Dias:= StrToFloat(NumeroDeDias);
Meses:= StrToFloat(NumeroDeMeses);
TotalJurosDia:= Dias * Dm.IBDS_EMPRESAJUROS.AsFloat;
ValorMultaMeses:= Meses * ValorAApagar;
Percentual1:= Dm.IBDS_EMPRESAMULTA.AsFloat / 100;
try
TotalMultaMes:= ValorMultaMeses * Percentual1;
finally
TotalAcrescimo:= TotalJurosDia + TotalMultaMes;
end;
MEdit_Acrescimo.Text:= FloatToStrF(TotalAcrescimo,ffFixed,18,2);
TotalComMJ:= ValorAApagar + TotalAcrescimo;
Total:= TotalComMJ;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);

LimparDados:= 1;
MEdit_Acrescimo.Enabled:= True;
MEdit_Acrescimo.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CHEQUE' then
begin
if LimparDados = 1 then
begin
TotalAcrescimo:= 0;
Total:= 0;
ValorPendente:= 0;
ValorPago:= 0;
SituacaoParcela:= '';
Troco:= 0;
MEdit_Acrescimo.Text:= '';
Lab_ValorTotal.Caption:= 'R$ 0,00';
Lab_Troco.Caption:= 'R$ 0,00';
MEdit_ValorPagar.Text:= MEdit_ValorPagar.Text;
MEdit_DataPagamento.Text:= IBQuery_FaturaChequeDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaChequeNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaChequeNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaChequeCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaChequeNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+MEdit_ValorPagar.Text);
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaChequeDATA_VENCIMENTO.AsString);
end else
if MEdit_valorPagar.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
ValorAApagar:= StrToFloat(MEdit_ValorPagar.Text);
TotalComMJ:= ValorAApagar + TotalAcrescimo;
Total:= TotalComMJ;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
LimparDados:= 1;
MEdit_Acrescimo.Enabled:= True;
MEdit_Acrescimo.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CART�O' then
begin
if LimparDados = 1 then
begin
TotalAcrescimo:= 0;
Total:= 0;
ValorPendente:= 0;
ValorPago:= 0;
SituacaoParcela:= '';
Troco:= 0;
MEdit_Acrescimo.Text:= '';
Lab_ValorTotal.Caption:= 'R$ 0,00';
Lab_Troco.Caption:= 'R$ 0,00';
MEdit_ValorPagar.Text:= MEdit_ValorPagar.Text;
MEdit_DataPagamento.Text:= IBQuery_FaturaCartaoDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaCartaoNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaCartaoNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaCartaoCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaCartaoNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+MEdit_ValorPagar.Text);
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaCartaoDATA_VENCIMENTO.AsString);
end else
if MEdit_valorPagar.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
ValorAApagar:= StrToFloat(MEdit_ValorPagar.Text);
TotalComMJ:= ValorAApagar + TotalAcrescimo;
Total:= TotalComMJ;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
LimparDados:= 1;
MEdit_Acrescimo.Enabled:= True;
MEdit_Acrescimo.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'BOLETO' then
begin
if LimparDados = 1 then
begin
TotalAcrescimo:= 0;
Total:= 0;
ValorPendente:= 0;
ValorPago:= 0;
SituacaoParcela:= '';
Troco:= 0;
MEdit_Acrescimo.Text:= '';
Lab_ValorTotal.Caption:= 'R$ 0,00';
Lab_Troco.Caption:= 'R$ 0,00';
MEdit_ValorPagar.Text:= MEdit_ValorPagar.Text;
MEdit_DataPagamento.Text:= IBQuery_FaturaBoletoDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaBoletoNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaBoletoNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaBoletoCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaBoletoNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+MEdit_ValorPagar.Text);
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaBoletoDATA_VENCIMENTO.AsString);
end else
if MEdit_valorPagar.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
ValorAApagar:= StrToFloat(MEdit_ValorPagar.Text);
TotalComMJ:= ValorAApagar + TotalAcrescimo;
Total:= TotalComMJ;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
LimparDados:= 1;
MEdit_Acrescimo.Enabled:= True;
MEdit_Acrescimo.SetFocus;
end;
end;
end;

procedure TFrmCaixaEntrada.MEdit_AcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_Acrescimo.Text = '' then
begin
MEdit_Acrescimo.Text:= '0';
end else
MEdit_Acrescimo.Text:= floattostrf(StrToFloat(MEdit_Acrescimo.Text),ffFixed,18,2);
TotalAcrescimo:= StrToFloat(MEdit_Acrescimo.Text);
Total:= TotalComMJ + TotalAcrescimo;
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
MEdit_Desconto.Enabled:= True;
MEdit_Desconto.Text:= '0,00';
MEdit_Desconto.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.MEdit_DescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if LimparDados = 2 then
begin
LimparDados:= 1;
MEdit_Desconto.Text:= '';
MEdit_Desconto.Enabled:= False;
MEdit_Pagar.Text:= '';
MEdit_Pagar.Enabled:= False;
MEdit_Dinheiro.Text:= '';
MEdit_Dinheiro.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR CALCULOS');
MEdit_DataPagamento.SetFocus;
Exit;
end else
if MEdit_Desconto.Text = '' then
begin
MEdit_Desconto.Text:= '0';
end else
Total:= TotalComMJ + TotalAcrescimo - StrToFloat(MEdit_Desconto.Text);
Lab_ValorTotal.Caption:= 'R$ '+FloatToStrF(Total,ffFixed,18,2);
REdit_Visualizar.Lines.Add('Valor do Acrescimo: R$ '+FloatToStrF(StrToFloat(MEdit_Acrescimo.Text),ffFixed,18,2));
REdit_Visualizar.Lines.Add('Valor do Desconto: R$ '+FloatToStrF(StrToFloat(MEdit_Desconto.Text),ffFixed,18,2));
REdit_Visualizar.Lines.Add('Valor Total: R$ '+FloatToStrF(Total,ffFixed,18,2));
LimparDados:= 2;
MEdit_Desconto.Text:= floattostrf(StrToFloat(MEdit_Desconto.Text),ffFixed,18,2);
MEdit_Pagar.Enabled:= True;
MEdit_Pagar.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.MEdit_PagarKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if LimparDados = 3 then
begin
LimparDados:= 1;
MEdit_Desconto.Text:= '';
MEdit_Desconto.Enabled:= False;
MEdit_Pagar.Text:= '';
MEdit_Pagar.Enabled:= False;
MEdit_Dinheiro.Text:= '';
MEdit_Dinheiro.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR CALCULOS');
MEdit_DataPagamento.SetFocus;
Exit;
end else
if MEdit_Pagar.Text = '' then
begin
MEdit_Pagar.Text:= FloatToStrF(Total,ffFixed,18,2);
end else
ValorPendente:= Total - StrToFloat(MEdit_Pagar.Text);
ValorPago:= StrToFloat(MEdit_Pagar.Text);

REdit_Visualizar.Lines.Add('Valor Pago: R$ '+FloatToStrF(ValorPago,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Valor Restante: R$ '+FloatToStrF(ValorPendente,ffFixed,18,2));

LimparDados:= 3;
MEdit_Pagar.Text:= floattostrf(StrToFloat(MEdit_Pagar.Text),ffFixed,18,2);
MEdit_Dinheiro.Enabled:= True;
MEdit_Dinheiro.SetFocus;
if ValorPendente = 0 then
begin
SituacaoParcela:= 'LIQUIDADA';
Exit;
end else
SituacaoParcela:= 'EM ABERTO';
end;
end;

procedure TFrmCaixaEntrada.MEdit_DinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if LimparDados = 4 then
begin
LimparDados:= 1;
MEdit_Desconto.Text:= '';
MEdit_Desconto.Enabled:= False;
MEdit_Pagar.Text:= '';
MEdit_Pagar.Enabled:= False;
MEdit_Dinheiro.Text:= '';
MEdit_Dinheiro.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR CALCULOS');
MEdit_DataPagamento.SetFocus;
Exit;
end else
if MEdit_Dinheiro.Text = '' then
begin
MEdit_Dinheiro.Text:= FloatToStrF(ValorPago,ffFixed,18,2);
end else

Troco:= StrToFloat(MEdit_Dinheiro.Text) - ValorPago;
//Troco:= Troco;
Lab_Troco.Caption:= 'R$ '+FloatToStrF(Troco,ffFixed,18,2);

REdit_Visualizar.Lines.Add('Valor Recebido: R$ '+FloatToStrF(StrToFloat(MEdit_Dinheiro.Text),ffFixed,18,2));
REdit_Visualizar.Lines.Add('Valor do Troco: R$ '+FloatToStrF(Troco,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Pagamento: '+DatetoStr(Data));
MEdit_Dinheiro.Text:= floattostrf(StrToFloat(MEdit_Dinheiro.Text),ffFixed,18,2);
BtnLiquidar.Enabled:= True;
LimparDados:= 4;
BtnLiquidar.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.MEdit_ParcelaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','/',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxFatura.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
MEdit_Contrato.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.MEdit_ContratoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_Parcela.Text = '' then
begin
MEdit_Parcela.SetFocus;
Exit;
end else
if MEdit_Contrato.Text = '' then
begin
MEdit_Contrato.Text:= '';
MEdit_Contrato.SetFocus;
Exit;
end else
NumContrato:= MEdit_Contrato.Text;
NumParcela:= MEdit_Parcela.Text;
if ComboBoxFatura.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CHEQUE' then
begin
// captura  a parcela do cheque
IBQuery_FaturaCheque.Close;
IBQuery_FaturaCheque.SQL.Clear;
IBQuery_FaturaCheque.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA from CHEQUE ');
IBQuery_FaturaCheque.SQL.Add('where NUMERO_CONTRATO =:NContrato ');
IBQuery_FaturaCheque.SQL.Add('and NUMERO_PARCELA =:NParcela');
IBQuery_FaturaCheque.ParamByName('NContrato').AsString:= NumContrato;
IBQuery_FaturaCheque.ParamByName('NParcela').AsString:= NumParcela;
IBQuery_FaturaCheque.Open;
if (IBQuery_FaturaChequeNUMERO_CONTRATO.AsString = '') or (IBQuery_FaturaChequeNUMERO_PARCELA.AsString = '') then
begin
ShowMessage('N�mero da parcela ou do contrato inv�lido, tente novamente.'
+#10#10+'Ex.: Use: "1/1" e "0001"');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR ATIVIDADE');
MEdit_Parcela.SetFocus;
Exit;
end else
if IBQuery_FaturaChequeSITUACAO_PARCELA.AsString = 'LIQUIDADA' then
begin
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('             A PARCELA J� FOI LIQUIDADA');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_Parcela.SetFocus;
Exit;
end else
MEdit_ValorPagar.Text:= FloatToStrF(IBQuery_FaturaChequeVALOR_PARCELA.AsFloat,ffFixed,18,2);
MEdit_DataPagamento.Text:= IBQuery_FaturaChequeDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaChequeNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaChequeNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaChequeCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaChequeNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+FloatToStrF(IBQuery_FaturaChequeVALOR_PARCELA.AsFloat,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaChequeDATA_VENCIMENTO.AsString);
LimparDados:= 0;
MEdit_DataPagamento.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CART�O' then
begin
// captura  a parcela do cart�o
IBQuery_FaturaCartao.Close;
IBQuery_FaturaCartao.SQL.Clear;
IBQuery_FaturaCartao.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA from CARTAO ');
IBQuery_FaturaCartao.SQL.Add('where NUMERO_CONTRATO =:NContrato ');
IBQuery_FaturaCartao.SQL.Add('and NUMERO_PARCELA =:NParcela');
IBQuery_FaturaCartao.ParamByName('NContrato').AsString:= NumContrato;
IBQuery_FaturaCartao.ParamByName('NParcela').AsString:= NumParcela;
IBQuery_FaturaCartao.Open;
if (IBQuery_FaturaCartaoNUMERO_CONTRATO.AsString = '') or (IBQuery_FaturaCartaoNUMERO_PARCELA.AsString = '') then
begin
ShowMessage('N�mero da parcela ou do contrato inv�lido, tente novamente.'
+#10#10+'Ex.: Use: "1/1" e "0001"');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR ATIVIDADE');
MEdit_Parcela.SetFocus;
Exit;
end else
if IBQuery_FaturaCartaoSITUACAO_PARCELA.AsString = 'LIQUIDADA' then
begin
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('             A PARCELA J� FOI LIQUIDADA');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_Parcela.SetFocus;
Exit;
end else
MEdit_ValorPagar.Text:= FloatToStrF(IBQuery_FaturaCartaoVALOR_PARCELA.AsFloat,ffFixed,18,2);
MEdit_DataPagamento.Text:= IBQuery_FaturaCartaoDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaCartaoNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaCartaoNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaCartaoCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaCartaoNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+FloatToStrF(IBQuery_FaturaCartaoVALOR_PARCELA.AsFloat,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaCartaoDATA_VENCIMENTO.AsString);
LimparDados:= 0;
MEdit_DataPagamento.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'BOLETO' then
begin
// captura a parcela do boleto
IBQuery_FaturaBoleto.Close;
IBQuery_FaturaBoleto.SQL.Clear;
IBQuery_FaturaBoleto.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA, VALOR_PENDENTE from BOLETO ');
IBQuery_FaturaBoleto.SQL.Add('where NUMERO_CONTRATO =:NContrato ');
IBQuery_FaturaBoleto.SQL.Add('and NUMERO_PARCELA =:NParcela');
IBQuery_FaturaBoleto.ParamByName('NContrato').AsString:= NumContrato;
IBQuery_FaturaBoleto.ParamByName('NParcela').AsString:= NumParcela;
IBQuery_FaturaBoleto.Open;
if (IBQuery_FaturaBoletoNUMERO_CONTRATO.AsString = '') or (IBQuery_FaturaBoletoNUMERO_PARCELA.AsString = '') then
begin
ShowMessage('N�mero da parcela ou do contrato inv�lido, tente novamente.'
+#10#10+'Ex.: Use: "1/1" e "0001"');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR ATIVIDADE');
MEdit_Parcela.SetFocus;
Exit;
end else
if IBQuery_FaturaBoletoSITUACAO_PARCELA.AsString = 'LIQUIDADA' then
begin
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('             A PARCELA J� FOI LIQUIDADA');
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_Parcela.SetFocus;
Exit;
end else
MEdit_ValorPagar.Text:= FloatToStrF(IBQuery_FaturaBoletoVALOR_PARCELA.AsFloat,ffFixed,18,2);
MEdit_DataPagamento.Text:= IBQuery_FaturaBoletoDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaBoletoNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaBoletoNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaBoletoCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaBoletoNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+FloatToStrF(IBQuery_FaturaBoletoVALOR_PARCELA.AsFloat,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaBoletoDATA_VENCIMENTO.AsString);
LimparDados:= 0;
MEdit_DataPagamento.SetFocus;
end;
end;
end;

procedure TFrmCaixaEntrada.MEdit_NDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  if MEdit_NDocumento.Text = '' then
  begin
  MEdit_NDocumento.SetFocus;
  Exit;
  end else
MEdit_NDocumento.Text:= FrmPrincipal.ZeroEsquerda(strtoint(MEdit_NDocumento.Text), 16);
NumeroDoDoc:= MEdit_NDocumento.Text;
if ComboBoxFatura.Text = '' then
begin
ComboBoxFatura.SetFocus;
Exit;
end else
// captura  a parcela
IBQuery_FaturaCarne.Close;
IBQuery_FaturaCarne.SQL.Clear;
IBQuery_FaturaCarne.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_DOC, NUMERO_PARCELA, VALOR_PARCELA, VALOR_PAGO, VALOR_PENDENTE, SITUACAO_PARCELA from CARNE ');
IBQuery_FaturaCarne.SQL.Add('where NUMERO_DOC =:NumeroDoc');
IBQuery_FaturaCarne.ParamByName('NumeroDoc').AsString:= NumeroDoDoc;
IBQuery_FaturaCarne.Open;
if not IBQuery_FaturaCarne.Locate('NUMERO_DOC', NumeroDoDoc, []) then
begin
ShowMessage('N�mero de fatura inexistente, tente novamente.');
MEdit_NDocumento.Text:= '';
MEdit_NDocumento.SetFocus;
Exit;
end else
NumeroContrato:= IBQuery_FaturaCarneNUMERO_CONTRATO.AsString;
if IBQuery_FaturaCarneSITUACAO_PARCELA.AsString = 'LIQUIDADA' then
begin
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('             A PARCELA J� FOI LIQUIDADA');
MEdit_NDocumento.Text:= '';
MEdit_NDocumento.SetFocus;
Exit;
end else
if IBQuery_FaturaCarneVALOR_PENDENTE.AsFloat = 0 then
begin
MEdit_ValorPagar.Text:= FloatToStrF(IBQuery_FaturaCarneVALOR_PARCELA.AsFloat,ffFixed,18,2);
MEdit_DataPagamento.Text:= IBQuery_FaturaCarneDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaCarneNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaCarneNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaCarneCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaCarneNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor: R$ '+FloatToStrF(IBQuery_FaturaCarneVALOR_PARCELA.AsFloat,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaCarneDATA_VENCIMENTO.AsString);
LimparDados:= 0;
MEdit_DataPagamento.SetFocus;
Exit;
end else
MEdit_ValorPagar.Text:= FloatToStrF(IBQuery_FaturaCarneVALOR_PENDENTE.AsFloat,ffFixed,18,2);
MEdit_DataPagamento.Text:= IBQuery_FaturaCarneDATA_VENCIMENTO.AsString;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('PARCELA DO CONTRATO N� '+IBQuery_FaturaCarneNUMERO_CONTRATO.AsString);
REdit_Visualizar.Lines.Add('=======================================');
REdit_Visualizar.Lines.Add('Cliente: '+IBQuery_FaturaCarneNOME_CLIENTE.AsString);
REdit_Visualizar.Lines.Add('C�digo: '+IBQuery_FaturaCarneCODIGO.AsString);
REdit_Visualizar.Lines.Add('Parcela: '+IBQuery_FaturaCarneNUMERO_PARCELA.AsString);
REdit_Visualizar.Lines.Add('Valor Restante: R$ '+FloatToStrF(IBQuery_FaturaCarneVALOR_PENDENTE.AsFloat,ffFixed,18,2));
REdit_Visualizar.Lines.Add('Data Vencimento: '+IBQuery_FaturaCarneDATA_VENCIMENTO.AsString);
LimparDados:= 0;
MEdit_DataPagamento.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.BtnLiquidarClick(Sender: TObject);
var
Numero_Documento, Numero_Doc, Nosso_N: String;
begin
ComboBoxFatura.Enabled:= False;
MEdit_Parcela.Enabled:= False;
MEdit_Contrato.Enabled:= False;
MEdit_NDocumento.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Pagar.Enabled:= False;
MEdit_Dinheiro.Enabled:= False;
BtnCancelaEntrada.Enabled:= False;
BtnProximoLanc.Enabled:= True;
if ComboBoxFatura.Text = 'CARN�' then
begin
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
Dm.IBDS_CARNE.Locate('NUMERO_DOC', NumeroDoDoc, []);
Dm.IBDS_CARNE.Edit;
// liquida parcela
Dm.IBDS_CARNEACRESCIMO.AsFloat:= StrToFloat(MEdit_Acrescimo.Text);
Dm.IBDS_CARNEDESCONTO.AsFloat:= StrToFloat(MEdit_Desconto.Text);
Dm.IBDS_CARNEVALOR_APAGAR.AsFloat:= StrToFloat(MEdit_ValorPagar.Text) + StrToFloat(MEdit_Acrescimo.Text) -  StrToFloat(MEdit_Desconto.Text);
Dm.IBDS_CARNEVALOR_PAGO.AsFloat:= StrToFloat(MEdit_Pagar.Text);
Dm.IBDS_CARNEVALOR_PENDENTE.AsFloat:= Dm.IBDS_CARNEVALOR_APAGAR.AsFloat - StrToFloat(MEdit_Pagar.Text);
Dm.IBDS_CARNETOTAL_PAGO.AsFloat:= Dm.IBDS_CARNETOTAL_PAGO.AsFloat + StrToFloat(MEdit_Pagar.Text);
if Dm.IBDS_CARNEVALOR_PENDENTE.AsFloat = 0.00 then
begin
Dm.IBDS_CARNESITUACAO_PARCELA.AsString:= 'LIQUIDADA';
end else
Dm.IBDS_CARNESITUACAO_PARCELA.AsString:= 'EM ABERTO';
Dm.IBDS_CARNEDATA_PAGAMENTO.AsDateTime:= Data;
if Dm.IBDS_CARNEVALOR_PENDENTE.AsFloat <> 0.00 then
begin
Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime:= Data + 30;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
if Dm.IBDS_CARNEVALOR_PENDENTE.AsFloat <> 0.00 then
begin
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'P.C. PARC. '+IBQuery_FaturaCarneNUMERO_PARCELA.AsString+ ' CARN. CNT. '+IBQuery_FaturaCarneNUMERO_CONTRATO.AsString+'-'+IBQuery_FaturaCarneNOME_CLIENTE.AsString;
BtnAutenticaDoc.Enabled:= False;
end else
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'LIQ. PARC. '+IBQuery_FaturaCarneNUMERO_PARCELA.AsString+ ' CARN. CNT. '+IBQuery_FaturaCarneNUMERO_CONTRATO.AsString+'-'+IBQuery_FaturaCarneNOME_CLIENTE.AsString;
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NumeroContrato;
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= NumeroDoDoc;
Dm.IBDS_AENTRADANUMERO_PARCELA.AsString:= IBQuery_FaturaCarneNUMERO_PARCELA.AsString;
Dm.IBDS_AENTRADAVALOR.AsFloat:= ValorPago;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnLiquidar.Enabled:= False;
BtnImprimirRecibo.Enabled:= True;
if ValorPendente <> 0 then
begin
BtnAutenticaDoc.Enabled:= False;
BtnImprimirRecibo.SetFocus;
Exit;
end else
BtnAutenticaDoc.Enabled:= True;
BtnAutenticaDoc.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CHEQUE' then
begin
Dm.IBDS_CHEQUE.Close;
Dm.IBDS_CHEQUE.Open;
if (Dm.IBDS_CHEQUE.Locate('NUMERO_CONTRATO', NumContrato, [])) and (Dm.IBDS_CHEQUE.Locate('NUMERO_PARCELA', NumParcela, [])) then
Dm.IBDS_CHEQUE.Edit;
// liquida parcela do cheque
Dm.IBDS_CHEQUESITUACAO_PARCELA.AsString:= 'LIQUIDADA';
if FrmCaixa.ObterDataPagamento(Data_Pago) then
if Data_Pago = '  /  /    ' then
begin
Dm.IBDS_CHEQUEDATA_PAGAMENTO.AsDateTime:= Data;
end else
Dm.IBDS_CHEQUEDATA_PAGAMENTO.AsString:= Data_Pago;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CHEQUE.Post;
Dm.IBDS_CHEQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
BtnAutenticaDoc.Enabled:= False;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'LIQUIDA��O DE PARCELA FINANCIADO NO CHEQUE';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NumContrato;
Dm.IBDS_AENTRADANUMERO_PARCELA.AsString:= NumParcela;
Dm.IBDS_AENTRADAVALOR.AsFloat:= ValorPago;
if FrmCaixa.ObterNumero(Numero_Documento) then
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= Numero_Documento;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnLiquidar.Enabled:= False;
BtnImprimirRecibo.Enabled:= False;
BtnProximoLanc.Enabled:= True;
BtnProximoLanc.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'CART�O' then
begin
Dm.IBDS_CARTAO.Close;
Dm.IBDS_CARTAO.Open;
if (Dm.IBDS_CARTAO.Locate('NUMERO_CONTRATO', NumContrato, [])) and (Dm.IBDS_CARTAO.Locate('NUMERO_PARCELA', NumParcela, [])) then
Dm.IBDS_CARTAO.Edit;
// liquida parcela do cart�o
Dm.IBDS_CARTAOSITUACAO_PARCELA.AsString:= 'LIQUIDADA';
if FrmCaixa.ObterDataPagamento(Data_Pago) then
if Data_Pago = '  /  /    ' then
begin
Dm.IBDS_CARTAODATA_PAGAMENTO.AsDateTime:= Data;
end else
Dm.IBDS_CARTAODATA_PAGAMENTO.AsString:= Data_Pago;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARTAO.Post;
Dm.IBDS_CARTAO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
BtnAutenticaDoc.Enabled:= False;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'LIQUIDA��O DE PARCELA FINANCIADO NO CART�O';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NumContrato;
Dm.IBDS_AENTRADANUMERO_PARCELA.AsString:= NumParcela;
Dm.IBDS_AENTRADAVALOR.AsFloat:= ValorPago;
if FrmCaixa.ObterNumero(Numero_Documento) then
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= Numero_Documento;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnLiquidar.Enabled:= False;
BtnImprimirRecibo.Enabled:= False;
BtnProximoLanc.Enabled:= True;
BtnProximoLanc.SetFocus;
Exit;
end else
if ComboBoxFatura.Text = 'BOLETO' then
begin
Dm.IBDS_BOLETO.Close;
Dm.IBDS_BOLETO.Open;
if (Dm.IBDS_BOLETO.Locate('NUMERO_CONTRATO', NumContrato, [])) and (Dm.IBDS_BOLETO.Locate('NUMERO_PARCELA', NumParcela, [])) then
Dm.IBDS_BOLETO.Edit;

Dm.IBDS_BOLETOACRESCIMO.AsFloat:= StrToFloat(MEdit_Acrescimo.Text);
Dm.IBDS_BOLETODESCONTO.AsFloat:= StrToFloat(MEdit_Desconto.Text);
Dm.IBDS_BOLETOVALOR_APAGAR.AsFloat:= StrToFloat(MEdit_ValorPagar.Text) + StrToFloat(MEdit_Acrescimo.Text) -  StrToFloat(MEdit_Desconto.Text);
Dm.IBDS_BOLETOVALOR_PAGO.AsFloat:= StrToFloat(MEdit_Pagar.Text);
Dm.IBDS_BOLETOVALOR_PENDENTE.AsFloat:= Dm.IBDS_BOLETOVALOR_APAGAR.AsFloat - StrToFloat(MEdit_Pagar.Text);
Dm.IBDS_BOLETOTOTAL_PAGO.AsFloat:= Dm.IBDS_BOLETOTOTAL_PAGO.AsFloat + StrToFloat(MEdit_Pagar.Text);
if Dm.IBDS_BOLETOVALOR_PENDENTE.AsFloat = 0.00 then
begin
Dm.IBDS_BOLETOSITUACAO_PARCELA.AsString:= 'LIQUIDADA';
end else
Dm.IBDS_BOLETOSITUACAO_PARCELA.AsString:= 'EM ABERTO';
if FrmCaixa.ObterDataPagamento(Data_Pago) then
if Data_Pago = '  /  /    ' then
begin
Dm.IBDS_BOLETODATA_PAGAMENTO.AsDateTime:= Data;
end else
Dm.IBDS_BOLETODATA_PAGAMENTO.AsString:= Data_Pago;
if Dm.IBDS_BOLETOVALOR_PENDENTE.AsFloat <> 0.00 then
begin
Dm.IBDS_BOLETODATA_VENCIMENTO.AsDateTime:= Data + 30;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_BOLETO.Post;
Dm.IBDS_BOLETO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;

if Dm.IBDS_BOLETOVALOR_PENDENTE.AsFloat <> 0.00 then
begin
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'P.C. PARC. '+IBQuery_FaturaBoletoNUMERO_PARCELA.AsString+ ' BOLE. CNT. '+IBQuery_FaturaBoletoNUMERO_CONTRATO.AsString+'-'+IBQuery_FaturaBoletoNOME_CLIENTE.AsString;
BtnAutenticaDoc.Enabled:= False;
end else
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'LIQ. PARC. '+IBQuery_FaturaBoletoNUMERO_PARCELA.AsString+ ' BOLE. CNT. '+IBQuery_FaturaBoletoNUMERO_CONTRATO.AsString+'-'+IBQuery_FaturaBoletoNOME_CLIENTE.AsString;

Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NumContrato;
Dm.IBDS_AENTRADANUMERO_PARCELA.AsString:= NumParcela;
Dm.IBDS_AENTRADAVALOR.AsFloat:= ValorPago;
if FrmCaixa.ObterNumeros(Numero_Doc, Nosso_N) then
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= Numero_Doc;
Dm.IBDS_AENTRADANOSSO_NUMERO.AsString:= Nosso_N;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnLiquidar.Enabled:= False;
BtnImprimirRecibo.Enabled:= False;
BtnProximoLanc.Enabled:= True;
BtnProximoLanc.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.BtnAutenticaDocClick(Sender: TObject);
begin
if FrmRelAltentica <> Nil then Exit;
FrmRelAltentica := TFrmRelAltentica.Create(self);
FrmRelAltentica.QuickRep1.Print;
FrmRelAltentica.Free;
FrmRelAltentica := Nil;
end;

procedure TFrmCaixaEntrada.BtnProximoLancClick(Sender: TObject);
begin
BtnImprimirRecibo.Enabled:= False;
BtnAutenticaDoc.Enabled:= False;
BtnCancelaEntrada.Enabled:= True;
ComboBoxFatura.Enabled:= True;
ComboBoxFatura.Text:= '';
MEdit_ValorPagar.Text:= '';
MEdit_DataPagamento.Text:= '';
MEdit_Dinheiro.Text:= '';
MEdit_Pagar.Text:= '';
MEdit_Acrescimo.Text:= '';
MEdit_Desconto.Text:= '';
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_NDocumento.Text:= '';
MEdit_Parcela.Enabled:= False;
MEdit_Contrato.Enabled:= False;
MEdit_NDocumento.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                       PR�XIMO LAN�AMENTO');
MEdit_Acrescimo.Text:= '';
Lab_Troco.Caption:= 'R$ 0,00';
Lab_ValorTotal.Caption:= 'R$ 0,00';
BtnProximoLanc.Enabled:= False;
ComboBoxFatura.SetFocus;
end;

procedure TFrmCaixaEntrada.BtnCancelaEntradaClick(Sender: TObject);
begin
// Inicia o cancelamento da Entrada
if MessageBox(0,'Voc� tem certeza que deseja cancelar o lan�amento atual?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
BtnLiquidar.Enabled:= False;
BtnImprimirRecibo.Enabled:= False;
BtnAutenticaDoc.Enabled:= False;
BtnCancelaEntrada.Enabled:= True;
ComboBoxFatura.Enabled:= True;
ComboBoxFatura.Text:= '';
MEdit_ValorPagar.Text:= '';
MEdit_DataPagamento.Text:= '';
MEdit_Dinheiro.Text:= '';
MEdit_Pagar.Text:= '';
MEdit_Desconto.Text:= '';
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_NDocumento.Text:= '';
MEdit_Parcela.Enabled:= False;
MEdit_Contrato.Enabled:= False;
MEdit_NDocumento.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                     LAN�AMENTO CANCELADO');
MEdit_Acrescimo.Text:= '';
Lab_Troco.Caption:= 'R$ 0,00';
Lab_ValorTotal.Caption:= 'R$ 0,00';
BtnProximoLanc.Enabled:= False;
ComboBoxFatura.SetFocus;
Exit;
end else
ComboBoxFatura.SetFocus;
end;

procedure TFrmCaixaEntrada.BtnImprimirReciboClick(Sender: TObject);
begin
if FrmRelRecibo <> Nil then Exit;
FrmRelRecibo := TFrmRelRecibo.Create(self);
FrmRelRecibo.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelRecibo.QuickRep1.Preview;
FrmRelRecibo.Free;
FrmRelRecibo := Nil;
BtnProximoLanc.SetFocus;
end;

procedure TFrmCaixaEntrada.BtnFechaEntradaClick(Sender: TObject);
begin
if BtnLiquidar.Enabled = False then
begin
BtnImprimirRecibo.Enabled:= False;
BtnAutenticaDoc.Enabled:= False;
BtnCancelaEntrada.Enabled:= True;
ComboBoxFatura.Enabled:= True;
ComboBoxFatura.Text:= '';
MEdit_ValorPagar.Text:= '';
MEdit_DataPagamento.Text:= '';
MEdit_Dinheiro.Text:= '';
MEdit_Pagar.Text:= '';
MEdit_Desconto.Text:= '';
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_NDocumento.Text:= '';
MEdit_Parcela.Enabled:= False;
MEdit_Contrato.Enabled:= False;
MEdit_NDocumento.Enabled:= False;
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                     LAN�AMENTO FINALIZADO');
MEdit_Acrescimo.Text:= '';
Lab_Troco.Caption:= 'R$ 0,00';
Lab_ValorTotal.Caption:= 'R$ 0,00';
BtnProximoLanc.Enabled:= False;
FrmCaixa.SbFecha.Enabled:= True;
FrmCaixa.ComboBoxOpcao.Enabled:= True;
FrmCaixa.ComboBoxOpcao.Text:= '';
FrmCaixa.SbNovo.Enabled:= True;
FrmCaixa.SbNovo.Caption:= 'No&vo Lan�amento';
FrmCaixa.ComboBoxOpcao.SetFocus;
FrmCaixa.Panel_CaixaLivre1.Visible:= True;
iOK := 625;
Close;
Exit;
end else
ShowMessage('� obrigat�rio confirmar liquida��o ou cancelar o lan�amento atual.');
BtnLiquidar.SetFocus;
end;

procedure TFrmCaixaEntrada.ComboBoxFaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxFatura.Text = '' then
begin
ComboBoxFatura.Text:= 'CARN�';
end else
MEdit_ValorPagar.Text:= '';
MEdit_DataPagamento.Text:= '';
MEdit_Dinheiro.Text:= '';
MEdit_Desconto.Text:= '';
MEdit_Pagar.Text:= '';
MEdit_Parcela.Text:= '';
MEdit_Contrato.Text:= '';
MEdit_NDocumento.Text:= '';
REdit_Visualizar.Text:= '';
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('');
REdit_Visualizar.Lines.Add('                            INICIAR ATIVIDADE');
MEdit_Acrescimo.Text:= '';
Lab_Troco.Caption:= 'R$ 0,00';
Lab_ValorTotal.Caption:= 'R$ 0,00';
if ComboBoxFatura.Text = 'CARN�' then
begin
MEdit_Parcela.Text:= '';
MEdit_Parcela.Enabled:= False;
MEdit_Contrato.Text:= '';
MEdit_Contrato.Enabled:= False;
MEdit_NDocumento.Enabled:= True;
MEdit_NDocumento.Text:= '';
MEdit_NDocumento.SetFocus;
Exit;
end else
MEdit_Parcela.Enabled:= True;
MEdit_Parcela.Text:= '';
MEdit_Contrato.Enabled:= True;
MEdit_Contrato.Text:= '';
MEdit_NDocumento.Text:= '';
MEdit_NDocumento.Enabled:= False;
MEdit_Parcela.SetFocus;
end;
end;

procedure TFrmCaixaEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK := 624;
end;

end.
