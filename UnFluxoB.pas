unit UnFluxoB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids,
  StdCtrls, DBCtrls, ComCtrls, Buttons;

type
  TFrmFluxoB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Dia1: TDateTimePicker;
    Label2: TLabel;
    Dia2: TDateTimePicker;
    BtnRefresh: TBitBtn;
    BtnFechar: TBitBtn;
    BtnImprimir: TBitBtn;
    PageControl: TPageControl;
    TabSheet0: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    IBQuery_Carne: TIBQuery;
    DS_Carne: TDataSource;
    IBQuery_Boleto: TIBQuery;
    DS_Boleto: TDataSource;
    IBQuery_Cheque: TIBQuery;
    DS_Cheque: TDataSource;
    IBQuery_Cartao: TIBQuery;
    DS_Cartao: TDataSource;
    IBQuery_VendasPrazo: TIBQuery;
    DS_VendasPrazo: TDataSource;
    IBQuery_VendasVista: TIBQuery;
    DS_VendasVista: TDataSource;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    IBQuery_TotalVendas: TIBQuery;
    DS_TotalVendas: TDataSource;
    Label21: TLabel;
    ComboBoxVendedor: TComboBox;
    Label22: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    IBQuery_CarneACRESCIMO: TIBBCDField;
    IBQuery_CarneCODIGO: TIBStringField;
    IBQuery_CarneDATA_VENDA: TDateTimeField;
    IBQuery_CarneDESCONTO: TIBBCDField;
    IBQuery_CarneFORMA_VENDA: TIBStringField;
    IBQuery_CarneNOME_CLIENTE: TIBStringField;
    IBQuery_CarneNOME_VENDEDOR: TIBStringField;
    IBQuery_CarneNUMERO_CONTRATO: TIBStringField;
    IBQuery_CarneSUB_TOTAL: TIBBCDField;
    IBQuery_CarneTIPO_VENDA: TIBStringField;
    IBQuery_CarneVALOR_TOTAL: TIBBCDField;
    IBQuery_CarneF_1: TIBBCDField;
    IBQuery_BoletoACRESCIMO: TIBBCDField;
    IBQuery_BoletoCODIGO: TIBStringField;
    IBQuery_BoletoDATA_VENDA: TDateTimeField;
    IBQuery_BoletoDESCONTO: TIBBCDField;
    IBQuery_BoletoFORMA_VENDA: TIBStringField;
    IBQuery_BoletoNOME_CLIENTE: TIBStringField;
    IBQuery_BoletoNOME_VENDEDOR: TIBStringField;
    IBQuery_BoletoNUMERO_CONTRATO: TIBStringField;
    IBQuery_BoletoSUB_TOTAL: TIBBCDField;
    IBQuery_BoletoTIPO_VENDA: TIBStringField;
    IBQuery_BoletoVALOR_TOTAL: TIBBCDField;
    IBQuery_BoletoF_1: TIBBCDField;
    IBQuery_ChequeACRESCIMO: TIBBCDField;
    IBQuery_ChequeCODIGO: TIBStringField;
    IBQuery_ChequeDATA_VENDA: TDateTimeField;
    IBQuery_ChequeDESCONTO: TIBBCDField;
    IBQuery_ChequeFORMA_VENDA: TIBStringField;
    IBQuery_ChequeNOME_CLIENTE: TIBStringField;
    IBQuery_ChequeNOME_VENDEDOR: TIBStringField;
    IBQuery_ChequeNUMERO_CONTRATO: TIBStringField;
    IBQuery_ChequeSUB_TOTAL: TIBBCDField;
    IBQuery_ChequeTIPO_VENDA: TIBStringField;
    IBQuery_ChequeVALOR_TOTAL: TIBBCDField;
    IBQuery_ChequeF_1: TIBBCDField;
    IBQuery_ChequeF_2: TIBBCDField;
    IBQuery_ChequeF_3: TIBBCDField;
    IBQuery_CartaoACRESCIMO: TIBBCDField;
    IBQuery_CartaoCODIGO: TIBStringField;
    IBQuery_CartaoDATA_VENDA: TDateTimeField;
    IBQuery_CartaoDESCONTO: TIBBCDField;
    IBQuery_CartaoFORMA_VENDA: TIBStringField;
    IBQuery_CartaoNOME_CLIENTE: TIBStringField;
    IBQuery_CartaoNOME_VENDEDOR: TIBStringField;
    IBQuery_CartaoNUMERO_CONTRATO: TIBStringField;
    IBQuery_CartaoSUB_TOTAL: TIBBCDField;
    IBQuery_CartaoTIPO_VENDA: TIBStringField;
    IBQuery_CartaoVALOR_TOTAL: TIBBCDField;
    IBQuery_CartaoF_1: TIBBCDField;
    IBQuery_CartaoF_2: TIBBCDField;
    IBQuery_CartaoF_3: TIBBCDField;
    IBQuery_VendasPrazoACRESCIMO: TIBBCDField;
    IBQuery_VendasPrazoCODIGO: TIBStringField;
    IBQuery_VendasPrazoDATA_VENDA: TDateTimeField;
    IBQuery_VendasPrazoDESCONTO: TIBBCDField;
    IBQuery_VendasPrazoFORMA_VENDA: TIBStringField;
    IBQuery_VendasPrazoNOME_CLIENTE: TIBStringField;
    IBQuery_VendasPrazoNOME_VENDEDOR: TIBStringField;
    IBQuery_VendasPrazoNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasPrazoSUB_TOTAL: TIBBCDField;
    IBQuery_VendasPrazoTIPO_VENDA: TIBStringField;
    IBQuery_VendasPrazoVALOR_TOTAL: TIBBCDField;
    IBQuery_VendasPrazoF_1: TIBBCDField;
    IBQuery_VendasPrazoF_2: TIBBCDField;
    IBQuery_VendasPrazoF_3: TIBBCDField;
    IBQuery_VendasPrazoF_4: TIBBCDField;
    IBQuery_VendasPrazoF_5: TIBBCDField;
    IBQuery_VendasVistaACRESCIMO: TIBBCDField;
    IBQuery_VendasVistaCODIGO: TIBStringField;
    IBQuery_VendasVistaDATA_VENDA: TDateTimeField;
    IBQuery_VendasVistaDESCONTO: TIBBCDField;
    IBQuery_VendasVistaFORMA_VENDA: TIBStringField;
    IBQuery_VendasVistaNOME_CLIENTE: TIBStringField;
    IBQuery_VendasVistaNOME_VENDEDOR: TIBStringField;
    IBQuery_VendasVistaNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasVistaSUB_TOTAL: TIBBCDField;
    IBQuery_VendasVistaTIPO_VENDA: TIBStringField;
    IBQuery_VendasVistaVALOR_TOTAL: TIBBCDField;
    IBQuery_VendasVistaF_1: TIBBCDField;
    IBQuery_VendasVistaF_2: TIBBCDField;
    IBQuery_VendasVistaF_3: TIBBCDField;
    IBQuery_VendasVistaF_4: TIBBCDField;
    IBQuery_TotalVendasACRESCIMO: TIBBCDField;
    IBQuery_TotalVendasCODIGO: TIBStringField;
    IBQuery_TotalVendasDATA_VENDA: TDateTimeField;
    IBQuery_TotalVendasDESCONTO: TIBBCDField;
    IBQuery_TotalVendasFORMA_VENDA: TIBStringField;
    IBQuery_TotalVendasNOME_CLIENTE: TIBStringField;
    IBQuery_TotalVendasNOME_VENDEDOR: TIBStringField;
    IBQuery_TotalVendasNUMERO_CONTRATO: TIBStringField;
    IBQuery_TotalVendasSUB_TOTAL: TIBBCDField;
    IBQuery_TotalVendasTIPO_VENDA: TIBStringField;
    IBQuery_TotalVendasVALOR_TOTAL: TIBBCDField;
    Label23: TLabel;
    DBText19: TDBText;
    IBQuery_TotalVendasF_1: TIntegerField;
    IBQuery_TotalVendasF_2: TIBBCDField;
    DBGrid_Fluxo: TDBGrid;
    Label4: TLabel;
    Label_SaldoCaixa: TLabel;
    Timer1: TTimer;
    Bevel1: TBevel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Panel2: TPanel;
    Ds_RCarne: TDataSource;
    IBQuery_RCarne: TIBQuery;
    IBQuery_RCarneDATA_PAGAMENTO: TDateTimeField;
    IBQuery_RCarneF_1: TIBBCDField;
    IBQuery_RBoleto: TIBQuery;
    Ds_RBoleto: TDataSource;
    IBQuery_RCheque: TIBQuery;
    Ds_RCheque: TDataSource;
    IBQuery_RCartao: TIBQuery;
    Ds_RCartao: TDataSource;
    IBQuery_RDinheiro: TIBQuery;
    Ds_RDinheiro: TDataSource;
    IBQuery_RBoletoDATA_PAGAMENTO: TDateTimeField;
    IBQuery_RBoletoF_1: TIBBCDField;
    IBQuery_RChequeDATA_PAGAMENTO: TDateTimeField;
    IBQuery_RChequeF_1: TIBBCDField;
    IBQuery_RCartaoDATA_PAGAMENTO: TDateTimeField;
    IBQuery_RCartaoF_1: TIBBCDField;
    IBQuery_RDinheiroVALOR_TOTAL: TIBBCDField;
    IBQuery_RDinheiroDATA_VENDA: TDateTimeField;
    IBQuery_RDinheiroF_1: TIBBCDField;
    Label_RTotal: TLabel;
    Label_Dinheiro: TLabel;
    Label_Cartao: TLabel;
    Label_Cheque: TLabel;
    Label_Boleto: TLabel;
    Label_Carne: TLabel;
    IBQuery_RCarneTOTAL_PAGO: TIBBCDField;
    IBQuery_RBoletoTOTAL_PAGO: TIBBCDField;
    IBQuery_RChequeTOTAL_PAGO: TIBBCDField;
    IBQuery_RCartaoTOTAL_PAGO: TIBBCDField;
    IBQuery_ROutros: TIBQuery;
    Ds_ROutros: TDataSource;
    IBQuery_ROutrosDATA: TDateTimeField;
    IBQuery_ROutrosVALOR: TIBBCDField;
    IBQuery_ROutrosF_1: TIBBCDField;
    Label_Outros: TLabel;
    Label32: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure DBGrid_FluxoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure ComboBoxVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_FluxoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure Recebimentos;
  public
    { Public declarations }
  end;

