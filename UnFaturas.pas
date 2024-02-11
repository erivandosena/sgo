unit UnFaturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmFaturas = class(TForm)
    IBQuery_Faturas: TIBQuery;
    Ds_Faturas: TDataSource;
    DBGrid_Parcelas: TDBGrid;
    BtnFechar: TBitBtn;
    IBQuery_Vendas: TIBQuery;
    Btn_ImprimeCarta: TBitBtn;
    IBQuery_VendasNUMERO_CONTRATO: TIBStringField;
    IBQuery_VendasNOME_CLIENTE: TIBStringField;
    Label1: TLabel;
    CBox_Contrato: TComboBox;
    Label4: TLabel;
    DBText: TLabel;
    Label5: TLabel;
    CBox_Codigo: TComboBox;
    IBQuery_VendasCODIGO: TIBStringField;
    IBQuery_FaturasCOD_CARN: TIntegerField;
    IBQuery_FaturasNUMERO_DOC: TIBStringField;
    IBQuery_FaturasNUMERO_CONTRATO: TIBStringField;
    IBQuery_FaturasNOME_CLIENTE: TIBStringField;
    IBQuery_FaturasCODIGO: TIBStringField;
    IBQuery_FaturasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturasQUANT_PARCELAS: TIBStringField;
    IBQuery_FaturasNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturasSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_FaturasVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturasACRESCIMO: TIBBCDField;
    IBQuery_FaturasDESCONTO: TIBBCDField;
    IBQuery_FaturasVALOR_APAGAR: TIBBCDField;
    IBQuery_FaturasVALOR_PAGO: TIBBCDField;
    IBQuery_FaturasVALOR_PENDENTE: TIBBCDField;
    IBQuery_FaturasTOTAL_PAGO: TIBBCDField;
    Ds_Vendas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Btn_ImprimeCartaClick(Sender: TObject);
    procedure DBGrid_ParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBox_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ParcelasCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaturas: TFrmFaturas;

implementation

uses UnDm, UnRelCartCob, UnPrincipal;

{$R *.dfm}

procedure TFrmFaturas.FormShow(Sender: TObject);
begin
FrmFaturas.Top:=97;
FrmFaturas.Left:=0;
Screen.Cursor := crHourGlass;
// SELECIONA AS VENDAS A PRAZO
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select CODIGO, NUMERO_CONTRATO, NOME_CLIENTE from VENDAS ');
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
    
    //  ADICIONA CODIGOS
    CBox_Codigo.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Codigo.Items.Add(IBQuery_VendasCODIGO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFaturas.Caption:= FrmFaturas.Caption;
Exit;
end else
FrmFaturas.Caption:= FrmFaturas.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmFaturas.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmFaturas.CBox_ContratoKeyPress(Sender: TObject;
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
if CBox_Codigo.Text = '' then
begin
CBox_Codigo.SetFocus;
Exit;
end else
if CBox_Contrato.Text = '' then
begin
CBox_Contrato.SetFocus;
Exit;
end else
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
Screen.Cursor := crSQLWait;
IBQuery_Faturas.Close;
IBQuery_Faturas.SQL.Clear;
IBQuery_Faturas.SQL.Add('select * from CARNE');
IBQuery_Faturas.SQL.Add('where NUMERO_CONTRATO = :NC and CODIGO = :Cliente ');
IBQuery_Faturas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Faturas.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_Faturas.ParamByName('Cliente').AsString := CBox_Codigo.Text;
IBQuery_Faturas.Prepare;
IBQuery_Faturas.Open;
Screen.Cursor := crDefault;
DBGrid_Parcelas.SetFocus;
end;
end;

procedure TFrmFaturas.DBGrid_ParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Btn_ImprimeCarta.SetFocus;
end;
end;

procedure TFrmFaturas.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmFaturas.Btn_ImprimeCartaClick(Sender: TObject);
begin
if FrmRelCartCob <> Nil then Exit;
FrmRelCartCob := TFrmRelCartCob.Create(self);
FrmRelCartCob.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCartCob.QuickRep1.Preview;
FrmRelCartCob.Free;
FrmRelCartCob := Nil;
end;

procedure TFrmFaturas.DBGrid_ParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if IBQuery_Faturas.Active = False then
begin
Abort;
Exit;
end else
if DBGrid_Parcelas.Fields[1].Text = '' then
begin
CBox_Codigo.SetFocus;
Exit;
end else
if (IBQuery_FaturasVALOR_PAGO.AsFloat = 0.00) and (IBQuery_FaturasDATA_VENCIMENTO.AsDateTime < Data) then
begin
Btn_ImprimeCarta.Enabled:= True;
Exit;
end else
Btn_ImprimeCarta.Enabled:= False;
end;

procedure TFrmFaturas.CBox_CodigoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
DBText.Caption:= '';
Screen.Cursor := crSQLWait;
IBQuery_Vendas.Close;
IBQuery_Vendas.SQL.Clear;
IBQuery_Vendas.SQL.Add('select CODIGO, NUMERO_CONTRATO, NOME_CLIENTE from VENDAS ');
IBQuery_Vendas.SQL.Add('where CODIGO = :Cod');
IBQuery_Vendas.ParamByName('Cod').Value:= CBox_Codigo.Text;
IBQuery_Vendas.Open;
DBText.Caption:= IBQuery_VendasNOME_CLIENTE.AsString;
//  ADICIONA NUMERO CONTRATO
    CBox_Contrato.Text:= '';
    CBox_Contrato.Items.Clear;
    IBQuery_Vendas.First;
    if not IBQuery_Vendas.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_VendasNUMERO_CONTRATO.AsString);
    IBQuery_Vendas.Next;
    until IBQuery_Vendas.Eof;
Screen.Cursor := crDefault;
CBox_Contrato.SetFocus;
end;
end;

procedure TFrmFaturas.DBGrid_ParcelasCellClick(Column: TColumn);
begin
if IBQuery_Faturas.Active = False then
begin
Abort;
Exit;
end else
if DBGrid_Parcelas.Fields[1].Text = '' then
begin
CBox_Codigo.SetFocus;
Exit;
end else
if (IBQuery_FaturasVALOR_PAGO.AsFloat = 0.00) and (IBQuery_FaturasDATA_VENCIMENTO.AsDateTime < Data) then
begin
Btn_ImprimeCarta.Enabled:= True;
Exit;
end else
Btn_ImprimeCarta.Enabled:= False;
end;

end.
