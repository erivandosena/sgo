unit UnCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, DB, Menus, IBQuery, StdCtrls, DBCtrls,
  ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DateUtils, DBClient;

type
  TFrmCaixa = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBText3: TDBText;
    Label57: TLabel;
    DBText2: TDBText;
    Label56: TLabel;
    Label54: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    SbSalvar: TBitBtn;
    DBGrid2: TDBGrid;
    CBox_Quantidade: TComboBox;
    BtnCI: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    Panel_CaixaLivre1: TPanel;
    Label4: TLabel;
    ComboBoxTipo: TComboBox;
    Label5: TLabel;
    ComboBoxForma: TComboBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    Localizar1: TMenuItem;
    AdicionarProduto1: TMenuItem;
    RemoverProduto1: TMenuItem;
    Edit1: TMaskEdit;
    Label9: TLabel;
    Bevel1: TBevel;
    Label11: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    ComboBoxNP: TComboBox;
    ComboBoxOpcaoVenda: TComboBox;
    Label7: TLabel;
    Label32: TLabel;
    DBCBox_Vendedor: TDBComboBox;
    ComboBoxGrupo: TComboBox;
    MaskEdit_VI: TMaskEdit;
    Label67: TLabel;
    CBox_Confirma: TComboBox;
    ME_Cliente: TMaskEdit;
    Panel_Fracao: TPanel;
    IBQuery_Produtos: TIBQuery;
    IBQuery_ProdutosCOD_PROD: TIBStringField;
    IBQuery_ProdutosNOME_PRODUTO: TIBStringField;
    IBQuery_ProdutosDESCRICAO: TIBStringField;
    IBQuery_ProdutosVALOR_UNITARIO: TIBBCDField;
    IBQuery_ProdutosQUANTIDADE_ESTOQUE: TIntegerField;
    IBQuery_ProdutosESTOQUE_MINIMO: TIntegerField;
    DataSourceProdutos: TDataSource;
    IBQuery_ItemVenda: TIBQuery;
    IBQuery_ItemVendaCOD_PROD: TIBStringField;
    IBQuery_ItemVendaNUMERO_CONTRATO: TIBStringField;
    IBQuery_ItemVendaNOME_PRODUTO: TIBStringField;
    IBQuery_ItemVendaDESCRICAO: TIBStringField;
    IBQuery_ItemVendaQUANTIDADE: TIntegerField;
    IBQuery_ItemVendaVALOR_UNITARIO: TIBBCDField;
    IBQuery_ItemVendaVALOR_TOTAL: TIBBCDField;
    DataSourceItemVenda: TDataSource;
    IBQuery_VE: TIBQuery;
    IBQuery_VEFORMA_VENDA: TIBStringField;
    IBQuery_VENOME_CLIENTE: TIBStringField;
    IBQuery_VECODIGO: TIBStringField;
    IBQuery_VENUMERO_CONTRATO: TIBStringField;
    IBQuery_VETIPO_VENDA: TIBStringField;
    IBQuery_VEDESCONTO: TIBBCDField;
    IBQuery_VESUB_TOTAL: TIBBCDField;
    IBQuery_VEVALOR_TOTAL: TIBBCDField;
    IBQuery_VENOME_MEDICO: TIBStringField;
    IBQuery_VENOME_VENDEDOR: TIBStringField;
    IBQuery_VEACRESCIMO: TIBBCDField;
    IBQueryVenda: TIBQuery;
    Panel1: TPanel;
    ComboBoxOpcao: TComboBox;
    SbNovo: TBitBtn;
    SbFecha: TBitBtn;
    Label74: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxTipoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_QuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxTipoExit(Sender: TObject);
    procedure ComboBoxTipoChange(Sender: TObject);
    procedure BtnCIClick(Sender: TObject);
    procedure ComboBoxFormaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Localizar1Click(Sender: TObject);
    procedure ComboBoxGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure SbFechaClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboBoxNPKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxOpcaoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxOpcaoChange(Sender: TObject);
    procedure ComboBoxOpcaoVendaChange(Sender: TObject);
    procedure ComboBoxOpcaoVendaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxFormaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_ParcelasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ComboBoxNPExit(Sender: TObject);
    procedure DBCBox_VendedorKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_VIKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxGrupoExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure CBox_ConfirmaKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_ConfirmaChange(Sender: TObject);
    procedure ME_ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_VencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure IBQuery_EstornoEAfterDelete(DataSet: TDataSet);
    procedure IBQuery_EstornoSAfterDelete(DataSet: TDataSet);
    procedure ComboBoxNPChange(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_VencimentoExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WMMove(var Msg: TWMMove); message WM_MOVE;
    function DifDateUtil(dataini,datafin:string):integer;
    function ObterNumero(var Numero_Documento: string): boolean;
    function ObterNumeros(var Numero_Documento, Nosso_Numero: string): boolean;
    function ObterDataPagamento(var Data_Pago: string): boolean;
    function ObterLente(var Codigo, Descricao: string): boolean;
    procedure tbSetCapsLock(State: boolean);
  end;

var
  FrmCaixa: TFrmCaixa;
   // Usados na venda
  Opcao, NC, CP, ProdSelecionado, NCarne, TipoVenda, FormaVenda, OpcaoVenda, Geradas,
  NumeroDoDoc, CodigoLente, DataVenda: String;
  ValorVenda, SubTotal, VEntrada, DescontoVV, AcrescimoVV, VFinanciado, VTCalculo, VJParcela, VDParcela,
  VTVCalculado, ValorDaParcela:Real;
  Quantidade_Vendida, Fracao, NumeroDeParcelas, FracaoParcelas, PdP, i, iOK: Integer;
  QuantEstoque, EstqMinimo, QuantInformada: Double;
  // Usados na entrada
  Percentual1, Troco, ValorAApagar, ValorMultaMeses,
  TotalMultaMes, TotalJurosDia, TotalAcrescimo, TotalComMJ,
  Total, ValorPago, ValorPendente: Real;
  DtaVencimento: TDateTime;
  NumeroDeDias, NumeroDeMeses, NumeroContrato, SituacaoParcela,
  EstornoSai, EstornoEnt, DadosEstornoE, DadosEstornoS, NumContrato, NumParcela, Data_Pago: String;
  Dias, Meses: Double;
  LimparDados: Integer;
  S : Array[0..255] of Char;

implementation

uses UnDm, UnPrincipal, UnLocalizar, UnRelCarne, UnRelRecibo,
  UnRelAltentica, UnDmFluxo, UnRelComprovante, UnRelReciboVA, UnCaixaVenda,
  UnProdutos, UnCaixaEntrada, UnCaixaSaida, UnCaixaOutrasEntradas;

{$R *.dfm}

procedure TFrmCaixa.FormShow(Sender: TObject);
begin
FrmCaixa.Top:=0;
FrmCaixa.Left:=0;
ComboBoxOpcao.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCaixa.Caption:= FrmCaixa.Caption;
Exit;
end else
FrmCaixa.Caption:= FrmCaixa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCaixa.SbNovoClick(Sender: TObject);
begin
IBQueryVenda.Close;
IBQueryVenda.SQL.Clear;
IBQueryVenda.SQL.Add('select CODIGO, NUMERO_CONTRATO from VENDAS ');
IBQueryVenda.SQL.Add('order by NUMERO_CONTRATO, CODIGO');
IBQueryVenda.Prepare;
IBQueryVenda.Open;
// Testa Confirmação de Lançamento
if ComboBoxOpcao.Text = '' then
begin
SbNovo.Caption:='No&vo Lançamento';
ComboBoxOpcao.Enabled:= True;
ComboBoxOpcao.SetFocus;
Exit;
end else
// Verifica se é uma Venda
if Opcao = 'VENDA' then
begin
if SbNovo.Caption = 'No&vo Lançamento -> '+Opcao then
begin
// INÍCIO DOS COMANDOS DA VENDA
Screen.Cursor := crHourGlass;
Panel_CaixaLivre1.Visible:= False;
ComboBoxOpcao.Enabled:= False;
ComboBoxGrupo.Text:= '<<<<<< TODOS >>>>>>';
Edit1.Text:= '';
DBCBox_Vendedor.Text:= '';
ME_Cliente.Text:= '';
CBox_Quantidade.Text:= '1';
CBox_Confirma.Text:= '';
ComboBoxTipo.Text:= '';
ComboBoxForma.Text:= '';
Dm.IBDS_VENDAS.Close;
Dm.IBDS_VENDAS.Open;
Dm.IBDS_ITEM.Close;
Dm.IBDS_ITEM.Open;
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
Dm.IBDS_CHEQUE.Close;
Dm.IBDS_CHEQUE.Open;
Dm.IBDS_CARTAO.Close;
Dm.IBDS_CARTAO.Open;
Dm.IBDS_BOLETO.Close;
Dm.IBDS_BOLETO.Open;
IBQuery_VE.Close;
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
IBQuery_ItemVenda.Close;
Dm.IBDS_VENDAS.Last;
Dm.IBDS_VENDAS.Append;
Dm.IBDS_VENDAS.FieldByName('NUMERO_CONTRATO').asString:= Dm.IBDS_VENDASCOD_VEND.asString;
Dm.IBDS_VENDAS.FieldByName('NUMERO_CONTRATO').asString := FrmPrincipal.ZeroEsquerda(strtoint(Dm.IBDS_VENDASNUMERO_CONTRATO.asString), 4);
Dm.IBDS_VENDAS.FieldByName('DATA_VENDA').asDateTime :=Data;
Dm.IBDS_VENDAS.FieldByName('DATA_VENDA').asString:=FormatDateTime('dd/mm/yyyy',StrtoDate(Dm.IBDS_VENDASDATA_VENDA.asString));
NC:= Dm.IBDS_VENDASNUMERO_CONTRATO.AsString;
if IBQueryVenda.Locate('NUMERO_CONTRATO', NC, []) then
begin
ShowMessage('Nº de contrato já existente, informe outro.');
DBEdit1.SetFocus;
Exit;
end else
SbNovo.Caption:= '&Cancelar '+Opcao;
//  ADICIONA VENDEDERES
    DBCBox_Vendedor.Items.Clear;
    Dm.IBDS_VENDEDOR.First;
    if not Dm.IBDS_VENDEDOR.Eof then
    repeat
    { seus comandos para a tabela }
    DBCBox_Vendedor.Items.Add(Dm.IBDS_VENDEDORNOME_VENDEDOR.AsString);
    Dm.IBDS_VENDEDOR.Next;
    until Dm.IBDS_VENDEDOR.Eof;

IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO =:NumContrato');
IBQuery_ItemVenda.ParamByName('NumContrato').AsString:= NC;
IBQuery_ItemVenda.Open;
DBCBox_Vendedor.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
// Inicia o Cancelamento da Venda
if DBGrid2.Fields[0].Text <> '' then
begin
ShowMessage('Por favor, remova o(s) produto(s) adicionado(s).');
CBox_Confirma.ItemIndex:= 1;
CBox_Confirma.SetFocus;
Exit;
end else
// Cancela a venda
Dm.IBDS_VENDAS.Cancel;
Dm.IBDS_VENDAS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
// Cancela o item
Dm.IBDS_ITEM.Cancel;
Dm.IBDS_ITEM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
// Apaga a venda
IBQueryVenda.Close;
IBQueryVenda.Sql.Clear;
IBQueryVenda.SQL.Add('Delete from VENDAS ');
IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NC');
IBQueryVenda.ParamByName('NC').AsString:= NC;
IBQueryVenda.ExecSQL;
// Apaga os itens da venda
IBQueryVenda.Close;
IBQueryVenda.Sql.Clear;
IBQueryVenda.SQL.Add('Delete from ITEM ');
IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NumContrato');
IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
IBQueryVenda.ExecSQL;
IBQueryVenda.Close;
IBQuery_ItemVenda.Close;
IBQuery_Produtos.Close;
IBQuery_VE.Close;
MaskEdit_VI.Enabled:= True;
DBCBox_Vendedor.Enabled:= True;
ME_Cliente.Enabled:= True;
ComboBoxGrupo.Enabled:= True;
ComboBox4.Enabled:= True;
DBEdit1.Enabled:= True;
Edit1.Enabled:= True;
DBGrid1.Enabled:= True;
CBox_Quantidade.Enabled:= True;
BtnCI.Enabled:= False;
CBox_Confirma.Enabled:= False;
DBGrid2.Enabled:= True;
SbNovo.Enabled:= True;
SbFecha.Enabled:= True;
ComboBoxTipo.Enabled:= True;
ComboBoxForma.Enabled:= True;
ComboBoxNP.Enabled:= True;
ComboBoxOpcaoVenda.Enabled:= True;
SbSalvar.Enabled:= False;
CBox_Confirma.Enabled:= True;
ComboBoxTipo.Text:= '';
ComboBoxForma.Text:= '';
SbNovo.Caption:= 'No&vo Lançamento';
ComboBoxOpcao.Enabled:= True;
ComboBoxOpcao.Text:= '';
ComboBoxOpcaoVenda.Text:= '';
ComboBoxNP.Text:= '';
ComboBoxOpcao.SetFocus;
Panel_CaixaLivre1.Visible:= True;
Exit;
// FIM DOS COMANDOS DA VENDA
end else
// Verifica se é uma Entrada
if Opcao = 'ENTRADA' then
begin
if SbNovo.Caption = 'No&vo Lançamento -> ENTRADA' then
begin
// INÍCIO DOS COMANDOS DA ENTRADA
Panel_CaixaLivre1.Visible:= False;
SbNovo.Caption:= '&Executando '+Opcao;
FrmCaixaEntrada:= TFrmCaixaEntrada.Create(Application);
try
  FrmCaixaEntrada.ShowModal;
finally
  FrmCaixaEntrada.Free;
end;
Exit;
end else
// Inicia o cancelamento da Entrada
Panel_CaixaLivre1.Visible:= True;
SbFecha.Enabled:= True;
ComboBoxOpcao.Enabled:= True;
ComboBoxOpcao.Text:= '';
ComboBoxOpcao.SetFocus;
Exit;
// FIM DOS COMANDOS DA ENTRADA
end else
// Verifica se é uma Saída
if Opcao = 'SAÍDA' then
begin
if SbNovo.Caption = 'No&vo Lançamento -> SAÍDA' then
begin
// INÍCIO DOS COMANDOS DA SAÍDA
Panel_CaixaLivre1.Visible:= False;
SbNovo.Caption:= '&Executando '+Opcao;
FrmCaixaSaida:= TFrmCaixaSaida.Create(Application);
try
  FrmCaixaSaida.ShowModal;
finally
  FrmCaixaSaida.Free;
end;
Exit;
end else
// Inicia o cancelamento da Saída
SbNovo.Caption:= 'No&vo Lançamento';
ComboBoxOpcao.Enabled:= True;
ComboBoxOpcao.Text:= '';
ComboBoxOpcao.SetFocus;
// FIM DOS COMANDOS DA SAÍDA
end;
end;

procedure TFrmCaixa.SbSalvarClick(Sender: TObject);
begin
if ComboBoxTipo.Text = '' then
begin
ComboBoxTipo.SetFocus;
Exit;
end else
if ComboBoxForma.Text = '' then
begin
ComboBoxForma.SetFocus;
Exit;
end else
DataVenda:= DBText1.Caption;
TipoVenda:= ComboBoxTipo.Text;
FormaVenda:= ComboBoxForma.Text;
if ComboBoxNP.Text = '' then
begin
Fracao:= 0;
end else
Fracao:= StrToInt(ComboBoxNP.Text);
OpcaoVenda:= ComboBoxOpcaoVenda.Text;
IBQueryVenda.Close;
IBQueryVenda.SQL.Clear;
IBQueryVenda.SQL.Add('select sum (VALOR_TOTAL) from ITEM ');
IBQueryVenda.SQL.Add('where NUMERO_CONTRATO =:NC');
IBQueryVenda.ParamByName('NC').AsString:= NC;
IBQueryVenda.Open;
Dm.IBDS_VENDASSUB_TOTAL.AsString:= IBQueryVenda.FieldByName('F_1').AsString;
Dm.IBDS_VENDASTIPO_VENDA.asString:= TipoVenda;
Dm.IBDS_VENDASFORMA_VENDA.asString:= FormaVenda;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQueryVenda.Close;
//IBQuery_ItemVenda.Close;
IBQuery_Produtos.Close;
IBQuery_VE.Close;
IBQuery_VE.SQL.Clear;
IBQuery_VE.SQL.Add('select FORMA_VENDA, NOME_CLIENTE, CODIGO, NUMERO_CONTRATO, TIPO_VENDA, DESCONTO, SUB_TOTAL, VALOR_TOTAL, NOME_MEDICO, NOME_VENDEDOR, ACRESCIMO, DESCONTO from VENDAS ');
IBQuery_VE.SQL.Add('where NUMERO_CONTRATO =:NC');
IBQuery_VE.ParamByName('NC').AsString:= NC;
IBQuery_VE.Open;
SbNovo.Caption:= 'No&vo Lançamento';
ComboBoxOpcao.Enabled:= False;
SbSalvar.Enabled:= False;
SbFecha.Caption:= 'Cancelar Lançamento';
ValorVenda:= StrToFloat(FloatToStrF(IBQuery_VESUB_TOTAL.AsFloat,FfFixed,18,2));
FrmCaixaVenda:= TFrmCaixaVenda.Create(Application);
try
  FrmCaixaVenda.ShowModal;
finally
  FrmCaixaVenda.Free;
end;
end;

procedure TFrmCaixa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
Var
Q_Estoque, E_Minimo: Double;
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBGrid1.Fields[0].Text = '' then
begin
MaskEdit_VI.Enabled:= False;
CBox_Quantidade.Enabled:= False;
CBox_Confirma.Enabled:= False;
Panel2.Enabled:= False;
DBGrid2.Enabled:= False;
ComboBoxGrupo.Text:= '<<<<<< TODOS >>>>>>';
ComboBoxGrupo.SetFocus;
Exit;
end else
MaskEdit_VI.Enabled:= True;
CBox_Quantidade.Enabled:= True;
CBox_Confirma.Enabled:= True;
Panel2.Enabled:= True;
DBGrid2.Enabled:= True;

Dm.IBDS_ESTOQUE.Close;
Dm.IBDS_ESTOQUE.Open;
if (Dm.Ds_ITEM.State = dsInsert) or (Dm.Ds_ITEM.State = dsEdit) then
begin
// Cancela o item
Dm.IBDS_ITEM.Cancel;
Dm.IBDS_ITEM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end else
ProdSelecionado:= DBGrid1.Fields[0].Text;
CBox_Quantidade.Text:= '1';
ComboBoxTipo.Text:= '';
ComboBoxForma.Text:= '';
BtnCI.Enabled:= False;
IBQueryVenda.Close;
IBQueryVenda.SQL.Clear;
IBQueryVenda.SQL.Add('select COD_PROD, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE ');
IBQueryVenda.SQL.Add('where COD_PROD =:CodProduto ');
IBQueryVenda.ParamByName('CodProduto').AsString:= ProdSelecionado;
IBQueryVenda.SQL.Add('order by COD_PROD');
IBQueryVenda.Open;
// converte
Q_Estoque:= StrToFloat(IBQueryVenda.FieldByName('QUANTIDADE_ESTOQUE').AsString);
E_Minimo:=  StrToFloat(IBQuery_ProdutosESTOQUE_MINIMO.AsString);
// verifica se o estoque já atingiu o minimo
if Q_Estoque <= E_Minimo then
begin
ShowMessage('O produto selecionado, atingiu seu estoque mínimo de "'+IBQuery_ProdutosESTOQUE_MINIMO.AsString+
'" peças. Resta(m) "'+IBQueryVenda.FieldByName('QUANTIDADE_ESTOQUE').AsString+'" unidade(s) no estoque.');
end else
Dm.IBDS_ITEM.Last;
Dm.IBDS_ITEM.Append;
Dm.IBDS_ITEMNUMERO_CONTRATO.asString:= NC;
Dm.IBDS_ITEMCOD_PROD.asString:= DBGrid1.Fields[0].text;
Dm.IBDS_ITEMNOME_PRODUTO.asString:= DBGrid1.Fields[1].text;
Dm.IBDS_ITEMDESCRICAO.asString:= DBGrid1.Fields[2].text;
MaskEdit_VI.Text:= DBGrid1.Fields[3].Text;    //Dm.IBDS_ITEMVALOR_UNITARIO.asString:= DBGrid1.Fields[3].text;
MaskEdit_VI.SetFocus;
end;
end;

procedure TFrmCaixa.ComboBoxTipoKeyPress(Sender: TObject; var Key: Char);
var
Forma : array[0..4] of String [20] ;
F : integer;
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
TipoVenda:= ComboBoxTipo.Text;
ComboBoxForma.Enabled:= True;
  if ComboBoxTipo.Text = '' then
begin
ComboBoxTipo.ItemIndex:= 0;
end else
ComboBoxForma.Items.Clear;
if ComboBoxTipo.Text = 'Á VISTA' then
begin
  Forma[1]  := 'DINHEIRO';
  Forma[2]  := 'CHEQUE';
  Forma[3]  := 'CARTÃO';
 for F :=1 to 3 do
ComboBoxForma.Items.Add(Forma[F]);
ComboBoxForma.SetFocus;
Exit;
end else
ComboBoxForma.Items.Clear;
  Forma[1]  := 'CHEQUE';
  Forma[2]  := 'CARTÃO';
  Forma[3]  := 'CARNÊ';
  Forma[4]  := 'BOLETO BANCÁRIO';
 for F :=1 to 4 do
ComboBoxForma.Items.Add(Forma[F]);
ComboBoxForma.SetFocus;
end;
end;

procedure TFrmCaixa.CBox_QuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxGrupo.Text = '2-LENTE' then
begin
BtnCI.Enabled:= True;
BtnCI.SetFocus;
Exit;
end else
// coverte valores
QuantEstoque:= IBQueryVenda.FieldByName('QUANTIDADE_ESTOQUE').AsFloat;
EstqMinimo:= IBQueryVenda.FieldByName('ESTOQUE_MINIMO').AsFloat;
// verifica se o campo quant. está vazio
if CBox_Quantidade.Text = '' then
begin
CBox_Quantidade.Text:= '1';
end else
QuantInformada:= StrToFloat(CBox_Quantidade.Text);
// verifica se o estoque está zerado
if QuantEstoque = 0 then
begin
//ShowMessage('O produto selecionado, encontra-se esgotado no estoque. Produto não disponível para venda.');
CBox_Quantidade.Text:= '';

if MessageBox(0,'O produto selecionado, encontra-se esgotado no estoque. Produto não disponível para venda. Deseja atualizar o estoque agora?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin

Dm.IBDS_ESTOQUE.Locate('COD_PROD',DBGrid1.Fields[0].text,[]);

FrmProdutos:= TFrmProdutos.Create(Application);
try
  FrmProdutos.ShowModal;
finally
  FrmProdutos.Free;
end;
DBGrid1.SetFocus;
Exit;
end else
// Cancela o item
Dm.IBDS_ITEM.Cancel;
Dm.IBDS_ITEM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
DBGrid1.SetFocus;
Exit;
end else
// verifica se a quantidade informada excede o estoque atual
if QuantInformada > QuantEstoque then
begin
ShowMessage('A quantidade de itens para o produto selecionado, é maior que o disponível em estoque.');
CBox_Quantidade.Text:= FloatToStr(QuantEstoque);
Exit;
end else
// Caso a quantidade informada seja menor ou igual ao estoque atual o item passa
if QuantInformada <= EstqMinimo then
begin
BtnCI.Enabled:= True;
BtnCI.SetFocus;
Exit;
end else
// Se o estoque atual for maior que o estoque minimo o item passa
if QuantEstoque > EstqMinimo then
begin
CBox_Quantidade.Text:= CBox_Quantidade.Text;
BtnCI.Enabled:= True;
BtnCI.SetFocus;
Exit;
end else
CBox_Quantidade.Text:= FloatToStr(QuantEstoque);
BtnCI.Enabled:= True;
BtnCI.SetFocus;
end;
end;

procedure TFrmCaixa.ComboBoxTipoExit(Sender: TObject);
var
Forma : array[0..4] of String [20] ;
F : integer;
begin
ComboBoxForma.Enabled:= True;
if ComboBoxTipo.Text = '' then
begin
ComboBoxTipo.ItemIndex:= 0;
end else
ComboBoxForma.Text:= '';
if (ComboBoxTipo.Text <> 'Á VISTA') and (ComboBoxTipo.Text <> 'A PRAZO') then
begin
ComboBoxTipo.SetFocus;
Exit;
end else
ComboBoxForma.Items.Clear;
if ComboBoxTipo.Text = 'Á VISTA' then
begin
  Forma[1]  := 'DINHEIRO';
  Forma[2]  := 'CHEQUE';
  Forma[3]  := 'CARTÃO';
 for F :=1 to 3 do
ComboBoxForma.Items.Add(Forma[F]);
ComboBoxForma.SetFocus;
Exit;
end else
ComboBoxForma.Items.Clear;
  Forma[1]  := 'CHEQUE';
  Forma[2]  := 'CARTÃO';
  Forma[3]  := 'CARNÊ';
  Forma[4]  := 'BOLETO BANCÁRIO';
 for F :=1 to 4 do
ComboBoxForma.Items.Add(Forma[F]);
ComboBoxForma.SetFocus;
end;

procedure TFrmCaixa.ComboBoxTipoChange(Sender: TObject);
begin
ComboBoxTipo.Text:= 'Á VISTA';
end;

procedure TFrmCaixa.BtnCIClick(Sender: TObject);
Var
Quantidade, ValorUnit, ValorTotal: Real;
Quantidade_Item: Integer;
begin
if Dm.Ds_ITEM.State = dsInsert then
begin
if (CBox_Quantidade.Text = '') or (CBox_Quantidade.Text = '0') then
begin
BtnCI.Enabled:= False;
CBox_Quantidade.SetFocus;
CBox_Quantidade.Text:= '1';
Exit;
end else
BtnCI.Enabled:= True;
Dm.IBDS_ITEMQUANTIDADE.asString:= CBox_Quantidade.Text;
Dm.IBDS_ITEMVALOR_UNITARIO.asString:= MaskEdit_VI.Text;
//inicio calculo
Quantidade:= StrToFloat(Dm.IBDS_ITEMQUANTIDADE.asString);
ValorUnit:= StrToFloat(Dm.IBDS_ITEMVALOR_UNITARIO.asString);
ValorTotal:= Quantidade * ValorUnit;
Dm.IBDS_ITEMVALOR_TOTAL.asString:= FloatToStr(ValorTotal);
//fim calculo
// lente inicio
if ComboBoxGrupo.Text = '2-LENTE' then
begin
IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO ='+#39+NC+#39);
IBQuery_ItemVenda.Open;
IBQuery_ItemVenda.Locate('COD_PROD', CodigoLente, []);
if IBQuery_ItemVendaCOD_PROD.AsString = CodigoLente then
begin
ShowMessage('Produto já adicionado');
ComboBoxGrupo.SetFocus;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ITEM.Post;
Dm.IBDS_ITEM.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO ='+#39+NC+#39);
IBQuery_ItemVenda.Open;
BtnCI.Enabled:= False;
CBox_Confirma.Enabled:= True;
CBox_Confirma.ItemIndex:= 0;
CBox_Confirma.Text:= 'ADICIONAR';
CBox_Confirma.SetFocus;
Exit;
end else
// lente fim
IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO ='+#39+NC+#39);
IBQuery_ItemVenda.Open;
if not IBQuery_ItemVenda.Locate('COD_PROD', DBGrid1.Fields[0].text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ITEM.Post;
Dm.IBDS_ITEM.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO ='+#39+NC+#39);
IBQuery_ItemVenda.Open;
DBGrid2.SetFocus;
BtnCI.Enabled:= False;
// Atualiza estoque - venda de produto
Quantidade_Item:= StrToInt(CBox_Quantidade.Text);
Dm.IBDS_ESTOQUE.First; // coloca no inicio
While not Dm.IBDS_ESTOQUE.Eof Do // enquanto nao chegar no final
begin
If Dm.IBDS_ESTOQUECOD_PROD.AsString = ProdSelecionado then
begin
Dm.IBDS_ESTOQUE.Edit;
Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger:= Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger - Quantidade_Item;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
end;
Dm.IBDS_ESTOQUE.Next; // nao encontrando avança para proximo produto
// Atualiza estoque - venda de produto
end;
CBox_Confirma.Enabled:= True;
CBox_Confirma.ItemIndex:= 0;
CBox_Confirma.Text:= 'ADICIONAR';
CBox_Confirma.SetFocus;
Exit;
end else
ShowMessage('Este produto já se encontra na venda atual.');
Dm.IBDS_ITEM.Cancel;
Dm.IBDS_ITEM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
DBGrid1.SetFocus;
Exit;
end else
DBGrid1.SetFocus;
BtnCI.Enabled:= False;
end;

procedure TFrmCaixa.ComboBoxFormaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxTipo.Text = 'Á VISTA' then
begin
ComboBoxNP.Text:= '';
ComboBoxNP.Enabled:= False;
ComboBoxOpcaoVenda.Text:= '';
ComboBoxOpcaoVenda.Enabled:= False;
SbSalvar.Enabled:= True;
SbSalvar.SetFocus;
Exit;
end else
ComboBoxNP.Text:= '';
ComboBoxNP.Enabled:= True;
ComboBoxOpcaoVenda.Text:= '';
ComboBoxOpcaoVenda.Enabled:= True;
ComboBoxNP.SetFocus;
end;
end;

procedure TFrmCaixa.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmCaixa.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBGrid2.Fields[0].Text = '' then
begin
CBox_Confirma.SetFocus;
CBox_Confirma.ItemIndex:= 0;
Exit;
end else
if CBox_Confirma.ItemIndex = 1 then
begin
CP:= DBGrid2.Fields[0].Text;
Quantidade_Vendida:= StrToInt(DBGrid2.Fields[4].Text);
// Atualiza estoque - Restituir produto
Screen.Cursor := crHourGlass;
Dm.IBDS_ESTOQUE.First; // coloca no inicio

While not Dm.IBDS_ESTOQUE.Eof Do // enquanto nao chegar no final
begin
If Dm.IBDS_ESTOQUECOD_PROD.AsString = CP then
begin
Dm.IBDS_ESTOQUE.Edit;
Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger:= Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger + Quantidade_Vendida;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
end;
Dm.IBDS_ESTOQUE.Next; // nao encontrando avança para proximo produto
end;
// Atualiza estoque - Restituir produto
IBQueryVenda.Close;
IBQueryVenda.Sql.Clear;
IBQueryVenda.SQL.Add('Delete from ITEM ');
IBQueryVenda.SQL.Add('where COD_PROD =:CodProd ');
IBQueryVenda.SQL.Add('and NUMERO_CONTRATO =:NumContrato');
IBQueryVenda.ParamByName('CodProd').AsString:= CP;
IBQueryVenda.ParamByName('NumContrato').AsString:= NC;
IBQueryVenda.ExecSQL;
IBQuery_ItemVenda.Close;
IBQuery_ItemVenda.SQL.Clear;
IBQuery_ItemVenda.SQL.Add('select NUMERO_CONTRATO, COD_PROD, DESCRICAO, NOME_PRODUTO, QUANTIDADE, VALOR_UNITARIO, VALOR_TOTAL from ITEM WHERE NUMERO_CONTRATO =:NumContrato');
IBQuery_ItemVenda.ParamByName('NumContrato').AsString:= NC;
IBQuery_ItemVenda.Open;
Screen.Cursor := crDefault;
if DBGrid2.Fields[0].Text <> '' then
begin
CBox_Confirma.SetFocus;
CBox_Confirma.ItemIndex:= 1;
Exit;
end else
CBox_Confirma.SetFocus;
CBox_Confirma.ItemIndex:= 0;
Exit;
end else
CBox_Confirma.SetFocus;
CBox_Confirma.ItemIndex:= 1;
end;
end;

procedure TFrmCaixa.FormDestroy(Sender: TObject);
begin
Dm.IBDS_VENDAS.Close;
end;

procedure TFrmCaixa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_Produtos.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid1.Canvas.Brush.Color:= $00D8E9D8;
DBGrid1.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid1.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCaixa.Localizar1Click(Sender: TObject);
begin
if Dm.Ds_VENDAS.State = dsEdit then
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;
end;

procedure TFrmCaixa.ComboBoxGrupoKeyPress(Sender: TObject; var Key: Char);
Var
Codigo, Descricao: String;
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxGrupo.Text = '<<<<<< TODOS >>>>>>' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
DBGrid1.SetFocus;
Exit;
end else
ComboBox4.SetFocus;
if ComboBoxGrupo.Text = '1-ARMAÇÃO' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'ARMAÇÃO'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '2-LENTE' then
begin
MaskEdit_VI.Enabled:= True;
CBox_Quantidade.Enabled:= True;
CBox_Confirma.Enabled:= True;
Panel2.Enabled:= True;
DBGrid2.Enabled:= True;

Dm.IBDS_ESTOQUE.Close;
Dm.IBDS_ESTOQUE.Open;
if (Dm.Ds_ITEM.State = dsInsert) or (Dm.Ds_ITEM.State = dsEdit) then
begin
// Cancela o item
Dm.IBDS_ITEM.Cancel;
Dm.IBDS_ITEM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end else
Dm.IBDS_ITEM.Last;
Dm.IBDS_ITEM.Append;
Dm.IBDS_ITEMNUMERO_CONTRATO.asString:= NC;
if ObterLente(Codigo, Descricao) then
Dm.IBDS_ITEMCOD_PROD.asString:= Codigo;
CodigoLente:= Codigo;
Dm.IBDS_ITEMNOME_PRODUTO.asString:= 'LENTE';
Dm.IBDS_ITEMDESCRICAO.asString:= Descricao;
MaskEdit_VI.Text:= '0,00';    //Dm.IBDS_ITEMVALOR_UNITARIO.asString:= DBGrid1.Fields[3].text;
MaskEdit_VI.SetFocus;
Exit;
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'LENTE'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '3-JOIA' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'JOIA'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '4-RELÓGIO' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'RELÓGIO'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '5-ÓCULOS SPORT' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'ÓCULOS SPORT'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '6-RELÓGIO DE PADERE' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'RELÓGIO DE PADERE'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
Exit;
end else
if ComboBoxGrupo.Text = '7-DIVERSO' then
begin
Screen.Cursor := crHourGlass;
IBQuery_Produtos.Close;
IBQuery_Produtos.SQL.Clear;
IBQuery_Produtos.SQL.Add('select COD_PROD, NOME_PRODUTO, DESCRICAO, VALOR_UNITARIO, QUANTIDADE_ESTOQUE, ESTOQUE_MINIMO from ESTOQUE');
IBQuery_Produtos.SQL.Add('where NOME_PRODUTO ='+#39+'DIVERSO'+#39);
IBQuery_Produtos.SQL.Add('order by COD_PROD');
IBQuery_Produtos.Open;
Screen.Cursor := crDefault;
end;
end;
end;

procedure TFrmCaixa.ComboBox4Change(Sender: TObject);
begin
if ComboBox4.Text = 'Por Referência' then
begin
Edit1.Text:= '';
Edit1.Width:= 134;
Edit1.MaxLength:= 13;
Exit;
end else
if ComboBox4.Text = 'Por Descrição' then
begin
Edit1.Text:= '';
Edit1.Width:= 335;
Edit1.MaxLength:= 45;
end;
end;

procedure TFrmCaixa.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if (ComboBox4.Text <> 'Por Referência') and (ComboBox4.Text <> 'Por Descrição') then
begin
ComboBox4.SetFocus;
Exit;
end else
  Edit1.SetFocus;
  end;
end;

procedure TFrmCaixa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  IBQuery_Produtos.Close;
  IBQuery_Produtos.Open;
if ComboBox4.Text = 'Por Descrição' then
begin
DBGrid1.SetFocus;
Exit;
end else
if ComboBox4.Text = 'Por Referência' then
begin
if not IBQuery_Produtos.Locate('COD_PROD', Edit1.Text, []) then
begin
ShowMessage('Produto não encontrado no estoque. Localize manualmente na lista.');
Edit1.Text:= '';
DBGrid1.SetFocus;
end;
end;
end;
end;

procedure TFrmCaixa.Edit1Change(Sender: TObject);
begin
  IBQuery_Produtos.Close;
  IBQuery_Produtos.Open;
if ComboBox4.Text = 'Por Descrição' then
begin
IBQuery_Produtos.Locate('DESCRICAO', Edit1.Text, [LoPartialKey, LoCaseInsensitive]);
end;
end;

procedure TFrmCaixa.SbFechaClick(Sender: TObject);
begin
if Panel_CaixaLivre1.Visible = True then
begin
iOK := 625;
Close;
end else
SbNovo.SetFocus;
end;

procedure TFrmCaixa.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_ItemVenda.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid2.Canvas.Brush.Color:= $00A8E9E8;
DBGrid2.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid2.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCaixa.ComboBoxNPKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxNP.Text = '' then
begin
ComboBoxNP.Text:= '1';
end else
Fracao:= StrToInt(ComboBoxNP.Text);
if Fracao > 1 then
begin
ComboBoxOpcaoVenda.Enabled:= True;
ComboBoxOpcaoVenda.Text:= '';
ComboBoxOpcaoVenda.SetFocus;
Exit;
end else
if Fracao = 1 then
begin
Panel_Fracao.Visible:= False;
ComboBoxOpcaoVenda.Text:= 'SEM ENTRADA';
OpcaoVenda:= ComboBoxOpcaoVenda.Text;
ComboBoxOpcaoVenda.Enabled:= False;
SbSalvar.Enabled:= True;
SbSalvar.SetFocus;
end;
end;
end;

procedure TFrmCaixa.ComboBoxOpcaoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBoxOpcao.Text = 'OUTRAS E.' then
begin
Opcao:= ComboBoxOpcao.Text;
SbNovo.Caption:= '&Executando '+Opcao;
// INÍCIO DOS COMANDOS DAS OUTRAS ENTRADAS
Panel_CaixaLivre1.Visible:= False;

FrmCaixaOutrasEntradas:= TFrmCaixaOutrasEntradas.Create(Application);
try
  FrmCaixaOutrasEntradas.ShowModal;
finally
  FrmCaixaOutrasEntradas.Free;
end;
Exit;
end else
Opcao:= ComboBoxOpcao.Text;
ComboBoxOpcao.Enabled:= False;
SbNovo.Caption:= SbNovo.Caption+' -> '+Opcao;
SbNovo.SetFocus;
end;
end;

procedure TFrmCaixa.ComboBoxOpcaoChange(Sender: TObject);
begin
ComboBoxOpcao.Text:= 'VENDA';
end;

procedure TFrmCaixa.ComboBoxOpcaoVendaChange(Sender: TObject);
begin
Panel_Fracao.Visible:= False;
if (ComboBoxNP.Text = '2') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 1';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '2') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '3') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 2';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '3') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '4') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 3';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '4') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '5') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 4';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '5') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '6') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 5';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '6') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150+180';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '7') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 6';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '7') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150+180+210';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '8') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 7';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '8') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150+180+210+240';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '9') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 8';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '9') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150+180+210+240+270';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '10') and (ComboBoxOpcaoVenda.Text = 'COM ENTRADA') then
begin
Panel_Fracao.Caption:= '1 + 9';
Panel_Fracao.Visible:= True;
end else
if (ComboBoxNP.Text = '10') and (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
Panel_Fracao.Caption:= 'Em 30+60+90+120+150+180+210+240+270+300';
Panel_Fracao.Visible:= True;
///////////
end;
if (ComboBoxOpcaoVenda.Text <> 'COM ENTRADA') or (ComboBoxOpcaoVenda.Text = 'SEM ENTRADA') then
begin
ComboBoxOpcaoVenda.Text:= 'COM ENTRADA';
end;
end;

procedure TFrmCaixa.ComboBoxOpcaoVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',',',#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
OpcaoVenda:= ComboBoxOpcaoVenda.Text;
if ComboBoxTipo.Text = '' then
begin
ComboBoxTipo.SetFocus;
Exit;
end else
if ComboBoxForma.Text = '' then
begin
ComboBoxForma.SetFocus;
Exit;
end else
if ComboBoxNP.Text = '' then
begin
ComboBoxNP.SetFocus;
Exit;
end else
if ComboBoxOpcaoVenda.Text = '' then
begin
ComboBoxOpcaoVenda.SetFocus;
Exit;
end else
Panel_Fracao.Visible:= False;
SbSalvar.Enabled:= True;
SbSalvar.SetFocus;
end;
end;

procedure TFrmCaixa.ComboBoxFormaChange(Sender: TObject);
begin
ComboBoxForma.Text:= 'CHEQUE';
end;

procedure TFrmCaixa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK:= 624;
end;

procedure TFrmCaixa.DBGrid_ParcelasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
Abort;
end;

procedure TFrmCaixa.WMMove(var Msg: TWMMove);
begin
// Impedir que o form seja arrastado para fora das margens da tela
if Left < 0 then
  Left := 0;
  if Top < 0 then
  Top := 0;
  if Screen.Width - (Left + Width) < 0 then
  Left := Screen.Width - Width;
  if Screen.Height - (Top + Height) < 0 then
  Top := Screen.Height - Height;
end;

function TFrmCaixa.DifDateUtil(dataini, datafin: string): integer;
var a,b,c:tdatetime;
  ct,s:integer;
begin
if StrToDate(DataFin) < StrtoDate(DataIni) then
  begin
  Result := 0;
  exit;
  end;
ct := 0;
s := 1;
a := strtodate(dataFin);
b := strtodate(dataIni);
if a > b then
  begin
  c := a;
  a := b;
  b := c;
  s := 1;
  end;
a := a + 1;
while (dayofweek(a)<>2) and (a <= b) do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
ct := ct + round((5*int((b-a)/7)));
a := a + (7*int((b-a)/7));
while a <= b do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
if ct < 0 then
  begin
  ct := 0;
  end;
result := s*ct;
end;

function TFrmCaixa.ObterNumeros(var Numero_Documento,
  Nosso_Numero: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
  Medt2: TMaskEdit;
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Position := poMainFormCenter;
  Form.Width := 482;
  Form.Height := 104;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Nº Documento/Seu Número';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 32;
  Width := 161;
  MaxLength:= 17;
  end;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Nosso Nùmero';
  Left := 200;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt2 := TMaskEdit.Create(Form);
  with Medt2 do begin
  Parent := Form;
  Left := 200;
  Top := 32;
  Width := 161;
  MaxLength:= 17;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 384;
  Top := 30;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Numero_Documento:= Medt1.Text;
  Nosso_Numero:= Medt2.Text;
  Result := true;
  end;
  finally
  Form.Free;
  end;
  end;

function TFrmCaixa.ObterNumero(var Numero_Documento: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Position := poMainFormCenter;
  Form.Width := 297;
  Form.Height := 104;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Nº Documento/Comprovante';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 32;
  Width := 161;
  MaxLength:= 17;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 200;
  Top := 30;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Numero_Documento:= Medt1.Text;
  Result := true;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmCaixa.ComboBoxNPExit(Sender: TObject);
begin
if ComboBoxNP.Text = '' then
begin
ComboBoxNP.Text:= '1';
end else
Fracao:= StrToInt(ComboBoxNP.Text);
end;

procedure TFrmCaixa.DBCBox_VendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ME_Cliente.SetFocus;
end;
end;

function TFrmCaixa.ObterDataPagamento(var Data_Pago: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Data do Pagamento';
  Form.Position := poMainFormCenter;
  Form.Width := 193;
  Form.Height := 98;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Data:';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 32;
  Width := 66;
  EditMask:='99/99/9999;1;_';
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 96;
  Top := 30;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Data_Pago:= Medt1.Text;
  Result := true;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmCaixa.MaskEdit_VIKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MaskEdit_VI.Text = '' then
begin
MaskEdit_VI.Text:= '0';
end else
if MaskEdit_VI.Text = '0' then
begin
MaskEdit_VI.SetFocus;
Exit;
end else
MaskEdit_VI.Text:= floattostrf(StrToFloat(MaskEdit_VI.Text),ffFixed,18,2);
CBox_Quantidade.SetFocus;
  end;
end;

procedure TFrmCaixa.ComboBoxGrupoExit(Sender: TObject);
begin
if (ComboBoxGrupo.Text = '1-ARMAÇÃO') or (ComboBoxGrupo.Text = '2-LENTE') or (ComboBoxGrupo.Text = '3-JOIA') or (ComboBoxGrupo.Text = '4-RELÓGIO') or (ComboBoxGrupo.Text = '5-ÓCULOS SPORT') or (ComboBoxGrupo.Text = '6-RELÓGIO DE PADERE') or (ComboBoxGrupo.Text = '7-DIVERSO') then
begin
//ComboBox4.SetFocus;
Exit;
end else
ComboBoxGrupo.Text:= '<<<<<< TODOS >>>>>>';
if ComboBoxGrupo.Text = '<<<<<< TODOS >>>>>>' then
begin
end;
end;

procedure TFrmCaixa.DBEdit1Exit(Sender: TObject);
begin
if DBEdit1.Text = '' then
begin
DBEdit1.Text:= NC;
DBCBox_Vendedor.SetFocus;
Exit;
end else
DBEdit1.Text:= FrmPrincipal.ZeroEsquerda(strtoint(DBEdit1.Text), 4);
NC:= DBEdit1.Text;
Dm.IBDS_VENDAS.FieldByName('COD_VEND').asString:= NC;
if IBQueryVenda.Locate('NUMERO_CONTRATO', NC, []) then
begin
ShowMessage('Nº de contrato já existente, informe outro.');
DBEdit1.SetFocus;
end;
end;

procedure TFrmCaixa.CBox_ConfirmaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if (CBox_Confirma.ItemIndex = 2) and (DBEdit1.Enabled = False) then
begin
CBox_Confirma.ItemIndex:= 1;
Exit;
end else
if CBox_Confirma.ItemIndex = 0 then
begin
if ComboBoxOpcao.Enabled = False then
begin
SbNovo.SetFocus;
Exit;
end else
MaskEdit_VI.Text:= '';
CBox_Quantidade.Text:= '';
ComboBoxGrupo.SetFocus;
Exit;
end else
if CBox_Confirma.ItemIndex = 1 then
begin
MaskEdit_VI.Text:= '';
CBox_Quantidade.Text:= '';
DBGrid2.SetFocus;
Exit;
end else
if CBox_Confirma.ItemIndex = 2 then
begin
MaskEdit_VI.Text:= '';
CBox_Quantidade.Text:= '';
ComboBoxTipo.SetFocus;
end;
end;
end;

procedure TFrmCaixa.CBox_ConfirmaChange(Sender: TObject);
begin
CBox_Confirma.Text:= 'ENCERRAR';
end;

function TFrmCaixa.ObterLente(var Codigo, Descricao: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
  Medt2: TMaskEdit;
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Produto';
  Form.Position := poMainFormCenter;
  Form.Width := 506;
  Form.Height := 137;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Código';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 32;
  Width := 113;
  MaxLength:= 14;
  CharCase:= ecUpperCase;
  Text:= FrmPrincipal.ZeroEsquerda(strtoint(DBEdit1.Text), 10);
  TabOrder:= 1;
  end;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Descrição do Produto';
  Left := 144;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt2 := TMaskEdit.Create(Form);
  with Medt2 do begin
  Parent := Form;
  Left := 144;
  Top := 32;
  Width := 337;
  MaxLength:= 35;
  TabOrder:= 0;
  CharCase:= ecUpperCase;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 200;
  Top := 72;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Codigo:= Medt1.Text;
  Descricao:= Medt2.Text;
  Result := True;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmCaixa.ME_ClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBCBox_Vendedor.Text = '' then
begin
ShowMessage('Informe o vendedor.');
DBCBox_Vendedor.SetFocus;
Exit;
end else
ME_Cliente.Text:= '';
if MessageBox(0,'Cliente com cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin

FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
Dm.IBDS_VENDASNOME_CLIENTE.asString:= ME_Cliente.Text;
Dm.IBDS_VENDASCODIGO.asString:= Dm.IBDS_CLIENTESCODIGO.asString;
Dm.IBDS_VENDASCPF.asString:= Dm.IBDS_CLIENTESCPF.asString;
if not (Dm.IBDS_CLIENTESNOME.Value = ME_Cliente.Text) and (Dm.IBDS_CLIENTESCODIGO.value = DBText2.Caption)  then
begin
Dm.IBDS_VENDASCPF.asString:= '';
Dm.IBDS_VENDASCODIGO.asString:='';
ME_Cliente.Text:= 'CONSUMIDOR';
Dm.IBDS_VENDASNOME_CLIENTE.asString:= ME_Cliente.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
ComboBoxGrupo.SetFocus;
End;
end else
ME_Cliente.Text:= 'CONSUMIDOR';
Dm.IBDS_VENDASNOME_CLIENTE.asString:= ME_Cliente.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDAS.Post;
Dm.IBDS_VENDAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Dm.IBDS_VENDAS.Locate('NUMERO_CONTRATO', NC, []);
Dm.IBDS_VENDAS.Edit;
ComboBoxGrupo.SetFocus;
end;
end;

procedure TFrmCaixa.MaskEdit_VencimentoKeyPress(Sender: TObject;
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
Exit;
end else
end;

procedure TFrmCaixa.tbSetCapsLock(State: boolean);
begin
  if (State and ((GetKeyState(VK_CAPITAL) and 1) = 0)) or
  ((not State) and ((GetKeyState(VK_CAPITAL) and 1) = 1)) then
  begin
  keybd_event(VK_CAPITAL, $45, KEYEVENTF_EXTENDEDKEY or 0, 0);
  keybd_event(VK_CAPITAL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;
end;

procedure TFrmCaixa.IBQuery_EstornoEAfterDelete(DataSet: TDataSet);
begin
if EstornoEnt = '' then
begin
ShowMessage('Selecione o lançamento e pressione "Enter" antes de executar.');
end;
end;

procedure TFrmCaixa.IBQuery_EstornoSAfterDelete(DataSet: TDataSet);
begin
if EstornoSai = '' then
begin
ShowMessage('Selecione o lançamento e pressione "Enter" antes de executar.');
end;
end;

procedure TFrmCaixa.ComboBoxNPChange(Sender: TObject);
begin
Panel_Fracao.Visible:= False;
if ComboBoxNP.Text = '0' then
begin
ComboBoxNP.Text:= '1';
end else
if ComboBoxNP.Text = '1' then
begin
ComboBoxOpcaoVenda.Enabled:= False;
Panel_Fracao.Caption:= 'Pagamento para 30 Dias';
Panel_Fracao.Visible:= True;
end;
end;

procedure TFrmCaixa.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
DBCBox_Vendedor.SetFocus;
end;
end;

procedure TFrmCaixa.MaskEdit_VencimentoExit(Sender: TObject);
begin
ShowMessage ('Data inválida.');
Exit;
end;

procedure TFrmCaixa.DBGrid1CellClick(Column: TColumn);
begin
if DBGrid1.Fields[0].Text = '' then
begin
MaskEdit_VI.Enabled:= False;
CBox_Quantidade.Enabled:= False;
CBox_Confirma.Enabled:= False;
Panel2.Enabled:= False;
DBGrid2.Enabled:= False;
ComboBoxGrupo.Text:= '<<<<<< TODOS >>>>>>';
ComboBoxGrupo.SetFocus;
Exit;
end else
MaskEdit_VI.Enabled:= True;
CBox_Quantidade.Enabled:= True;
CBox_Confirma.Enabled:= True;
Panel2.Enabled:= True;
DBGrid2.Enabled:= True;
end;

end.
