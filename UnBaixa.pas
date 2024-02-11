unit UnBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls, Mask, ExtCtrls,
  ComCtrls, Buttons, Grids, DBGrids;

type
  TFrmBaixa = class(TForm)
    IBQuery_Contratos: TIBQuery;
    Ds_Contratos: TDataSource;
    DBGrid_Contratos: TDBGrid;
    CBox_Contrato: TComboBox;
    BtnFechar: TBitBtn;
    IBQuery_Vendas: TIBQuery;
    IBQuery_VendasNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasNOME_CLIENTE: TIBStringField;
    Label2: TLabel;
    Label3: TLabel;
    Btn_Baixa: TBitBtn;
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
    TabSheet3: TTabSheet;
    Memo1: TDBMemo;
    DBEdit1: TDBEdit;
    CBox_Fatura: TComboBox;
    Label1: TLabel;
    IBQuery_TipoFatura: TIBQuery;
    DS_TipoFatura: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery_Itens: TIBQuery;
    DS_Itens: TDataSource;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    IBQuery_ContratosCOD_VEND: TIntegerField;
    IBQuery_ContratosNUMERO_CONTRATO: TIBStringField;
    IBQuery_ContratosDATA_VENDA: TDateTimeField;
    IBQuery_ContratosNOME_CLIENTE: TIBStringField;
    IBQuery_ContratosNOME_VENDEDOR: TIBStringField;
    IBQuery_ContratosNOME_MEDICO: TIBStringField;
    IBQuery_ContratosCODIGO: TIBStringField;
    IBQuery_ContratosCPF: TIBStringField;
    IBQuery_ContratosTIPO_VENDA: TIBStringField;
    IBQuery_ContratosFORMA_VENDA: TIBStringField;
    IBQuery_ContratosSUB_TOTAL: TIBBCDField;
    IBQuery_ContratosACRESCIMO: TIBBCDField;
    IBQuery_ContratosDESCONTO: TIBBCDField;
    IBQuery_ContratosVALOR_TOTAL: TIBBCDField;
    IBQuery_ContratosARMACAO_COD: TIBStringField;
    IBQuery_ContratosARMACAO_TAMANHO: TIBStringField;
    IBQuery_ContratosARMACAO_COR: TIBStringField;
    IBQuery_ContratosLONGE_OD_ESF: TIBStringField;
    IBQuery_ContratosLONGE_OD_CIL: TIBStringField;
    IBQuery_ContratosLONGE_OD_EIXO: TIBStringField;
    IBQuery_ContratosLONGE_OD_DNP: TIBStringField;
    IBQuery_ContratosLONGE_OE_ESF: TIBStringField;
    IBQuery_ContratosLONGE_OE_CIL: TIBStringField;
    IBQuery_ContratosLONGE_OE_EIXO: TIBStringField;
    IBQuery_ContratosLONGE_OE_DNP: TIBStringField;
    IBQuery_ContratosLONGE_ALTURA_OD: TIBStringField;
    IBQuery_ContratosLONGE_ALTURA_OD_LENTES: TIBStringField;
    IBQuery_ContratosLONGE_ALTURA_OE: TIBStringField;
    IBQuery_ContratosLONGE_ALTURA_OE_LENTES: TIBStringField;
    IBQuery_ContratosLONGE_ADICAO: TIBStringField;
    IBQuery_ContratosLONGE_DP: TIBStringField;
    IBQuery_ContratosPERTO_OD_ESF: TIBStringField;
    IBQuery_ContratosPERTO_OD_CIL: TIBStringField;
    IBQuery_ContratosPERTO_OD_EIXO: TIBStringField;
    IBQuery_ContratosPERTO_OD_DNP: TIBStringField;
    IBQuery_ContratosPERTO_OE_ESF: TIBStringField;
    IBQuery_ContratosPERTO_OE_CIL: TIBStringField;
    IBQuery_ContratosPERTO_OE_EIXO: TIBStringField;
    IBQuery_ContratosPERTO_OE_DNP: TIBStringField;
    IBQuery_ContratosPERTO_DP: TIBStringField;
    IBQuery_ContratosPERTO_LENTES: TIBStringField;
    IBQuery_ContratosOBS: TMemoField;
    IBQuery_TipoFaturaNUMERO_PARCELA: TIBStringField;
    IBQuery_TipoFaturaVALOR_PARCELA: TIBBCDField;
    IBQuery_TipoFaturaDATA_VENCIMENTO: TDateTimeField;
    IBQuery_TipoFaturaNUMERO_CONTRATO: TIBStringField;
    IBQuery_TipoFaturaNOME_CLIENTE: TIBStringField;
    IBQuery_TipoFaturaQUANT_PARCELAS: TIBStringField;
    IBQuery_ItensCOD_PROD: TIBStringField;
    IBQuery_ItensDESCRICAO: TIBStringField;
    IBQuery_ItensNUMERO_CONTRATO: TIBStringField;
    IBQuery_ItensQUANTIDADE: TIntegerField;
    IBQuery_ItensVALOR_TOTAL: TIBBCDField;
    IBQuery_ItensVALOR_UNITARIO: TIBBCDField;
    IBQuery_ContratosOPCAO_VENDA: TIBStringField;
    IBQueryBaixa: TIBQuery;
    CBox_Cliente: TDBText;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_BaixaClick(Sender: TObject);
    procedure DBGrid_ContratosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CBox_FaturaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixa: TFrmBaixa;
  Tipo: String;
  Financiado: Real;