var
  FrmFluxoB: TFrmFluxoB;
Data1, Data2, Valor: String;
V1,V2,V3,V4,V5,V6,Total: Real;

implementation

uses UnDm, UnDmFluxo, UnRelFluxoB, UnPrincipal;

{$R *.dfm}

procedure TFrmFluxoB.FormShow(Sender: TObject);
begin
FrmFluxoB.Top:= 0;
FrmFluxoB.Left:= 0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFluxoB.Caption:= FrmFluxoB.Caption;
Exit;
end else
FrmFluxoB.Caption:= FrmFluxoB.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
PageControl.SetFocus;
FrmFluxoB.Caption:= TabSheet0.Caption;
// abre tabelas
if DmFluxo.ds_B.DataSet <> nil then
DmFluxo.ds_B.dataset.active := false;
begin
        with DmFluxo.Query_BFluxo do
        begin
          Close;
          ParamByName('dia1').AsDate:= Dia1.date;
          ParamByName('dia2').AsDateTime:= Dia2.Date;
          Open;
        end;
        DmFluxo.BProvider.DataSet := DmFluxo.Query_BFluxo;
        DmFluxo.DS_B.Dataset := DmFluxo.cds_BFluxo;
      end;
  DmFluxo.ds_B.dataset.active := true;
  BtnRefreshClick(Nil);
  Recebimentos;
