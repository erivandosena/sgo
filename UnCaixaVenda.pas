unit UnCaixaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, ComCtrls, Buttons, Mask,
  ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFrmCaixaVenda = class(TForm)
    Panel_Movimentacao: TPanel;
    Label_ValorVenda: TLabel;
    Label73: TLabel;
    Label_VAcrescimo: TLabel;
    Label_VDesconto: TLabel;
    Label76: TLabel;
    Label79: TLabel;
    Label_ValorTotal: TLabel;
    Label14: TLabel;
    Label_VEntrada: TLabel;
    Label16: TLabel;
    Label_VFinanciado: TLabel;
    Label77: TLabel;
    Label_VParcela: TLabel;
    Label69: TLabel;
    Label_VTipoVenda: TLabel;
    Label81: TLabel;
    Label_VFormaFatura: TLabel;
    Label83: TLabel;
    Label_VOpcaoPagamento: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label_VA: TMaskEdit;
    Label17: TLabel;
    Label_VD: TMaskEdit;
    Label13: TLabel;
    MaskEdit_Entrada: TMaskEdit;
    Label75: TLabel;
    ComboBox_Fracao: TComboBox;
    Label68: TLabel;
    MaskEdit_Vencimento: TMaskEdit;
    BtnCalculo: TBitBtn;
    BtnGera: TBitBtn;
    Bevel8: TBevel;
    DBGrid_Parcelas: TDBGrid;
    DBGrid_Itens: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel6: TBevel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    MaskEdit1: TDBEdit;
    MaskEdit2: TDBEdit;
    MaskEdit3: TDBEdit;
    MaskEdit4: TDBEdit;
    MaskEdit15: TDBEdit;
    MaskEdit16: TDBEdit;
    MaskEdit17: TDBEdit;
    MaskEdit18: TDBEdit;
    MaskEdit19: TDBEdit;
    MaskEdit20: TDBEdit;
    MaskEdit21: TDBEdit;
    MaskEdit22: TDBEdit;
    MaskEdit23: TDBEdit;
    MaskEdit24: TDBEdit;
    TabSheet2: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label63: TLabel;
    MaskEdit8: TDBEdit;
    MaskEdit5: TDBEdit;
    MaskEdit6: TDBEdit;
    MaskEdit7: TDBEdit;
    MaskEdit9: TDBEdit;
    MaskEdit10: TDBEdit;
    MaskEdit11: TDBEdit;
    MaskEdit12: TDBEdit;
    MaskEdit13: TDBEdit;
    MaskEdit14: TDBEdit;
    MaskEdit25: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Memo1: TDBMemo;
    BtnImprimir: TBitBtn;
    BtnReciboVenda: TBitBtn;
    BtnImprimirContrato: TBitBtn;
    BtnFinalizar: TBitBtn;
    Ds_ParcGeradas: TDataSource;
    IBQuery_ParcGeradas: TIBQuery;
    IBQuery_ImprimeCarne: TIBQuery;
    IBQuery_ImprimeCarneCOD_CARN: TIntegerField;
    IBQuery_ImprimeCarneNUMERO_DOC: TIBStringField;
    IBQuery_ImprimeCarneNUMERO_CONTRATO: TIBStringField;
    IBQuery_ImprimeCarneNOME_CLIENTE: TIBStringField;
    IBQuery_ImprimeCarneCODIGO: TIBStringField;
    IBQuery_ImprimeCarneACRESCIMO: TIBBCDField;
    IBQuery_ImprimeCarneDESCONTO: TIBBCDField;
    IBQuery_ImprimeCarneVALOR_PARCELA: TIBBCDField;
    IBQuery_ImprimeCarneVALOR_PAGO: TIBBCDField;
    IBQuery_ImprimeCarneVALOR_PENDENTE: TIBBCDField;
    IBQuery_ImprimeCarneDATA_VENCIMENTO: TDateTimeField;
    IBQuery_ImprimeCarneQUANT_PARCELAS: TIBStringField;
    IBQuery_ImprimeCarneNUMERO_PARCELA: TIBStringField;
    IBQuery_ImprimeCarneSITUACAO_PARCELA: TIBStringField;
    BtnCancelar: TBitBtn;
    procedure Label_VAExit(Sender: TObject);
    procedure Label_VAKeyPress(Sender: TObject; var Key: Char);
    procedure Label_VDExit(Sender: TObject);
    procedure Label_VDKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_EntradaExit(Sender: TObject);
    procedure MaskEdit_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_FracaoChange(Sender: TObject);
    procedure ComboBox_FracaoExit(Sender: TObject);
    procedure ComboBox_FracaoKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_VencimentoExit(Sender: TObject);
    procedure MaskEdit_VencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCalculoClick(Sender: TObject);
    procedure BtnGeraClick(Sender: TObject);
    procedure DBGrid_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_ItensDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnReciboVendaClick(Sender: TObject);
    procedure BtnImprimirContratoClick(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaVenda: TFrmCaixaVenda;

implementation

uses UnDm, UnCaixa, UnPrincipal, UnRelCarne, UnRelReciboVA, UnRelRecibo,
  UnRelComprovante;

{$R *.dfm}

procedure TFrmCaixaVenda.Label_VAExit(Sender: TObject);
begin
if (Label_VA.Text = '') or (Label_VA.Text = '0') then
begin
Label_VA.Text:= '0,00';
end;
end;

procedure TFrmCaixaVenda.Label_VAKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if (Label_VA.Text = '') or (Label_VA.Text = '0') then
begin
Label_VA.Text:= '0,00';
end else
Label_VA.Text:= FloatToStrF(StrToFloat(Label_VA.Text),FfFixed,18,2);
AcrescimoVV:= StrToFloat(Label_VA.Text);
Label_VD.SetFocus;
end;
end;

procedure TFrmCaixaVenda.Label_VDExit(Sender: TObject);
begin
if (Label_VD.Text = '') or (Label_VD.Text = '0') then
begin
Label_VD.Text:= '0,00';
end;
end;

procedure TFrmCaixaVenda.Label_VDKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if (Label_VD.Text = '') or (Label_VD.Text = '0') then
begin
Label_VD.Text:= '0,00';
end else
Label_VD.Text:= FloatToStrF(StrToFloat(Label_VD.Text),FfFixed,18,2);
DescontoVV:= StrToFloat(Label_VD.Text);
if TipoVenda = 'Á VISTA' then
begin
MaskEdit_Entrada.Enabled:= False;
ComboBox_Fracao.Enabled:= False;
MaskEdit_Vencimento.Enabled:= False;
DescontoVV:= StrToFloat(Label_VD.Text);
BtnCalculo.Enabled:= True;
BtnCalculo.SetFocus;
Exit;
end else
MaskEdit_Entrada.Enabled:= True;
ComboBox_Fracao.Enabled:= True;
MaskEdit_Vencimento.Enabled:= True;
MaskEdit_Entrada.SetFocus;
DescontoVV:= StrToFloat(Label_VD.Text);
MaskEdit_Entrada.SetFocus;
end;
end;

procedure TFrmCaixaVenda.MaskEdit_EntradaExit(Sender: TObject);
begin
if (MaskEdit_Entrada.Text = '') or (MaskEdit_Entrada.Text = '0') then
begin
MaskEdit_Entrada.Text:= '0,00';
end;
end;

procedure TFrmCaixaVenda.MaskEdit_EntradaKeyPress(Sender: TObject;
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
if (MaskEdit_Entrada.Text = '') or (MaskEdit_Entrada.Text = '0') then
begin
MaskEdit_Entrada.Text:= '0,00';
end else
MaskEdit_Entrada.Text:= FloatToStrF(StrToFloat(MaskEdit_Entrada.Text),FfFixed,18,2);
VEntrada:= StrToFloat(MaskEdit_Entrada.Text);
if OpcaoVenda = 'COM ENTRADA' then
begin
ComboBox_Fracao.Text:= FloatToStr(Fracao - 1);
end else
ComboBox_Fracao.Text:= FloatToStr(Fracao);
if OpcaoVenda = 'SEM ENTRADA' then
begin
MaskEdit_Entrada.Text:= FormatFloat('#,##0.00', 0);
end else
ComboBox_Fracao.Enabled:= True;
ComboBox_Fracao.SetFocus;
end;
end;

procedure TFrmCaixaVenda.ComboBox_FracaoChange(Sender: TObject);
begin
if (ComboBox_Fracao.Text = '') or (ComboBox_Fracao.Text = '0') then
begin
ComboBox_Fracao.Text:= '1';
end else
Fracao:= StrToInt(ComboBox_Fracao.Text);
SubTotal:= ValorVenda + AcrescimoVV - DescontoVV;
VFinanciado:= SubTotal - VEntrada;
VDParcela:= VFinanciado / Fracao;
Label77.Visible:= True;
Label77.Caption:= ComboBox_Fracao.Text+' Parcela(s) de:';
Label_VParcela.Visible:= True;
Label_VParcela.Caption:= FormatFloat('#,##0.00', VDParcela);
end;

procedure TFrmCaixaVenda.ComboBox_FracaoExit(Sender: TObject);
begin
if (ComboBox_Fracao.Text = '') or (ComboBox_Fracao.Text = '0') then
begin
ComboBox_Fracao.Text:= '1';
Fracao:= StrToInt(ComboBox_Fracao.Text);
end else
Fracao:= StrToInt(ComboBox_Fracao.Text);
end;

procedure TFrmCaixaVenda.ComboBox_FracaoKeyPress(Sender: TObject;
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
ComboBox_FracaoChange(Nil);
MaskEdit_Vencimento.SetFocus;
end;
end;

procedure TFrmCaixaVenda.MaskEdit_VencimentoExit(Sender: TObject);
begin
try
StrToDate(MaskEdit_Vencimento.Text);
except
on EConvertError do begin
ShowMessage ('Data inválida.');
MaskEdit_Vencimento.SetFocus;
Exit;
end;
end;
end;

procedure TFrmCaixaVenda.MaskEdit_VencimentoKeyPress(Sender: TObject;
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
if (MaskEdit_Vencimento.Text = '  /  /    ') then
begin
MaskEdit_Vencimento.Text:= DateToStr(IncMonth(StrToDateTime(DataVenda), 1));
BtnCalculo.Enabled:= True;
BtnCalculo.SetFocus;
Exit;
end else
BtnCalculo.Enabled:= True;
BtnCalculo.SetFocus;
end;
end;

procedure TFrmCaixaVenda.BtnCalculoClick(Sender: TObject);
begin
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
SubTotal:= ValorVenda + AcrescimoVV - DescontoVV;
if TipoVenda = 'Á VISTA' then
begin
//Á VISTA
VEntrada:= StrToFloat(FormatFloat('#,##0.00', 0));
VFinanciado:= StrToFloat(FormatFloat('#,##0.00', 0));
VDParcela:= StrToFloat(FormatFloat('#,##0.00', 0));
Label_VAcrescimo.Caption:= FormatFloat('#,##0.00', AcrescimoVV);
Label_VDesconto.Caption:= FormatFloat('#,##0.00', DescontoVV);
Label79.Caption:= 'Valor Total '+TipoVenda+':';
Label_ValorTotal.Caption:= FormatFloat('#,##0.00', SubTotal);
Label14.Visible:= False;
Label_VEntrada.Visible:= False;
Label16.Visible:= False;
Label_VFinanciado.Visible:= False;
Label77.Visible:= False;
Label_VParcela.Visible:= False;
Label_VTipoVenda.Caption:= TipoVenda;
Label_VFormaFatura.Caption:= FormaVenda;
Label83.Visible:= False;
Label_VOpcaoPagamento.Visible:= False;
// SALVA VENDAS
Dm.IBDS_VENDASACRESCIMO.AsString:= FloatToStr(AcrescimoVV);
Dm.IBDS_VENDASDESCONTO.AsString:= FloatToStr(DescontoVV);
Dm.IBDS_VENDASVALOR_TOTAL.AsString:= FloatToStr(SubTotal);
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
FrmCaixa.IBQuery_VE.Close;
FrmCaixa.IBQuery_VE.SQL.Clear;
FrmCaixa.IBQuery_VE.SQL.Add('select FORMA_VENDA, NOME_CLIENTE, CODIGO, NUMERO_CONTRATO, TIPO_VENDA,  DESCONTO, SUB_TOTAL, VALOR_TOTAL, NOME_MEDICO, NOME_VENDEDOR, ACRESCIMO, DESCONTO from VENDAS ');
FrmCaixa.IBQuery_VE.SQL.Add('where NUMERO_CONTRATO =:NC');
FrmCaixa.IBQuery_VE.ParamByName('NC').AsString:= NC;
FrmCaixa.IBQuery_VE.Open;
BtnGera.Enabled:= True;
BtnCalculo.Enabled:= False;
BtnGera.Caption:= 'Gerar Venda: '+TipoVenda;
BtnGera.SetFocus;
Exit;
end else
// A PRAZO
if (MaskEdit_Entrada.Text = '0') or (MaskEdit_Entrada.Text = '0,00') and (OpcaoVenda = 'COM ENTRADA') then
begin
ShowMessage('Informe o valor da entrada.');
MaskEdit_Entrada.SetFocus;
Exit;
end else
If (ComboBox_Fracao.Text = '') or (ComboBox_Fracao.Text = '0,00') and (OpcaoVenda = 'COM ENTRADA') then
begin
ShowMessage('Informe o número de parcelas.');
ComboBox_Fracao.SetFocus;
Exit;
end else
VFinanciado:= SubTotal - VEntrada;
VDParcela:= VFinanciado / Fracao;
NumeroDeParcelas:= Fracao;
Label_VAcrescimo.Caption:= FormatFloat('#,##0.00', AcrescimoVV);
Label_VDesconto.Caption:= FormatFloat('#,##0.00', DescontoVV);
Label79.Caption:= 'Valor Total:';
Label_ValorTotal.Caption:= FormatFloat('#,##0.00', SubTotal);
Label14.Visible:= True;
Label_VEntrada.Visible:= True;
Label_VEntrada.Caption:= FormatFloat('#,##0.00', VEntrada);
Label16.Visible:= True;
Label_VFinanciado.Visible:= True;
Label_VFinanciado.Caption:= FormatFloat('#,##0.00', VFinanciado);
Label77.Visible:= True;
Label_VParcela.Visible:= True;
Label_VParcela.Caption:= FormatFloat('#,##0.00', VDParcela);
Label_VTipoVenda.Caption:= TipoVenda;
Label_VFormaFatura.Caption:= FormaVenda;
Label83.Visible:= True;
Label_VOpcaoPagamento.Visible:= True;
if OpcaoVenda = 'COM ENTRADA' then
begin
Label_VOpcaoPagamento.Caption:= 'C. / E.';
end else
Label_VOpcaoPagamento.Caption:= 'S. / E.';
// SALVA VENDAS
Dm.IBDS_VENDASOPCAO_VENDA.AsString:= OpcaoVenda;
Dm.IBDS_VENDASACRESCIMO.AsString:= FloatToStr(AcrescimoVV);
Dm.IBDS_VENDASDESCONTO.AsString:= FloatToStr(DescontoVV);
Dm.IBDS_VENDASVALOR_TOTAL.AsString:= FloatToStr(SubTotal);
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
FrmCaixa.IBQuery_VE.Close;
FrmCaixa.IBQuery_VE.SQL.Clear;
FrmCaixa.IBQuery_VE.SQL.Add('select FORMA_VENDA, NOME_CLIENTE, CODIGO, NUMERO_CONTRATO, TIPO_VENDA,  DESCONTO, SUB_TOTAL, VALOR_TOTAL, NOME_MEDICO, NOME_VENDEDOR, ACRESCIMO, DESCONTO from VENDAS ');
FrmCaixa.IBQuery_VE.SQL.Add('where NUMERO_CONTRATO =:NC');
FrmCaixa.IBQuery_VE.ParamByName('NC').AsString:= NC;
FrmCaixa.IBQuery_VE.Open;
BtnGera.Enabled:= True;
BtnCalculo.Enabled:= False;
BtnGera.Caption:= 'Gerar Venda: '+TipoVenda;
// A PRAZO CARNÊ
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CARNÊ') then
begin
// Verifica se o carnê foi gerado
if Geradas = '' then
begin
BtnGera.SetFocus;
Exit;
end else
// Apaga o carnê existente
ShowMessage('As parcelas geradas serão excluídas.');
// Apaga as parcelas do carnê
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CARNE ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
BtnGera.Caption:= 'Gerar Venda';
BtnGera.Enabled:= False;
IBQuery_ParcGeradas.Close;
Geradas:= '';
Label_VA.SetFocus;
Exit;
end else
// A PRAZO CHEQUE
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CHEQUE') then
begin
// Verifica se as parcelas do cheque foi geradas
if Geradas = '' then
begin
BtnGera.SetFocus;
Exit;
end else
// Apaga o cheque existente
ShowMessage('As parcelas geradas serão excluídas.');
// Apaga as parcelas do cheque
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CHEQUE ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
BtnGera.Caption:= 'Gerar Venda';
BtnGera.Enabled:= False;
IBQuery_ParcGeradas.Close;
Geradas:= '';
Label_VA.SetFocus;
Exit;
end else
//A PRAZO CARTÃO
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CARTÃO') then
begin
// Verifica se as parcelas do cartão foi geradas
if Geradas = '' then
begin
BtnGera.SetFocus;
Exit;
end else
// Apaga o cartão existente
ShowMessage('As parcelas geradas serão excluídas.');
// Apaga as parcelas do cartão
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CARTAO ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
BtnGera.Caption:= 'Gerar Venda';
BtnGera.Enabled:= False;
IBQuery_ParcGeradas.Close;
Geradas:= '';
Label_VA.SetFocus;
Exit;
end else
// A PRAZO BOLETO
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'BOLETO BANCÁRIO') then
begin
// Verifica se as parcelas do boleto foi geradas
if Geradas = '' then
begin
BtnGera.SetFocus;
Exit;
end else
// Apaga o boleto existente
ShowMessage('As parcelas geradas serão excluídas.');
// Apaga as parcelas do cartão
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from BOLETO ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
BtnGera.Caption:= 'Gerar Venda';
BtnGera.Enabled:= False;
IBQuery_ParcGeradas.Close;
Geradas:= '';
Label_VA.SetFocus;
end;
end;

procedure TFrmCaixaVenda.BtnGeraClick(Sender: TObject);
var
Numero_Documento: String;
i: Integer;
begin
BtnCalculo.Enabled:= True;
// VERIFICFA SE É VENDA Á VISTA
if (TipoVenda = 'Á VISTA') and (FormaVenda = 'DINHEIRO') then
begin
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'VENDA Á VISTA NO DINHEIRO';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NC;
Dm.IBDS_AENTRADAVALOR.AsFloat:= SubTotal;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
Panel_Movimentacao.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnReciboVenda.Enabled:= True;
BtnReciboVenda.Caption:= 'Imprimir (RECIBO)';
BtnReciboVenda.SetFocus;
Exit;
end else
if (TipoVenda = 'Á VISTA') and (FormaVenda = 'CHEQUE') then
begin
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'VENDA Á VISTA NO CHEQUE';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NC;
Dm.IBDS_AENTRADAVALOR.AsFloat:= SubTotal;
if FrmCaixa.ObterNumero(Numero_Documento) then
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= Numero_Documento;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
Panel_Movimentacao.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnReciboVenda.Enabled:= True;
BtnReciboVenda.Caption:= 'Imprimir (RECIBO)';
BtnReciboVenda.SetFocus;
Exit;
end else
if (TipoVenda = 'Á VISTA') and (FormaVenda = 'CARTÃO') then
begin
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data + 30;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'VENDA Á VISTA NO CARTÃO';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NC;
Dm.IBDS_AENTRADAVALOR.AsFloat:= SubTotal;
if FrmCaixa.ObterNumero(Numero_Documento) then
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= Numero_Documento;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
Panel_Movimentacao.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnReciboVenda.Enabled:= True;
BtnReciboVenda.Caption:= 'Imprimir (RECIBO)';
BtnReciboVenda.SetFocus;
Exit;
end else
// VERIFICA SE É VENDA Á PRAZO
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CARNÊ') then
begin
// GERA AS PARCELAS DO CARNÊ
for i:= 1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CARNE.Append;
Dm.IBDS_CARNENOME_CLIENTE.AsString:= FrmCaixa.IBQuery_VENOME_CLIENTE.AsString;
Dm.IBDS_CARNECODIGO.AsString:= FrmCaixa.IBQuery_VECODIGO.AsString;
Dm.IBDS_CARNEQUANT_PARCELAS.AsString:= IntToStr(Fracao);
Dm.IBDS_CARNENUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Fracao);
Dm.IBDS_CARNEVALOR_PARCELA.AsString:= FloatToStr(VDParcela);
Dm.IBDS_CARNENUMERO_CONTRATO.AsString:= FrmCaixa.IBQuery_VENUMERO_CONTRATO.AsString;
Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime:= IncMonth(StrToDate(MaskEdit_Vencimento.Text),(i)-1);
Dm.IBDS_CARNESITUACAO_PARCELA.AsString:= 'EM ABERTO';
Dm.IBDS_CARNENUMERO_DOC.AsString:= IntToStr((i))+IntToStr(Fracao)+NC;
Dm.IBDS_CARNENUMERO_DOC.AsString:= FrmPrincipal.ZeroEsquerda(strtoint(Dm.IBDS_CARNENUMERO_DOC.AsString), 16);
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
Geradas:= '1';
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
IBQuery_ParcGeradas.Close;
IBQuery_ParcGeradas.SQL.Clear;
IBQuery_ParcGeradas.SQL.Add('select * from CARNE');
IBQuery_ParcGeradas.SQL.Add('where NUMERO_CONTRATO = :NC');
IBQuery_ParcGeradas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_ParcGeradas.ParamByName('NC').AsString := FrmCaixa.IBQuery_VENUMERO_CONTRATO.AsString;
IBQuery_ParcGeradas.Prepare;
IBQuery_ParcGeradas.Open;
DBGrid_Parcelas.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnImprimir.Enabled:= True;
BtnImprimir.Caption:= 'Imprimir ('+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString+')';
if OpcaoVenda = 'COM ENTRADA' then
begin
BtnReciboVenda.Enabled:= True;
BtnReciboVenda.Caption:= 'Imprimir (RECIBO)';
end else
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
BtnImprimir.SetFocus;
exit;
end else
// VERIFICA SE É CHEQUE A PRAZO
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CHEQUE') then
begin
// GERA AS PARCELAS DO CHEQUE
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CHEQUE.Append;
Dm.IBDS_CHEQUENOME_CLIENTE.AsString:= FrmCaixa.IBQuery_VENOME_CLIENTE.AsString;
Dm.IBDS_CHEQUECODIGO.AsString:= FrmCaixa.IBQuery_VECODIGO.AsString;
Dm.IBDS_CHEQUEQUANT_PARCELAS.AsString:= IntToStr(Fracao);
Dm.IBDS_CHEQUENUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Fracao);
Dm.IBDS_CHEQUEVALOR_PARCELA.AsString:= FloatToStr(VDParcela);
Dm.IBDS_CHEQUENUMERO_CONTRATO.AsString:= FrmCaixa.IBQuery_VENUMERO_CONTRATO.AsString;
Dm.IBDS_CHEQUEDATA_VENCIMENTO.AsDateTime:=IncMonth(StrToDate(MaskEdit_Vencimento.Text),(i)-1);
Dm.IBDS_CHEQUESITUACAO_PARCELA.AsString:= 'EM ABERTO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CHEQUE.Post;
Dm.IBDS_CHEQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
Geradas:= '1';
// SELECIONA AS PARCELAS GERADAS DO CHEQUE
IBQuery_ParcGeradas.Close;
IBQuery_ParcGeradas.SQL.Clear;
IBQuery_ParcGeradas.SQL.Add('select * from CHEQUE');
IBQuery_ParcGeradas.SQL.Add('where NUMERO_CONTRATO = :NC');
IBQuery_ParcGeradas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_ParcGeradas.ParamByName('NC').AsString := NC;
IBQuery_ParcGeradas.Prepare;
IBQuery_ParcGeradas.Open;
DBGrid_Parcelas.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnImprimir.Enabled:= True;
BtnImprimir.Caption:= 'Imprimir ('+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString+')';
BtnImprimir.Enabled:= False;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
BtnImprimirContrato.Enabled:= True;
BtnImprimirContrato.SetFocus;
Exit;
end else
// Verifica se o tipo de venda é cartão a prazo
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'CARTÃO') then
begin
// GERA AS PARCELAS DO CARTÃO
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CARTAO.Append;
Dm.IBDS_CARTAONOME_CLIENTE.AsString:= FrmCaixa.IBQuery_VENOME_CLIENTE.AsString;
Dm.IBDS_CARTAOCODIGO.AsString:= FrmCaixa.IBQuery_VECODIGO.AsString;
Dm.IBDS_CARTAOQUANT_PARCELAS.AsString:= IntToStr(Fracao);
Dm.IBDS_CARTAONUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Fracao);
Dm.IBDS_CARTAOVALOR_PARCELA.AsString:= FloatToStr(VDParcela);
Dm.IBDS_CARTAONUMERO_CONTRATO.AsString:= FrmCaixa.IBQuery_VENUMERO_CONTRATO.AsString;
Dm.IBDS_CARTAODATA_VENCIMENTO.AsDateTime:=IncMonth(StrToDate(MaskEdit_Vencimento.Text),(i)-1);
Dm.IBDS_CARTAOSITUACAO_PARCELA.AsString:= 'EM ABERTO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARTAO.Post;
Dm.IBDS_CARTAO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
Geradas:= '1';
// SELECIONA AS PARCELAS GERADAS DO CARTÃO
IBQuery_ParcGeradas.Close;
IBQuery_ParcGeradas.SQL.Clear;
IBQuery_ParcGeradas.SQL.Add('select * from CARTAO');
IBQuery_ParcGeradas.SQL.Add('where NUMERO_CONTRATO = :NC');
IBQuery_ParcGeradas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_ParcGeradas.ParamByName('NC').AsString := NC;
IBQuery_ParcGeradas.Prepare;
IBQuery_ParcGeradas.Open;
DBGrid_Parcelas.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnImprimir.Enabled:= True;
BtnImprimir.Caption:= 'Imprimir ('+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString+')';
BtnImprimir.Enabled:= False;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
BtnImprimirContrato.Enabled:= True;
BtnImprimirContrato.SetFocus;
Exit;
end else
// Verifica se o tipo de venda é boleto
if (TipoVenda = 'A PRAZO') and (FormaVenda = 'BOLETO BANCÁRIO') then
begin
// GERA AS PARCELAS DO BOLETO
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_BOLETO.Append;
Dm.IBDS_BOLETONOME_CLIENTE.AsString:= FrmCaixa.IBQuery_VENOME_CLIENTE.AsString;
Dm.IBDS_BOLETOCODIGO.AsString:= FrmCaixa.IBQuery_VECODIGO.AsString;
Dm.IBDS_BOLETOQUANT_PARCELAS.AsString:= IntToStr(Fracao);
Dm.IBDS_BOLETONUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Fracao);
Dm.IBDS_BOLETOVALOR_PARCELA.AsString:= FloatToStr(VDParcela);
Dm.IBDS_BOLETONUMERO_CONTRATO.AsString:= FrmCaixa.IBQuery_VENUMERO_CONTRATO.AsString;
Dm.IBDS_BOLETODATA_VENCIMENTO.AsDateTime:=IncMonth(StrToDate(MaskEdit_Vencimento.Text),(i)-1);
Dm.IBDS_BOLETOSITUACAO_PARCELA.AsString:= 'EM ABERTO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_BOLETO.Post;
Dm.IBDS_BOLETO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
Geradas:= '1';
// SELECIONA AS PARCELAS GERADAS DO BOLETO
IBQuery_ParcGeradas.Close;
IBQuery_ParcGeradas.SQL.Clear;
IBQuery_ParcGeradas.SQL.Add('select * from BOLETO');
IBQuery_ParcGeradas.SQL.Add('where NUMERO_CONTRATO = :NC');
IBQuery_ParcGeradas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_ParcGeradas.ParamByName('NC').AsString := NC;
IBQuery_ParcGeradas.Prepare;
IBQuery_ParcGeradas.Open;
DBGrid_Parcelas.Visible:= True;
DBGrid_Itens.Visible:= False;
BtnImprimir.Enabled:= True;
BtnImprimir.Caption:= 'Imprimir ('+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString+')';
BtnImprimir.Enabled:= False;
BtnFinalizar.Enabled:= True;
BtnGera.Enabled:= False;
PageControl1.Enabled:= True;
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
BtnImprimirContrato.Enabled:= True;
BtnImprimirContrato.SetFocus;
end;
end;