implementation

uses UnDm, UnPrincipal, UnRelReimpComp, UnCaixa;

{$R *.dfm}

procedure TFrmBaixa.FormShow(Sender: TObject);
begin
FrmBaixa.Top:=106;
FrmBaixa.Left:=132;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmBaixa.Caption:= FrmBaixa.Caption;
Exit;
end else
FrmBaixa.Caption:= FrmBaixa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmBaixa.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmBaixa.CBox_ContratoKeyPress(Sender: TObject;
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
if IBQuery_Vendas.Active <> True then
begin
CBox_Fatura.SetFocus;
Exit;
end else
if CBox_Fatura.Text = '' then
begin
CBox_Fatura.SetFocus;
Exit;
end else
if CBox_Contrato.Text = '' then
begin
CBox_Contrato.SetFocus;
Exit;
end else
NC:= CBox_Contrato.Text;
if not IBQuery_Vendas.Locate('NUMERO_CONTRATO', NC, []) then
begin
ShowMessage('O contrato não existe.');
Btn_Baixa.Enabled:= False;
Exit;
end else
Btn_Baixa.Enabled:= True;
//CBox_Cliente.Text:= IBQuery_VendasNOME_CLIENTE.AsString;
//CBox_Cliente.SetFocus;

Screen.Cursor := crHourGlass;
// SELECIONA OS CONTRATOS
IBQuery_Contratos.Close;
IBQuery_Contratos.SQL.Clear;
IBQuery_Contratos.SQL.Add('select * from VENDAS ');
IBQuery_Contratos.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_Contratos.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Contratos.ParamByName('NC').AsString := NC;
IBQuery_Contratos.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_Contratos.Prepare;
IBQuery_Contratos.Open;

IBQuery_TipoFatura.Close;
IBQuery_TipoFatura.SQL.Clear;
if CBox_Fatura.Text = 'DINHEIRO' then
begin
IBQuery_Itens.Close;
IBQuery_Itens.SQL.Clear;
IBQuery_Itens.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
IBQuery_Itens.SQL.Add('where NUMERO_CONTRATO = :NC ');
IBQuery_Itens.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Itens.ParamByName('NC').AsString := NC;
IBQuery_Itens.Prepare;
IBQuery_Itens.Open;
Screen.Cursor := crDefault;
Btn_Baixa.SetFocus;
Exit;
end else
if CBox_Fatura.Text = 'CARNÊ' then
begin
IBQuery_TipoFatura.SQL.Add('select NUMERO_PARCELA, VALOR_PARCELA, DATA_VENCIMENTO, NUMERO_CONTRATO, NOME_CLIENTE, QUANT_PARCELAS from CARNE ');
IBQuery_TipoFatura.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_TipoFatura.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_TipoFatura.ParamByName('NC').AsString := NC;
IBQuery_TipoFatura.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_TipoFatura.Prepare;
IBQuery_TipoFatura.Open;

IBQuery_Itens.Close;
IBQuery_Itens.SQL.Clear;
IBQuery_Itens.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
IBQuery_Itens.SQL.Add('where NUMERO_CONTRATO = :NC ');
IBQuery_Itens.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Itens.ParamByName('NC').AsString := NC;
IBQuery_Itens.Prepare;
IBQuery_Itens.Open;
Screen.Cursor := crDefault;
Btn_Baixa.SetFocus;
Exit;
end else
if CBox_Fatura.Text = 'BOLETO' then
begin
IBQuery_TipoFatura.SQL.Add('select NUMERO_PARCELA, VALOR_PARCELA, DATA_VENCIMENTO, NUMERO_CONTRATO, NOME_CLIENTE, QUANT_PARCELAS from BOLETO');
IBQuery_TipoFatura.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_TipoFatura.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_TipoFatura.ParamByName('NC').AsString := NC;
IBQuery_TipoFatura.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_TipoFatura.Prepare;
IBQuery_TipoFatura.Open;

IBQuery_Itens.Close;
IBQuery_Itens.SQL.Clear;
IBQuery_Itens.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
IBQuery_Itens.SQL.Add('where NUMERO_CONTRATO = :NC ');
IBQuery_Itens.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Itens.ParamByName('NC').AsString := NC;
IBQuery_Itens.Prepare;
IBQuery_Itens.Open;
Screen.Cursor := crDefault;
Btn_Baixa.SetFocus;
Exit;
end else
if CBox_Fatura.Text = 'CHEQUE' then
begin
IBQuery_TipoFatura.SQL.Add('select NUMERO_PARCELA, VALOR_PARCELA, DATA_VENCIMENTO, NUMERO_CONTRATO, NOME_CLIENTE, QUANT_PARCELAS from CHEQUE');
IBQuery_TipoFatura.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_TipoFatura.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_TipoFatura.ParamByName('NC').AsString := NC;
IBQuery_TipoFatura.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_TipoFatura.Prepare;
IBQuery_TipoFatura.Open;

IBQuery_Itens.Close;
IBQuery_Itens.SQL.Clear;
IBQuery_Itens.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
IBQuery_Itens.SQL.Add('where NUMERO_CONTRATO = :NC ');
IBQuery_Itens.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Itens.ParamByName('NC').AsString := NC;
IBQuery_Itens.Prepare;
IBQuery_Itens.Open;
Screen.Cursor := crDefault;
Btn_Baixa.SetFocus;
Exit;
end else
if CBox_Fatura.Text = 'CARTÃO' then
begin
IBQuery_TipoFatura.SQL.Add('select NUMERO_PARCELA, VALOR_PARCELA, DATA_VENCIMENTO, NUMERO_CONTRATO, NOME_CLIENTE, QUANT_PARCELAS from CARTAO');
IBQuery_TipoFatura.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_TipoFatura.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_TipoFatura.ParamByName('NC').AsString := NC;
IBQuery_TipoFatura.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_TipoFatura.Prepare;
IBQuery_TipoFatura.Open;

IBQuery_Itens.Close;
IBQuery_Itens.SQL.Clear;
IBQuery_Itens.SQL.Add('select BAIRRO, CEP, CIDADE, CNPJ, EMAIL, ENDERECO, ESTADO_UF, IE, TELEFONE, COD_PROD, DESCRICAO, NUMERO_CONTRATO, QUANTIDADE, VALOR_TOTAL, VALOR_UNITARIO from EMPRESA,ITEM ');
IBQuery_Itens.SQL.Add('where NUMERO_CONTRATO = :NC ');
IBQuery_Itens.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Itens.ParamByName('NC').AsString := NC;
IBQuery_Itens.Prepare;
IBQuery_Itens.Open;
Screen.Cursor := crDefault;
Btn_Baixa.SetFocus;
end;

end;
end;

procedure TFrmBaixa.Btn_BaixaClick(Sender: TObject);
begin
Screen.Cursor:= crHourGlass;
// SELECIONA OS ITENS
IBQueryBaixa.Close;
IBQueryBaixa.SQL.Clear;
IBQueryBaixa.SQL.Add('select COD_PROD, NUMERO_CONTRATO, QUANTIDADE from ITEM');
IBQueryBaixa.SQL.Add('where NUMERO_CONTRATO =:Contrato ');
IBQueryBaixa.SQL.Add('order by COD_PROD');
IBQueryBaixa.ParamByName('Contrato').AsString := NC;
IBQueryBaixa.Open;
//  Percorre itens
    IBQueryBaixa.First;
    if not IBQueryBaixa.Eof then
    repeat
    { seus comandos para a tabela }
// Atualiza estoque - Restituir produto
Dm.IBDS_ESTOQUE.First; // coloca no inicio
While not Dm.IBDS_ESTOQUE.Eof Do // enquanto nao chegar no final
begin
If Dm.IBDS_ESTOQUECOD_PROD.AsString = IBQueryBaixa.FieldByName('COD_PROD').AsString then
begin
//Dm.IBDS_ESTOQUE.Locate('COD_PROD', IBQueryBaixa.FieldByName('COD_PROD').AsString,[]);
Dm.IBDS_ESTOQUE.Edit;
Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger:= Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger + IBQueryBaixa.FieldByName('QUANTIDADE').AsInteger;
Dm.IBDS_ESTOQUEVALOR_TOTAL.AsFloat:= Dm.IBDS_ESTOQUEVALOR_UNITARIO.AsFloat*Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
end;
Dm.IBDS_ESTOQUE.Next; // nao encontrando avança para proximo produto
end;
IBQueryBaixa.Next;
    until IBQueryBaixa.Eof;
// Apaga a venda
IBQueryBaixa.Close;
IBQueryBaixa.Sql.Clear;
IBQueryBaixa.SQL.Add('Delete from VENDAS ');
IBQueryBaixa.SQL.Add('where NUMERO_CONTRATO =:NC');
IBQueryBaixa.ParamByName('NC').AsString:= NC;
IBQueryBaixa.ExecSQL;
// Apaga os itens da venda
IBQueryBaixa.Close;
IBQueryBaixa.Sql.Clear;
IBQueryBaixa.SQL.Add('Delete from ITEM ');
IBQueryBaixa.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
IBQueryBaixa.ParamByName('NumContrato').AsString:= NC;
IBQueryBaixa.ExecSQL;
// Apaga as parcelas do carnê
IBQueryBaixa.Close;
IBQueryBaixa.Sql.Clear;
IBQueryBaixa.SQL.Add('Delete from CARNE ');
IBQueryBaixa.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
IBQueryBaixa.ParamByName('NumContrato').AsString:= NC;
IBQueryBaixa.ExecSQL;         
Screen.Cursor := crDefault;
ShowMessage('Exclusão efetuada.');
CBox_Contrato.Text:= '';
CBox_Contrato.Text:= '';
IBQuery_Vendas.Close;
IBQuery_Contratos.Close;
IBQuery_TipoFatura.Close;
IBQuery_Itens.Close;
CBox_Fatura.SetFocus;
Btn_Baixa.Enabled:= False;
end;

procedure TFrmBaixa.DBGrid_ContratosKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Baixa.SetFocus;
end;
end;

procedure TFrmBaixa.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmBaixa.CBox_FaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if (CBox_Fatura.Text <> 'CARNÊ') and (CBox_Fatura.Text <> 'BOLETO') and (CBox_Fatura.Text <> 'CHEQUE') and (CBox_Fatura.Text <> 'CARTÃO') and (CBox_Fatura.Text <> 'DINHEIRO') then
begin
CBox_Fatura.Text:='CARNÊ';
end else
if CBox_Fatura.Text = 'DINHEIRO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS A VISTA
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where TIPO_VENDA = :TVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('TVenda').AsString := 'Á VISTA';
IBQuery_Vendas.Prepare;
IBQuery_Vendas.Open;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if CBox_Fatura.Text = 'CARNÊ' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS NO CARNÊ
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where FORMA_VENDA = :FVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('FVenda').AsString := 'CARNÊ';
IBQuery_Vendas.Prepare;
IBQuery_Vendas.Open;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
    CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if CBox_Fatura.Text = 'BOLETO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS NO BOLETO
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where FORMA_VENDA = :FVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('FVenda').AsString := 'BOLETO BANCÁRIO';
IBQuery_Vendas.Prepare;
IBQuery_Vendas.Open;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if CBox_Fatura.Text = 'CHEQUE' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS NO CHEQUE
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where FORMA_VENDA = :FVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('FVenda').AsString := 'CHEQUE';
IBQuery_Vendas.Prepare;
IBQuery_Vendas.Open;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if CBox_Fatura.Text = 'CARTÃO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS NO CARTÃO
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where FORMA_VENDA = :FVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('FVenda').AsString := 'CARTÃO';
IBQuery_Vendas.Prepare;
IBQuery_Vendas.Open;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
end;
CBox_Contrato.SetFocus;
end;
end;

procedure TFrmBaixa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  DBGrid2.SetFocus;
end;
end;

procedure TFrmBaixa.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Baixa.SetFocus;
end;
end;

end.