end;

procedure TFrmFluxoB.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
Dia1.Date:= Date;
Dia2.Date:= Date;
end;

procedure TFrmFluxoB.BtnRefreshClick(Sender: TObject);
begin
// INFORMA O FLUXO DO CAIXA
Recebimentos;
if BtnRefresh.Caption = TabSheet0.Caption then
begin
DmFluxo.cds_BFluxo.disableControls;
  try
    DmFluxo.cds_BFluxo.active := false;
    with DmFluxo.Query_BFluxo do
    begin
      Close;
      ParamByName('dia1').AsDate:= Dia1.date;
      ParamByName('dia2').AsDateTime:= Dia2.Date;
      Open;
    end;
    DmFluxo.cds_BFluxo.active := true;
  finally
    DmFluxo.cds_BFluxo.enableControls;
  end;
   DmFluxo.cds_BFluxo.Last;
  Exit;
end else
// INFORMA O FLUXO DO CARNÊ
if BtnRefresh.Caption = TabSheet1.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Carne.Close;
IBQuery_Carne.SQL.Clear;
IBQuery_Carne.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARNÊ
IBQuery_Carne.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Carne.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and ');
IBQuery_Carne.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Carne.SQL.Add('from VENDAS ');
IBQuery_Carne.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and ');
IBQuery_Carne.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Carne.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Carne.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Carne.SQL.Add('order by DATA_VENDA');
IBQuery_Carne.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DO BOLETO
if BtnRefresh.Caption = TabSheet2.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Boleto.Close;
IBQuery_Boleto.SQL.Clear;
IBQuery_Boleto.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO BOLETO BANCÁRIO
IBQuery_Boleto.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Boleto.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and ');
IBQuery_Boleto.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Boleto.SQL.Add('from VENDAS ');
IBQuery_Boleto.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and ');
IBQuery_Boleto.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Boleto.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Boleto.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Boleto.SQL.Add('order by DATA_VENDA');
IBQuery_Boleto.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DO CHEQUE
if BtnRefresh.Caption = TabSheet3.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Cheque.Close;
IBQuery_Cheque.SQL.Clear;
IBQuery_Cheque.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CHEQUE Á VISTA
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CHEQUE A PRAZO
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS NO CHEQUE
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Cheque.SQL.Add('from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Cheque.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Cheque.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Cheque.SQL.Add('order by DATA_VENDA');
IBQuery_Cheque.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DO CARTÃO
if BtnRefresh.Caption = TabSheet4.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Cartao.Close;
IBQuery_Cartao.SQL.Clear;
IBQuery_Cartao.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARTÃO Á VISTA
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CARTÃO A PRAZO
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS NO CARTÃO
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Cartao.SQL.Add('from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Cartao.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Cartao.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Cartao.SQL.Add('order by DATA_VENDA');
IBQuery_Cartao.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DAS VENDAS A PRAZO
if BtnRefresh.Caption = TabSheet5.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_VendasPrazo.Close;
IBQuery_VendasPrazo.SQL.Clear;
IBQuery_VendasPrazo.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARNÊ A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO BOLETO BANCÁRIO A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CHEQUE A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CARTÃO A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_VendasPrazo.SQL.Add('from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_VendasPrazo.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_VendasPrazo.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_VendasPrazo.SQL.Add('order by DATA_VENDA');
IBQuery_VendasPrazo.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DAS VENDAS Á VISTA
if BtnRefresh.Caption = TabSheet6.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_VendasVista.Close;
IBQuery_VendasVista.SQL.Clear;
IBQuery_VendasVista.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// VENDA Á VISTA NO DINHEIRO
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'DINHEIRO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// VENDA Á VISTA NO CHEQUE
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// VENDA Á VISTA NO CARTÃO
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS Á VISTA
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_VendasVista.SQL.Add('from VENDAS ');
IBQuery_VendasVista.SQL.Add('where TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_VendasVista.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_VendasVista.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_VendasVista.SQL.Add('order by DATA_VENDA');
IBQuery_VendasVista.Open;
Screen.Cursor := crDefault;
Exit;
end else
// INFORMA O FLUXO DO TOTAL DE VENDAS
if BtnRefresh.Caption = TabSheet7.Caption then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_TotalVendas.Close;
IBQuery_TotalVendas.SQL.Clear;
IBQuery_TotalVendas.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL DE VENDAS
IBQuery_TotalVendas.SQL.Add('(select count (NUMERO_CONTRATO) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final), ');
// VALOR TOTAL DE VENDAS
IBQuery_TotalVendas.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_TotalVendas.SQL.Add('from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_TotalVendas.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_TotalVendas.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_TotalVendas.SQL.Add('order by DATA_VENDA');
IBQuery_TotalVendas.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmFluxoB.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmFluxoB.DBGrid_FluxoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// PINTA O GRID DO FLUXO DO CAIXA
if DBGrid_Fluxo.DataSource = DmFluxo.DS_B then
begin
if DmFluxo.DS_B.Dataset = DmFluxo.cds_BFluxo then
begin
if not odd(DmFluxo.cds_BFluxo.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= clInfoBk;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
end;
// Se o saldo for - pinta de vermelho e negrito
if Column.Field = DmFluxo.cds_BFluxoVALOR then

if DmFluxo.cds_BFluxoVALOR.AsCurrency < -0 then
begin
DBGrid_Fluxo.Canvas.Font.Style:=
DBGrid_Fluxo.Canvas.Font.Style + [fsBold];
DBGrid_Fluxo.Canvas.Font.Color:= clRed;
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
// Pinta de $00FF8000 e negrito o saldo anterior e saldo final
if Column.Field = DmFluxo.cds_BFluxoHISTORICO then
if (DmFluxo.cds_BFluxoHISTORICO.AsString = 'SALDO ANTERIOR') or (DmFluxo.cds_BFluxoHISTORICO.AsString = 'SALDO FINAL') then
begin
DBGrid_Fluxo.Canvas.Font.Style:=
DBGrid_Fluxo.Canvas.Font.Style + [fsBold];
DBGrid_Fluxo.Canvas.Font.Color:= $00FF8000;
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DO CARNÊ
if DBGrid_Fluxo.DataSource = DS_Carne then
begin
if not odd(IBQuery_Carne.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DO BOLETO
if DBGrid_Fluxo.DataSource = DS_Boleto then
begin
if not odd(IBQuery_Boleto.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DO CHEQUE
if DBGrid_Fluxo.DataSource = DS_Cheque then
begin
if not odd(IBQuery_Cheque.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DO CARTÃO
if DBGrid_Fluxo.DataSource = DS_Cartao then
begin
if not odd(IBQuery_Cartao.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DA VENDAS A PRAZO
if DBGrid_Fluxo.DataSource = DS_VendasPrazo then
begin
if not odd(IBQuery_VendasPrazo.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DA VENDAS Á VISTA
if DBGrid_Fluxo.DataSource = DS_VendasVista then
begin
if not odd(IBQuery_VendasVista.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
// PINTA O GRID DO TOTAL DE VENDAS
if DBGrid_Fluxo.DataSource = DS_TotalVendas then
begin
if not odd(IBQuery_TotalVendas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Fluxo.Canvas.Brush.Color:= $00E3EEFB;
DBGrid_Fluxo.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Fluxo.DefaultDrawDataCell(rect,column.Field,State);
end;
end;
end;

procedure TFrmFluxoB.BtnImprimirClick(Sender: TObject);
begin
// INFORMA O FLUXO DO CARNÊ
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Carne.Close;
IBQuery_Carne.SQL.Clear;
IBQuery_Carne.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARNÊ
IBQuery_Carne.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Carne.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and ');
IBQuery_Carne.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Carne.SQL.Add('from VENDAS ');
IBQuery_Carne.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and ');
IBQuery_Carne.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Carne.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Carne.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Carne.SQL.Add('order by DATA_VENDA');
IBQuery_Carne.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DO BOLETO
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Boleto.Close;
IBQuery_Boleto.SQL.Clear;
IBQuery_Boleto.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO BOLETO BANCÁRIO
IBQuery_Boleto.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Boleto.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and ');
IBQuery_Boleto.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Boleto.SQL.Add('from VENDAS ');
IBQuery_Boleto.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and ');
IBQuery_Boleto.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Boleto.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Boleto.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Boleto.SQL.Add('order by DATA_VENDA');
IBQuery_Boleto.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DO CHEQUE
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Cheque.Close;
IBQuery_Cheque.SQL.Clear;
IBQuery_Cheque.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CHEQUE Á VISTA
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CHEQUE A PRAZO
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS NO CHEQUE
IBQuery_Cheque.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Cheque.SQL.Add('from VENDAS ');
IBQuery_Cheque.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and ');
IBQuery_Cheque.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Cheque.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Cheque.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Cheque.SQL.Add('order by DATA_VENDA');
IBQuery_Cheque.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DO CARTÃO
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Cartao.Close;
IBQuery_Cartao.SQL.Clear;
IBQuery_Cartao.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARTÃO Á VISTA
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CARTÃO A PRAZO
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS NO CARTÃO
IBQuery_Cartao.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_Cartao.SQL.Add('from VENDAS ');
IBQuery_Cartao.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and ');
IBQuery_Cartao.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_Cartao.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_Cartao.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_Cartao.SQL.Add('order by DATA_VENDA');
IBQuery_Cartao.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DAS VENDAS A PRAZO
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_VendasPrazo.Close;
IBQuery_VendasPrazo.SQL.Clear;
IBQuery_VendasPrazo.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL VENDA NO CARNÊ A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CARNÊ'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO BOLETO BANCÁRIO A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'BOLETO BANCÁRIO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CHEQUE A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL VENDA NO CARTÃO A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS A PRAZO
IBQuery_VendasPrazo.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_VendasPrazo.SQL.Add('from VENDAS ');
IBQuery_VendasPrazo.SQL.Add('where TIPO_VENDA = '+#39+'A PRAZO'+#39+' and ');
IBQuery_VendasPrazo.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_VendasPrazo.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_VendasPrazo.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_VendasPrazo.SQL.Add('order by DATA_VENDA');
IBQuery_VendasPrazo.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DAS VENDAS Á VISTA
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_VendasVista.Close;
IBQuery_VendasVista.SQL.Clear;
IBQuery_VendasVista.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// VENDA Á VISTA NO DINHEIRO
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'DINHEIRO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// VENDA Á VISTA NO CHEQUE
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'CHEQUE'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// VENDA Á VISTA NO CARTÃO
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where FORMA_VENDA = '+#39+'CARTÃO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final), ');
// TOTAL DE VENDAS Á VISTA
IBQuery_VendasVista.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_VendasVista.SQL.Add('where TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_VendasVista.SQL.Add('from VENDAS ');
IBQuery_VendasVista.SQL.Add('where TIPO_VENDA = '+#39+'Á VISTA'+#39+' and ');
IBQuery_VendasVista.SQL.Add('DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_VendasVista.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_VendasVista.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_VendasVista.SQL.Add('order by DATA_VENDA');
IBQuery_VendasVista.Open;
Screen.Cursor := crDefault;

// INFORMA O FLUXO DO TOTAL DE VENDAS
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_TotalVendas.Close;
IBQuery_TotalVendas.SQL.Clear;
IBQuery_TotalVendas.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL DE VENDAS
IBQuery_TotalVendas.SQL.Add('(select count (NUMERO_CONTRATO) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final), ');
// VALOR TOTAL DE VENDAS
IBQuery_TotalVendas.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_TotalVendas.SQL.Add('from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_TotalVendas.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_TotalVendas.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_TotalVendas.SQL.Add('order by DATA_VENDA');
IBQuery_TotalVendas.Open;
Screen.Cursor := crDefault;

if FrmRelFluxoB <> Nil then Exit;
FrmRelFluxoB := TFrmRelFluxoB.Create(self);
FrmRelFluxoB.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelFluxoB.QuickRep1.Preview;
FrmRelFluxoB.Free;
FrmRelFluxoB := Nil;
end;

procedure TFrmFluxoB.PageControlChange(Sender: TObject);
begin
case PageControl.TabIndex of
    0: begin // fluxo
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
    DBGrid_Fluxo.DataSource:= DmFluxo.DS_B;
    end;
    1: begin // carnê
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
    DBGrid_Fluxo.DataSource:= DS_Carne;
    end;
    2: begin // boleto
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
     DBGrid_Fluxo.DataSource:= DS_Boleto;
    end;
    3: begin // cheque
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
     DBGrid_Fluxo.DataSource:= DS_Cheque;
    end;
    4: begin // cartão
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
     DBGrid_Fluxo.DataSource:= DS_Cartao;
    end;
    5: begin // vendas s prazo
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
     DBGrid_Fluxo.DataSource:= DS_VendasPrazo;
    end;
    6: begin // vendas a vista
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
     DBGrid_Fluxo.DataSource:= DS_VendasVista;
    end;
    7: begin // total vendas
    BtnRefresh.Caption:= PageControl.ActivePage.Caption;
    DBGrid_Fluxo.DataSource:= DS_TotalVendas;
    ComboBoxVendedor.Items.Clear;
    Dm.IBDS_VENDEDOR.First;
    if not Dm.IBDS_VENDEDOR.Eof then
    repeat
    { seus comandos para a tabela }
    ComboBoxVendedor.Items.Add(Dm.IBDS_VENDEDORNOME_VENDEDOR.AsString);
    Dm.IBDS_VENDEDOR.Next;
    until Dm.IBDS_VENDEDOR.Eof;
    end;
end;
  BtnRefreshClick(Nil);
end;

procedure TFrmFluxoB.ComboBoxVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_TotalVendas.Close;
IBQuery_TotalVendas.SQL.Clear;
IBQuery_TotalVendas.SQL.Add('select ACRESCIMO, CODIGO, DATA_VENDA, DESCONTO, FORMA_VENDA, NOME_CLIENTE, NOME_VENDEDOR, NUMERO_CONTRATO, SUB_TOTAL, TIPO_VENDA, VALOR_TOTAL, ');
// TOTAL DE VENDAS
IBQuery_TotalVendas.SQL.Add('(select count (NUMERO_CONTRATO) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where NOME_VENDEDOR = '+#39+ComboBoxVendedor.Text+#39+' and  DATA_VENDA between :Inicio and :Final), ');
// VALOR TOTAL DE VENDAS POR VENDEDOR
IBQuery_TotalVendas.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where NOME_VENDEDOR = '+#39+ComboBoxVendedor.Text+#39+' and  DATA_VENDA between :Inicio and :Final) ');
// FINALIZA SELEÇÃO
IBQuery_TotalVendas.SQL.Add('from VENDAS ');
IBQuery_TotalVendas.SQL.Add('where NOME_VENDEDOR = '+#39+ComboBoxVendedor.Text+#39+' and  DATA_VENDA between :Inicio and :Final ');
// PARÂMETROS
IBQuery_TotalVendas.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_TotalVendas.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_TotalVendas.SQL.Add('order by DATA_VENDA');
IBQuery_TotalVendas.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmFluxoB.DBGrid_FluxoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
if DBGrid_Fluxo.DataSource <> DmFluxo.DS_B then
begin
Exit;
end else
Data1:= DateToStr(Dia1.Date);
Data2:= DateToStr(Dia2.Date);
Valor:= DmFluxo.cds_BFluxoVALOR.AsString;
Label_SaldoCaixa.Caption:= FormatFloat('R$ #,##0.00', StrToFloat(Valor));
end;

procedure TFrmFluxoB.Timer1Timer(Sender: TObject);
begin
Dia1.Time:= Time;
Dia2.Time:= Time;
end;

procedure TFrmFluxoB.Recebimentos;
begin
Panel2.Caption:= 'Recebimentos de: '+DateToStr(Dia1.Date)+' à '+DateToStr(Dia2.Date);
//RECEBIMENTOS CARNE
Screen.Cursor := crHourGlass;
IBQuery_RCarne.Close;
IBQuery_RCarne.SQL.Clear;
IBQuery_RCarne.SQL.Add('select DATA_PAGAMENTO, TOTAL_PAGO, ');
IBQuery_RCarne.SQL.Add('(select sum (TOTAL_PAGO) from CARNE ');
IBQuery_RCarne.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final) ');
IBQuery_RCarne.SQL.Add('from CARNE ');
IBQuery_RCarne.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final ');
IBQuery_RCarne.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_RCarne.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_RCarne.SQL.Add('order by DATA_PAGAMENTO');
IBQuery_RCarne.Open;
//RECEBIMENTOS BOLETO
IBQuery_RBoleto.Close;
IBQuery_RBoleto.SQL.Clear;
IBQuery_RBoleto.SQL.Add('select DATA_PAGAMENTO, TOTAL_PAGO, ');
IBQuery_RBoleto.SQL.Add('(select sum (TOTAL_PAGO) from BOLETO ');
IBQuery_RBoleto.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final) ');
IBQuery_RBoleto.SQL.Add('from BOLETO ');
IBQuery_RBoleto.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final ');
IBQuery_RBoleto.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_RBoleto.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_RBoleto.SQL.Add('order by DATA_PAGAMENTO');
IBQuery_RBoleto.Open;
//RECEBIMENTOS CHEQUE
IBQuery_RCheque.Close;
IBQuery_RCheque.SQL.Clear;
IBQuery_RCheque.SQL.Add('select DATA_PAGAMENTO, TOTAL_PAGO, ');
IBQuery_RCheque.SQL.Add('(select sum (TOTAL_PAGO) from CHEQUE ');
IBQuery_RCheque.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final) ');
IBQuery_RCheque.SQL.Add('from CHEQUE ');
IBQuery_RCheque.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final ');
IBQuery_RCheque.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_RCheque.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_RCheque.SQL.Add('order by DATA_PAGAMENTO');
IBQuery_RCheque.Open;
//RECEBIMENTOS CARTÃO
IBQuery_RCartao.Close;
IBQuery_RCartao.SQL.Clear;
IBQuery_RCartao.SQL.Add('select DATA_PAGAMENTO, TOTAL_PAGO, ');
IBQuery_RCartao.SQL.Add('(select sum (TOTAL_PAGO) from CARTAO ');
IBQuery_RCartao.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final) ');
IBQuery_RCartao.SQL.Add('from CARTAO ');
IBQuery_RCartao.SQL.Add('where DATA_PAGAMENTO between :Inicio and :Final ');
IBQuery_RCartao.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_RCartao.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_RCartao.SQL.Add('order by DATA_PAGAMENTO');
IBQuery_RCartao.Open;
//RECEBIMENTOS DINHEIRO
IBQuery_RDinheiro.Close;
IBQuery_RDinheiro.SQL.Clear;
IBQuery_RDinheiro.SQL.Add('select DATA_VENDA, VALOR_TOTAL, ');
IBQuery_RDinheiro.SQL.Add('(select sum (VALOR_TOTAL) from VENDAS ');
IBQuery_RDinheiro.SQL.Add('where FORMA_VENDA = '+#39+'DINHEIRO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and DATA_VENDA between :Inicio and :Final) ');
IBQuery_RDinheiro.SQL.Add('from VENDAS ');
IBQuery_RDinheiro.SQL.Add('where FORMA_VENDA = '+#39+'DINHEIRO'+#39+' and TIPO_VENDA = '+#39+'Á VISTA'+#39+' and DATA_VENDA between :Inicio and :Final ');
IBQuery_RDinheiro.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_RDinheiro.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_RDinheiro.SQL.Add('order by DATA_VENDA');
IBQuery_RDinheiro.Open;
//RECEBIMENTOS OUTROS
IBQuery_ROutros.Close;
IBQuery_ROutros.SQL.Clear;
IBQuery_ROutros.SQL.Add('select DATA, VALOR, ');
IBQuery_ROutros.SQL.Add('(select sum (VALOR) from AENTRADA ');
IBQuery_ROutros.SQL.Add('where ND_SEU_NUMERO = '+#39+'0'+#39+' and DATA between :Inicio and :Final) ');
IBQuery_ROutros.SQL.Add('from AENTRADA ');
IBQuery_ROutros.SQL.Add('where ND_SEU_NUMERO = '+#39+'0'+#39+' and DATA between :Inicio and :Final ');
IBQuery_ROutros.ParamByName('Inicio').AsDate:= Dia1.Date;
IBQuery_ROutros.ParamByName('Final').AsDate:= Dia2.Date;
IBQuery_ROutros.SQL.Add('order by DATA');
IBQuery_ROutros.Open;
Label_Carne.Caption:= FormatFloat('R$ #,##0.00', IBQuery_RCarneF_1.AsFloat);
Label_Boleto.Caption:= FormatFloat('R$ #,##0.00', IBQuery_RBoletoF_1.AsFloat);
Label_Cheque.Caption:= FormatFloat('R$ #,##0.00', IBQuery_RChequeF_1.AsFloat);
Label_Cartao.Caption:= FormatFloat('R$ #,##0.00', IBQuery_RCartaoF_1.AsFloat);
Label_Outros.Caption:= FormatFloat('R$ #,##0.00', IBQuery_ROutrosF_1.AsFloat);
Label_Dinheiro.Caption:= FormatFloat('R$ #,##0.00', IBQuery_RDinheiroF_1.AsFloat);
Label_Outros.Caption:= FormatFloat('R$ #,##0.00', IBQuery_ROutrosF_1.AsFloat);
V1:= IBQuery_RCarneF_1.AsFloat;
V2:= IBQuery_RBoletoF_1.AsFloat;
V3:= IBQuery_RChequeF_1.AsFloat;
V4:= IBQuery_RCartaoF_1.AsFloat;
V5:= IBQuery_RDinheiroF_1.AsFloat;
V6:= IBQuery_ROutrosF_1.AsFloat;
Total:= V1 + V2 + V3 + V4 + V5 + V6;
Label_RTotal.Caption:= FormatFloat('R$ #,##0.00', Total);
Screen.Cursor := crDefault;
end;

end.
