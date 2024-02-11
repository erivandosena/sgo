unit UnReimpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmReimpressao = class(TForm)
    IBQuery_Faturas: TIBQuery;
    Ds_Faturas: TDataSource;
    DBGrid_Parcelas: TDBGrid;
    CBox_Fatura: TComboBox;
    CBox_Contrato: TComboBox;
    CBox_Cliente: TComboBox;
    BtnFechar: TBitBtn;
    IBQuery_Vendas: TIBQuery;
    IBQuery_VendasNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasNOME_CLIENTE: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Btn_Imprimir: TBitBtn;
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
    procedure FormShow(Sender: TObject);
    procedure CBox_ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharClick(Sender: TObject);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_FaturaKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBGrid_ParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReimpressao: TFrmReimpressao;

implementation

uses UnDm, UnFaturas, UnRelReimprimirCarne, UnPrincipal;

{$R *.dfm}

procedure TFrmReimpressao.FormShow(Sender: TObject);
begin
FrmReimpressao.Top:=162;
FrmReimpressao.Left:=132;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmReimpressao.Caption:= FrmReimpressao.Caption;
Exit;
end else
FrmReimpressao.Caption:= FrmReimpressao.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
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
//  ADICIONA CLIENTES
    CBox_Cliente.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Cliente.Items.Add(IBQuery_VendasNOME_CLIENTE.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
Screen.Cursor := crDefault;
end;

procedure TFrmReimpressao.CBox_ClienteKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if CBox_Contrato.Text = '' then
begin
CBox_Fatura.SetFocus;
Exit;
end else
if CBox_Fatura.Text = 'CARNÊ' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
IBQuery_Faturas.Close;
IBQuery_Faturas.SQL.Clear;
IBQuery_Faturas.SQL.Add('select * from CARNE');
IBQuery_Faturas.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_Faturas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Faturas.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_Faturas.ParamByName('Cliente').AsString := CBox_Cliente.Text;
IBQuery_Faturas.Prepare;
IBQuery_Faturas.Open;
Screen.Cursor := crDefault;
DBGrid_Parcelas.SetFocus;
end;
end;
end;

procedure TFrmReimpressao.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmReimpressao.CBox_ContratoKeyPress(Sender: TObject;
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
IBQuery_Vendas.Locate('NUMERO_CONTRATO', CBox_Contrato.Text, []);
CBox_Cliente.Text:= IBQuery_VendasNOME_CLIENTE.AsString;
CBox_Cliente.SetFocus;
end;
end;

procedure TFrmReimpressao.CBox_FaturaKeyPress(Sender: TObject; var Key: Char);
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
//  ADICIONA CLIENTES
    CBox_Cliente.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Cliente.Items.Add(IBQuery_VendasNOME_CLIENTE.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
    CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
end;
end;
end;

procedure TFrmReimpressao.Btn_ImprimirClick(Sender: TObject);
begin
if FrmRelReimprimirCarne <> Nil then Exit;
FrmRelReimprimirCarne := TFrmRelReimprimirCarne.Create(self);
FrmRelReimprimirCarne.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelReimprimirCarne.QuickRep1.Preview;
FrmRelReimprimirCarne.Free;
FrmRelReimprimirCarne := Nil;
end;

procedure TFrmReimpressao.DBGrid_ParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Imprimir.SetFocus;
end;
end;

procedure TFrmReimpressao.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

end.
