unit UnSPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, DB,
  IBCustomDataSet, IBQuery, Provider;

type
  TFrmSPC = class(TForm)
    DBGridSPC: TDBGrid;
    Btn_Incluir: TBitBtn;
    CBox_Contrato: TComboBox;
    Label52: TLabel;
    CBox_FaturaAtrasada: TComboBox;
    Label55: TLabel;
    GroupBox1: TGroupBox;
    ComboBox_NomeSPC: TComboBox;
    MEdit_CPFSPC: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Ds_Contratos: TDataSource;
    IBQuery_Contratos: TIBQuery;
    IBQuery_ContratosNOME_CLIENTE: TIBStringField;
    IBQuery_ContratosNUMERO_CONTRATO: TIBStringField;
    IBQuery_ContratosCODIGO: TIBStringField;
    IBQuery_ContratosFORMA_VENDA: TIBStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    IBQuery_SPC: TIBQuery;
    DS_SPC: TDataSource;
    IBQuery_SPCNUMERO_CONTRATO: TIBStringField;
    IBQuery_SPCNOME: TIBStringField;
    IBQuery_SPCCPF: TIBStringField;
    IBQuery_Clientes: TIBQuery;
    Ds_Clientes: TDataSource;
    IBQuery_ClientesCODIGO: TIBStringField;
    IBQuery_ClientesNOME: TIBStringField;
    IBQuery_ClientesNUMERO_CONTRATO: TIBStringField;
    IBQuery_ClientesCPF: TIBStringField;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    IBQueryCodigo: TIBQuery;
    IBQuery_FaturaAtrasada: TIBQuery;
    IBQuery_FaturaAtrasadaNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaAtrasadaDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaAtrasadaVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaAtrasadaSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturaAtrasadaDATA_PAGAMENTO: TDateTimeField;
    IBQuery_ContratosCPF: TIBStringField;
    IBQuery_SPCCODIGO: TIBStringField;
    IBQuery_FaturaAtrasadaCODIGO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure ComboBox_NomeSPCKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_NomeSPCKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CPFSPCKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure DBGridSPCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridSPCKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridSPCCellClick(Column: TColumn);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSPC: TFrmSPC;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmSPC.FormShow(Sender: TObject);
begin
FrmSPC.Top:= 100;
FrmSPC.Left:= 0;
IBQuery_SPC.Close;
IBQuery_SPC.Open;
Dm.IBDS_CLIENTES.First;
ComboBox_NomeSPC.Items.Clear;
 if not Dm.IBDS_CLIENTES.Eof then
 repeat
 { seus comandos para a tabela }
ComboBox_NomeSPC.Items.Add(Dm.IBDS_CLIENTESNOME.AsString);
 Dm.IBDS_CLIENTES.Next;
 until Dm.IBDS_CLIENTES.Eof;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmSPC.Caption:= FrmSPC.Caption;
Exit;
end else
FrmSPC.Caption:= FrmSPC.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmSPC.ComboBox_NomeSPCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
IBQuery_Clientes.Open;
  with ComboBox_NomeSPC do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if IBQuery_Clientes.Locate('NOME', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := IBQuery_Clientes.FieldByName('NOME').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmSPC.ComboBox_NomeSPCKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ComboBox_NomeSPC.SelectAll;
if ComboBox_NomeSPC.Text = '' then
begin
ComboBox_NomeSPC.SetFocus;
Exit;
end else
Screen.Cursor := crHourglass;
MEdit_CPFSPC.Text:= '';
IBQuery_Clientes.Open;
if not IBQuery_Clientes.Locate('NOME',ComboBox_NomeSPC.Text,[]) then
begin
ShowMessage('O Nome "'+ComboBox_NomeSPC.Text+'" está incompleto ou não consta no cadastro. Tente novamente.');
Screen.Cursor := crDefault;
ComboBox_NomeSPC.SetFocus;
IBQuery_Clientes.Close;
Exit;
end else
IBQuery_Contratos.Close;
IBQuery_Contratos.SQL.Clear;
IBQuery_Contratos.SQL.Add('select NUMERO_CONTRATO, CODIGO, NOME_CLIENTE, CPF, FORMA_VENDA from VENDAS ');
IBQuery_Contratos.SQL.Add('where NOME_CLIENTE = :Cliente and CODIGO = :CodCli');
IBQuery_Contratos.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Contratos.ParamByName('Cliente').AsString := DBText3.Caption;
IBQuery_Contratos.ParamByName('CodCli').AsString := DBText2.Caption;
IBQuery_Contratos.Prepare;
IBQuery_Contratos.Open;
// CARREGA CONTRATOS
    CBox_Contrato.Items.Clear;
    IBQuery_Contratos.First;
    if not IBQuery_Contratos.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_ContratosNUMERO_CONTRATO.AsString);
    IBQuery_Contratos.Next;
    until IBQuery_Contratos.Eof;
Screen.Cursor := crDefault;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
end;
end;