procedure TFrmCaixaVenda.DBGrid_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_ParcGeradas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Parcelas.Canvas.Brush.Color:= $00FFF5EA;
DBGrid_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCaixaVenda.DBGrid_ItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(FrmCaixa.IBQuery_ItemVenda.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Itens.Canvas.Brush.Color:= $00FFF5EA;
DBGrid_Itens.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Itens.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCaixaVenda.BtnImprimirClick(Sender: TObject);
begin
BtnImprimirContrato.Enabled:= True;
BtnReciboVenda.Enabled:= True;
BtnFinalizar.Enabled:= True;
IBQuery_ImprimeCarne.Close;
IBQuery_ImprimeCarne.SQL.Clear;
IBQuery_ImprimeCarne.SQL.Add('select * from CARNE');
IBQuery_ImprimeCarne.SQL.Add('where NUMERO_CONTRATO = :NC');
IBQuery_ImprimeCarne.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_ImprimeCarne.ParamByName('NC').AsString :=NC;
IBQuery_ImprimeCarne.Prepare;
IBQuery_ImprimeCarne.Open;

if FrmRelCarne <> Nil then Exit;
FrmRelCarne := TFrmRelCarne.Create(self);
FrmRelCarne.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCarne.QuickRep1.Preview;
FrmRelCarne.Free;
FrmRelCarne := Nil;
BtnFinalizar.Enabled:= True;
BtnFinalizar.SetFocus;
end;

procedure TFrmCaixaVenda.BtnReciboVendaClick(Sender: TObject);
begin
if TipoVenda = 'Á VISTA' then
begin
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.SQL.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('select NOME_CLIENTE, NUMERO_CONTRATO from VENDAS');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumeroDoc');
FrmCaixa.IBQueryVenda.ParamByName('NumeroDoc').AsString:= NC;
FrmCaixa.IBQueryVenda.Open;
if FrmRelReciboVA <> Nil then Exit;
FrmRelReciboVA := TFrmRelReciboVA.Create(self);
FrmRelReciboVA.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelReciboVA.QuickRep1.Preview;
FrmRelReciboVA.Free;
FrmRelReciboVA := Nil;
BtnImprimirContrato.Enabled:= True;
BtnImprimirContrato.SetFocus;
end else
if (TipoVenda = 'A PRAZO') and (OpcaoVenda = 'COM ENTRADA') then
begin
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.SQL.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('select NOME_CLIENTE, NUMERO_CONTRATO from VENDAS');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumeroDoc');
FrmCaixa.IBQueryVenda.ParamByName('NumeroDoc').AsString:= NC;
FrmCaixa.IBQueryVenda.Open;
if FrmRelRecibo <> Nil then Exit;
FrmRelRecibo := TFrmRelRecibo.Create(self);
FrmRelRecibo.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelRecibo.QuickRep1.Preview;
FrmRelRecibo.Free;
FrmRelRecibo := Nil;
BtnImprimirContrato.Enabled:= True;
BtnImprimirContrato.SetFocus;
end;
end;

procedure TFrmCaixaVenda.BtnImprimirContratoClick(Sender: TObject);
begin
Dm.IBDS_VENDAS.Edit;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

FrmCaixa.IBQuery_VE.Close;
FrmCaixa.IBQuery_VE.SQL.Clear;
FrmCaixa.IBQuery_VE.SQL.Add('select FORMA_VENDA, NOME_CLIENTE, CODIGO, NUMERO_CONTRATO, TIPO_VENDA,  DESCONTO, SUB_TOTAL, VALOR_TOTAL, NOME_MEDICO, NOME_VENDEDOR, ACRESCIMO, DESCONTO from VENDAS ');
FrmCaixa.IBQuery_VE.SQL.Add('where NUMERO_CONTRATO =:NC');
FrmCaixa.IBQuery_VE.ParamByName('NC').AsString:= NC;
FrmCaixa.IBQuery_VE.Open;

FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.SQL.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NC');
FrmCaixa.IBQueryVenda.ParamByName('NC').AsString:= NC;
FrmCaixa.IBQueryVenda.Open;

if FrmRelComprovante <> Nil then Exit;
FrmRelComprovante := TFrmRelComprovante.Create(self);
FrmRelComprovante.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelComprovante.QuickRep1.Preview;
FrmRelComprovante.Free;
FrmRelComprovante := Nil; 
BtnFinalizar.Enabled:= True;
BtnFinalizar.SetFocus;
end;

procedure TFrmCaixaVenda.BtnFinalizarClick(Sender: TObject);
begin
// da entrada no caixa da entrada
if OpcaoVenda = 'COM ENTRADA' then
begin
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsDateTime:= Data;
Dm.IBDS_AENTRADAHISTORICO.AsString:= 'ENTRADA DA VENDA NO '+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString;
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= NC;
Dm.IBDS_AENTRADAVALOR.AsFloat:= VEntrada;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
end else
FrmCaixa.SbNovo.Enabled:= True;
FrmCaixa.SbFecha.Enabled:= True;
FrmCaixa.SbNovo.Caption:='No&vo Lançamento';
Label_ValorVenda.Caption:= 'R$ 0,00';
Label_VA.Text:= '0';
Label_VD.Text:= '0';
OpcaoVenda:= '';
BtnGera.Caption:= 'Gerar Venda';
DBGrid_Parcelas.Visible:= False;
Panel_Movimentacao.Visible:= False;
DBGrid_Itens.Visible:= True;

IBQuery_ParcGeradas.Close;
IBQuery_ParcGeradas.Close;
FrmCaixa.ComboBoxOpcao.Enabled:= True;
TipoVenda:= '';
FormaVenda:= '';
Fracao:= 0;
OpcaoVenda:= '';
Geradas:= '';
FrmCaixa.SbFecha.Caption:= 'Fec&har';
FrmCaixa.ComboBoxOpcao.SetFocus;
FrmCaixa.Panel_CaixaLivre1.Visible:= True;
iOK := 625;
Close;
end;

procedure TFrmCaixaVenda.FormShow(Sender: TObject);
begin
Label_ValorVenda.Caption:= FormatFloat('R$ ###,###,##0.00', ValorVenda);
FrmCaixa.IBQuery_ItemVenda.Close;
FrmCaixa.IBQuery_ItemVenda.SQL.Clear;
FrmCaixa.IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO ='+#39+NC+#39);
FrmCaixa.IBQuery_ItemVenda.Open;
end;

procedure TFrmCaixaVenda.BtnCancelarClick(Sender: TObject);
begin
// Apaga o lançamento existente
if MessageBox(0,'Para cancelar o lançamento atual, o anterior deve ser cancelado.  Deseja continuar?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
ShowMessage('O lançamento atual será cancelado agora.');
Screen.Cursor := crHourGlass;
// Apaga as parcelas do carnê
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CARNE ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
// Apaga as parcelas do cheque
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CHEQUE ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
// Apaga as parcelas do cartão
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from CARTAO ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
// Apaga as parcelas do boleto
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from BOLETO ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
// Apaga a entrada no caixa
FrmCaixa.IBQueryVenda.Close;
FrmCaixa.IBQueryVenda.Sql.Clear;
FrmCaixa.IBQueryVenda.SQL.Add('Delete from AENTRADA ');
FrmCaixa.IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
FrmCaixa.IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
FrmCaixa.IBQueryVenda.ExecSQL;
IBQuery_ParcGeradas.Close;
BtnGera.Caption:= 'Gerar Venda';
BtnGera.Enabled:= False;
IBQuery_ParcGeradas.Close;
FrmCaixa.IBQueryVenda.Close;
Geradas:= '';
DBGrid_Parcelas.Visible:= False;
Panel_Movimentacao.Visible:= False;
DBGrid_Itens.Visible:= True;
FrmCaixa.MaskEdit_VI.Enabled:= False;
FrmCaixa.DBCBox_Vendedor.Enabled:= False;
FrmCaixa.ME_Cliente.Enabled:= False;
FrmCaixa.DBEdit1.Enabled:= False;
FrmCaixa.ComboBoxGrupo.Enabled:= False;
FrmCaixa.ComboBox4.Enabled:= False;
FrmCaixa.Edit1.Enabled:= False;
FrmCaixa.DBGrid1.Enabled:= False;
FrmCaixa.CBox_Quantidade.Enabled:= False;
FrmCaixa.BtnCI.Enabled:= False;
//CBox_Confirma.Enabled:= False;
FrmCaixa.DBGrid2.Enabled:= True;
FrmCaixa.SbNovo.Enabled:= True;
FrmCaixa.SbFecha.Enabled:= True;
FrmCaixa.ComboBoxTipo.Enabled:= False;
FrmCaixa.ComboBoxForma.Enabled:= False;
FrmCaixa.ComboBoxNP.Enabled:= False;
FrmCaixa.ComboBoxOpcaoVenda.Enabled:= False;
FrmCaixa.SbSalvar.Enabled:= False;
FrmCaixa.ComboBoxOpcao.Enabled:= False;
FrmCaixa.SbFecha.Caption:= 'Fec&har';
FrmCaixa.SbNovo.Caption:= '&Cancelar '+Opcao;
FrmCaixa.SbNovo.SetFocus;
Screen.Cursor := crDefault;
FrmCaixa.Caption:= FrmCaixa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
iOK := 625;
Close;
Exit;
end else
Label_VA.SetFocus;
end;

procedure TFrmCaixaVenda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK := 624;
end;

end.
