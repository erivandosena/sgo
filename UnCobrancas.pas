unit UnCobrancas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls, ComCtrls;

type
  TFrmCobrancas = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Btn_Exibir: TBitBtn;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid_Clientes: TDBGrid;
    DBGrid_Parcelas: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    IBQuery_Clientes: TIBQuery;
    Ds_Clientes: TDataSource;
    IBQuery_Parcelas: TIBQuery;
    Ds_Parcelas: TDataSource;
    Label6: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    DBText3: TDBText;
    Label7: TLabel;
    Label5: TLabel;
    MEdit_Cidade: TComboBox;
    IBQuery_ParcelasCODIGO: TIBStringField;
    IBQuery_ParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_ParcelasNOME_CLIENTE: TIBStringField;
    IBQuery_ParcelasNUMERO_CONTRATO: TIBStringField;
    IBQuery_ParcelasNUMERO_DOC: TIBStringField;
    IBQuery_ParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_ParcelasQUANT_PARCELAS: TIBStringField;
    IBQuery_ParcelasSITUACAO_PARCELA: TIBStringField;
    IBQuery_ParcelasVALOR_PARCELA: TIBBCDField;
    IBQuery_ParcelasVALOR_PENDENTE: TIBBCDField;
    IBQuery_ParcelasF_1: TIntegerField;
    IBQuery_ParcelasF_2: TIBBCDField;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    IBQuery_ClientesCODIGO: TIBStringField;
    IBQuery_ClientesNOME: TIBStringField;
    Label_Venc: TLabel;
    procedure Btn_ExibirClick(Sender: TObject);
    procedure DBGrid_ClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_ClientesCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure MEdit_DiasVencerKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DiasVencerChange(Sender: TObject);
    procedure Data1Change(Sender: TObject);
    procedure Data2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprimir;
  end;

var
  FrmCobrancas: TFrmCobrancas;
  Exibe: Integer;

implementation

uses UnDm, UnPrincipal, UnRelCobrancas;

{$R *.dfm}

procedure TFrmCobrancas.Btn_ExibirClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
// INICIA SELEÇÃO DE MENSALIDADES
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_DOC, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA, VALOR_PENDENTE, ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('(select count (NUMERO_CONTRATO) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Parcelas.SQL.Add('(select sum (VALOR_PARCELA) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+') ');
IBQuery_Parcelas.SQL.Add('from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39);
IBQuery_Parcelas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Parcelas.Open;

if MEdit_Cidade.Text = '' then
begin
// INICIA SELEÇÃO DE VENCIMENTOS
IBQuery_Clientes.Close;
IBQuery_Clientes.SQL.Clear;
IBQuery_Clientes.SQL.Add('select distinct CODIGO, NOME from CLIENTES C ');
IBQuery_Clientes.SQL.Add('where exists ( select CODIGO, DATA_VENCIMENTO, SITUACAO_PARCELA from CARNE where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = C.CODIGO) ');
IBQuery_Clientes.SQL.Add('order by CODIGO,NOME');
IBQuery_Clientes.Open;
IBQuery_Clientes.Last;
Label_Venc.Caption:='Total de Vencimentos: '+IntToStr(IBQuery_Clientes.RecordCount);
IBQuery_Clientes.First;
DBGrid_ClientesCellClick(Nil);
Screen.Cursor := crDefault;
Imprimir;
Exit;
end else
// INICIA SELEÇÃO DE VENCIMENTOS
IBQuery_Clientes.Close;
IBQuery_Clientes.SQL.Clear;
IBQuery_Clientes.SQL.Add('select distinct CODIGO, NOME from CLIENTES C ');
IBQuery_Clientes.SQL.Add('where exists ( select CODIGO, DATA_VENCIMENTO, SITUACAO_PARCELA from CARNE where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = C.CODIGO) and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Clientes.SQL.Add('order by CODIGO,NOME');
IBQuery_Clientes.Open;
IBQuery_Clientes.Last;
Label_Venc.Caption:='Total de Vencimentos: '+IntToStr(IBQuery_Clientes.RecordCount);
IBQuery_Clientes.First;
DBGrid_ClientesCellClick(Nil);
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancas.DBGrid_ClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Screen.Cursor := crSQLWait;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_DOC, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA, VALOR_PENDENTE, ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('(select count (NUMERO_CONTRATO) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Parcelas.SQL.Add('(select sum (VALOR_PARCELA) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39+') ');
IBQuery_Parcelas.SQL.Add('from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39);
IBQuery_Parcelas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Parcelas.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancas.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCobrancas.FormShow(Sender: TObject);
var
  Qry : TIBQuery;
begin
FrmCobrancas.Top:=100;
FrmCobrancas.Left:=0;
Data1.Date:= Data-30;
Data2.Date:= Data;
Imprimir;
Screen.Cursor := crHourGlass;
Qry := TIBQuery.Create(nil);
  with Qry do begin
    Active:= False;
    Database:= Dm.IBDatabase;
    SQL.Add('select distinct CIDADE from CLIENTES ');
    Open;
      end;
    MEdit_Cidade.Items.Clear;
    Qry.First;
    if not Qry.Eof then
    repeat
    { seus comandos para a tabela }
    MEdit_Cidade.Items.Add(Qry.FieldByName('CIDADE').AsString);
    Qry.Next;
    until Qry.Eof;

Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCobrancas.Caption:= FrmCobrancas.Caption;
Exit;
end else
FrmCobrancas.Caption:= FrmCobrancas.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCobrancas.DBGrid_ClientesCellClick(Column: TColumn);
begin
Screen.Cursor := crSQLWait;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CODIGO, DATA_VENCIMENTO, NOME_CLIENTE, NUMERO_CONTRATO, NUMERO_DOC, NUMERO_PARCELA, QUANT_PARCELAS, SITUACAO_PARCELA, VALOR_PARCELA, VALOR_PENDENTE, ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('(select count (NUMERO_CONTRATO) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Parcelas.SQL.Add('(select sum (VALOR_PARCELA) from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39+') ');
IBQuery_Parcelas.SQL.Add('from CARNE ');
IBQuery_Parcelas.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', Data1.Date)+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', Data2.Date)+#39+' and SITUACAO_PARCELA = '+#39+'EM ABERTO'+#39+' and CODIGO = '+#39+IBQuery_ClientesCODIGO.AsString+#39);
IBQuery_Parcelas.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Parcelas.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancas.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
IBQuery_Clientes.Close;
IBQuery_Clientes.Open;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.Open;
end;

procedure TFrmCobrancas.Imprimir;
begin
if DBGrid_Clientes.Fields[0].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
DBGrid_Clientes.SetFocus;
end;

procedure TFrmCobrancas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCobrancas.Btn_ImprimirClick(Sender: TObject);
begin
if FrmRelCobrancas <> Nil then Exit;
FrmRelCobrancas := TFrmRelCobrancas.Create(self);
FrmRelCobrancas.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCobrancas.QuickRep1.Preview;
FrmRelCobrancas.Free;
FrmRelCobrancas := Nil;
end;

procedure TFrmCobrancas.MEdit_DiasVencerKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCobrancas.MEdit_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCobrancas.MEdit_DiasVencerChange(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir Dias &Vencidos';
end;

procedure TFrmCobrancas.Data1Change(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir o &Período';
end;

procedure TFrmCobrancas.Data2Change(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir o &Período';
end;

end.