procedure TFrmSPC.MEdit_CPFSPCKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_CPFSPC.Text = '   .   .   -  ' then
begin
MEdit_CPFSPC.SetFocus;
Exit;
end else
Screen.Cursor := crHourglass;
ComboBox_NomeSPC.Text:= '';
IBQuery_Clientes.Open;
if not IBQuery_Clientes.Locate('CPF',MEdit_CPFSPC.Text,[]) then
begin
ShowMessage('O CPF "'+MEdit_CPFSPC.Text+'" está incompleto ou não consta no cadastro. Tente novamente.');
Screen.Cursor := crDefault;
MEdit_CPFSPC.SetFocus;
IBQuery_Clientes.Close;
Exit;
end else
IBQuery_Contratos.Close;
IBQuery_Contratos.SQL.Clear;
IBQuery_Contratos.SQL.Add('select NUMERO_CONTRATO, CODIGO, NOME_CLIENTE, CPF, FORMA_VENDA from VENDAS ');
IBQuery_Contratos.SQL.Add('where NOME_CLIENTE = :Cliente and CODIGO = :CodCli');
IBQuery_Contratos.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Contratos.ParamByName('Cliente').AsString := DBText3.Caption;
IBQuery_Contratos.ParamByName('CodCli').AsString := DBText2.Caption;
IBQuery_Contratos.Prepare;
IBQuery_Contratos.Open;
// CARREGA CONTRATOS
    CBox_Contrato.Items.Clear;
    IBQuery_Contratos.First;
    if not IBQuery_Contratos.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_ContratosNUMERO_CONTRATO.AsString);
    IBQuery_Contratos.Next;
    until IBQuery_Contratos.Eof;
Screen.Cursor := crDefault;
CBox_Contrato.ItemIndex:= 0;
CBox_Contrato.SetFocus;
end;
end;

procedure TFrmSPC.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrmSPC.Btn_IncluirClick(Sender: TObject);
begin
IBQueryCodigo.Close;
IBQueryCodigo.SQL.Clear;
IBQueryCodigo.SQL.Add('select CODIGO, NUMERO_CONTRATO, NOME from SPC');
IBQueryCodigo.SQL.Add('order by NUMERO_CONTRATO');
IBQueryCodigo.Prepare;
IBQueryCodigo.Open;

if DBText2.Caption = '' then
begin
CBox_Contrato.SetFocus;
Exit;
end else
if CBox_Contrato.Text = '' then
begin
if MessageBox(0,'O cliente não tem contrato informado atualmente. Continuar com a inclusão?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin

if not IBQueryCOdigo.Locate('NOME', DBText3.Caption, []) then
begin
Dm.IBDS_SPC.Append;
Dm.IBDS_SPC.FieldByName('CODIGO').asString := DBText2.Caption;
Dm.IBDS_SPC.FieldByName('NUMERO_CONTRATO').asString:= DBText2.Caption;
Dm.IBDS_SPC.FieldByName('NOME').asString := DBText3.Caption;
Dm.IBDS_SPC.FieldByName('CPF').asString := DBText1.Caption;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_SPC.Post;
Dm.IBDS_SPC.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
MEdit_CPFSPC.SetFocus;

IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select CODIGO, CPF, NOME, NUMERO_CONTRATO from SPC');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
IBQuery_Clientes.Close;
Exit;
end else
ShowMessage('Não é possível inclusão, o nome: "'+DBText3.Caption+'" já foi incluso, informe outro.');
Dm.IBDS_SPC.Cancel;
Dm.IBDS_SPC.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Screen.Cursor := crDefault;
IBQuery_Clientes.Close;

end else
CBox_Contrato.SetFocus;
IBQuery_Clientes.Close;
Exit;
end else
if not IBQueryCOdigo.Locate('NUMERO_CONTRATO', CBox_Contrato.text, []) then
begin
Dm.IBDS_SPC.Append;
Dm.IBDS_SPC.FieldByName('CODIGO').asString := DBText2.Caption;
Dm.IBDS_SPC.FieldByName('NUMERO_CONTRATO').asString:= IBQuery_Contratos.FieldByName('NUMERO_CONTRATO').asString;
Dm.IBDS_SPC.FieldByName('NOME').asString := DBText3.Caption;
Dm.IBDS_SPC.FieldByName('CPF').asString := DBText1.Caption;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_SPC.Post;
Dm.IBDS_SPC.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
MEdit_CPFSPC.SetFocus;

IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select CODIGO, CPF, NOME, NUMERO_CONTRATO from SPC');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
IBQuery_Clientes.Close;
Exit;
end else
ShowMessage('Não é possível inclusão, o contrato: "'+CBox_Contrato.Text+'" já foi incluso, informe outro.');
Dm.IBDS_SPC.Cancel;
Dm.IBDS_SPC.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Screen.Cursor := crDefault;
IBQuery_Clientes.Close;
end;

procedure TFrmSPC.DBGridSPCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if IBQuery_SPC.Active = False then
begin
Abort;
Exit;
end else
Label55.Caption:= 'Demostrativo da(s) Fatura(s) de: '+DBGridSPC.Fields[1].Text;
// SELECIONA AS FATURAS DO CARNÊ
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARNE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO CHEQUE
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CHEQUE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO BOLETO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from BOLETO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO CARTÃO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARTAO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';

end;
end;
end;
end;
end;

procedure TFrmSPC.DBGridSPCKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
IBQueryCodigo.Close;
IBQueryCodigo.Sql.Clear;
IBQueryCodigo.SQL.Add('Delete from SPC ');
IBQueryCodigo.SQL.Add('where CODIGO =:Cod ');
IBQueryCodigo.ParamByName('Cod').AsString:= DBGridSPC.Fields[0].Text;
IBQueryCodigo.ExecSQL;

IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select * from SPC');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
end;
end;

procedure TFrmSPC.DBGridSPCCellClick(Column: TColumn);
begin
if IBQuery_SPC.Active = False then
begin
Abort;
Exit;
end else
Label55.Caption:= 'Demostrativo da(s) Fatura(s) de: '+DBGridSPC.Fields[2].Text;
// SELECIONA AS FATURAS DO CARNÊ
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARNE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO CHEQUE
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CHEQUE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO BOLETO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from BOLETO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';


// SELECIONA AS FATURAS DO CARTÃO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARTAO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := DBGridSPC.Fields[0].Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBGridSPC.Fields[1].Text;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO';

end;
end;
end;
end;
end;

procedure TFrmSPC.CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Btn_Incluir.SetFocus;
end;
  end;

end.
