unit UnBaixaFinanciamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Grids, DBGrids,
  DBCtrls;

type
  TFrmBaixaFinanciamento = class(TForm)
    IBQuery_Faturas: TIBQuery;
    Ds_Faturas: TDataSource;
    DBGrid_Parcelas: TDBGrid;
    CBox_Fatura: TComboBox;
    CBox_Contrato: TComboBox;
    BtnFechar: TBitBtn;
    IBQuery_Vendas: TIBQuery;
    IBQuery_VendasNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasNOME_CLIENTE: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    IBQuery_FaturasCOD_CARN: TIntegerField;
    IBQuery_FaturasNUMERO_DOC: TIBStringField;
    IBQuery_FaturasNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturasNOME_CLIENTE: TIBStringField;
    IBQuery_FaturasCODIGO: TIBStringField;
    IBQuery_FaturasACRESCIMO: TIBBCDField;
    IBQuery_FaturasDESCONTO: TIBBCDField;
    IBQuery_FaturasVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturasVALOR_PAGO: TIBBCDField;
    IBQuery_FaturasVALOR_PENDENTE: TIBBCDField;
    IBQuery_FaturasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturasQUANT_PARCELAS: TIBStringField;
    IBQuery_FaturasNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturasSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturasDATA_PAGAMENTO: TDateTimeField;
    CBox_Cliente: TDBText;
    Label4: TLabel;
    Btn_Baixa: TBitBtn;
    IBQueryBaixa: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_FaturaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Btn_BaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixaFinanciamento: TFrmBaixaFinanciamento;
  NC: String;

implementation

uses UnDm, UnFaturas, UnRelReimprimirCarne, UnPrincipal;

{$R *.dfm}

procedure TFrmBaixaFinanciamento.FormShow(Sender: TObject);
begin
FrmBaixaFinanciamento.Top:=106;
FrmBaixaFinanciamento.Left:=132;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmBaixaFinanciamento.Caption:= FrmBaixaFinanciamento.Caption;
Exit;
end else
FrmBaixaFinanciamento.Caption:= FrmBaixaFinanciamento.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS A PRAZO
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where TIPO_VENDA = :TVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('TVenda').AsString := 'A PRAZO';
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
Screen.Cursor := crDefault;
end;

procedure TFrmBaixaFinanciamento.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmBaixaFinanciamento.CBox_ContratoKeyPress(Sender: TObject;
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

if CBox_Fatura.Text = 'CARNÊ' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
IBQuery_Faturas.Close;
IBQuery_Faturas.SQL.Clear;
IBQuery_Faturas.SQL.Add('select * from CARNE');
IBQuery_Faturas.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_Faturas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Faturas.ParamByName('NC').AsString := NC;
IBQuery_Faturas.ParamByName('Cliente').AsString := IBQuery_VendasNOME_CLIENTE.AsString;
IBQuery_Faturas.Prepare;
IBQuery_Faturas.Open;
Screen.Cursor := crDefault;
DBGrid_Parcelas.SetFocus;
end;

end;
end;

procedure TFrmBaixaFinanciamento.CBox_FaturaKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if CBox_Fatura.Text <> 'CARNÊ' then
begin
CBox_Fatura.Text:='CARNÊ';
end else
if CBox_Fatura.Text = 'CARNÊ' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS A PRAZO
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select NUMERO_CONTRATO, NOME_CLIENTE from VENDAS');
IBQuery_Vendas.SQL.Add('where TIPO_VENDA = :TVenda and FORMA_VENDA = :FVenda ');
IBQuery_Vendas.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Vendas.ParamByName('TVenda').AsString := 'A PRAZO';
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
end;
end;
end;

procedure TFrmBaixaFinanciamento.DBGrid_ParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Baixa.SetFocus;
end;
end;

procedure TFrmBaixaFinanciamento.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmBaixaFinanciamento.Btn_BaixaClick(Sender: TObject);
begin
Screen.Cursor:= crHourGlass;
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
IBQuery_Vendas.Close;
IBQuery_Faturas.Close;
CBox_Fatura.SetFocus;
Btn_Baixa.Enabled:= False;
end;

end.
