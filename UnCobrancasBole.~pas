unit UnCobrancasBole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls, ComCtrls, ADODB;

type
  TFrmCobrancasBole = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Btn_Exibir: TBitBtn;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid_Clientes: TDBGrid;
    DBGrid_Parcelas: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    Ds_Clientes: TDataSource;
    Ds_Parcelas: TDataSource;
    Label_Men: TLabel;
    Bevel1: TBevel;
    Label_Tot: TLabel;
    Label5: TLabel;
    MEdit_Cidade: TComboBox;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    Label_Venc: TLabel;
    IBQuery_Clientes: TADOQuery;
    IBQuery_Parcelas: TADOQuery;
    IBQuery_ClientesCodSacado: TStringField;
    IBQuery_ClientesNomeFanSac: TStringField;
    IBQuery_ParcelasCodSac: TStringField;
    IBQuery_ParcelasDtVecto: TDateTimeField;
    IBQuery_ParcelasDtEmissao: TDateTimeField;
    IBQuery_ParcelasSeuNum: TStringField;
    IBQuery_ParcelasNossoNumero: TStringField;
    IBQuery_ParcelasValorTitulo: TBCDField;
    IBQuery_ParcelasVrPago: TBCDField;
    IBQuery_ParcelasTipDtOcorrencia: TDateTimeField;
    IBQuery_ClientesCidadeSac: TStringField;
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
  FrmCobrancasBole: TFrmCobrancasBole;
  Exibe: Integer;

implementation

uses UnRelCobrancasBole, UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmCobrancasBole.Btn_ExibirClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
// INICIA SELEÇÃO DE MENSALIDADES
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CodSac, DtVecto, ValorTitulo, VrPago, TipDtOcorrencia, SeuNum, NossoNumero, DtEmissao ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('from tbTitulos ');
IBQuery_Parcelas.SQL.Add('where DtVecto between :Data1 and :Data2 and VrPago = :Valor');
IBQuery_Parcelas.Parameters.ParamByName('Data1').Value:= Data1.Date;
IBQuery_Parcelas.Parameters.ParamByName('Data2').Value:= Data2.Date;
IBQuery_Parcelas.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Parcelas.SQL.Add('order by DtVecto');
IBQuery_Parcelas.Open;
if MEdit_Cidade.Text = '' then
begin
// INICIA SELEÇÃO DE VENCIMENTOS
IBQuery_Clientes.Close;
IBQuery_Clientes.SQL.Clear;
IBQuery_Clientes.SQL.Add('select distinct CodSacado, NomeFanSac, CidadeSac from tbSacado C ');
IBQuery_Clientes.SQL.Add('where exists ( select CodSac, DtVecto, VrPago from tbTitulos where DtVecto between :Data1 and :Data2 and VrPago = :Valor and CodSac = C.CodSacado) ');
IBQuery_Clientes.Parameters.ParamByName('Data1').Value:= Data1.Date;
IBQuery_Clientes.Parameters.ParamByName('Data2').Value:= Data2.Date;
IBQuery_Clientes.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Clientes.SQL.Add('order by CodSacado,NomeFanSac');
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
IBQuery_Clientes.SQL.Add('select distinct CodSacado, NomeFanSac, CidadeSac from tbSacado C ');
IBQuery_Clientes.SQL.Add('where exists ( select CodSac, DtVecto, VrPago from tbTitulos where DtVecto between :Data1 and :Data2 and VrPago = :Valor and CodSac = C.CodSacado) and CidadeSac = :Cid');
IBQuery_Clientes.Parameters.ParamByName('Data1').Value:= Data1.Date;
IBQuery_Clientes.Parameters.ParamByName('Data2').Value:= Data2.Date;
IBQuery_Clientes.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Clientes.Parameters.ParamByName('Cid').Value:= MEdit_Cidade.Text;
IBQuery_Clientes.SQL.Add('order by CodSacado,NomeFanSac');
IBQuery_Clientes.Open;
IBQuery_Clientes.Last;
Label_Venc.Caption:= 'Total de Vencimentos: '+IntToStr(IBQuery_Clientes.RecordCount);
IBQuery_Clientes.First;
DBGrid_ClientesCellClick(Nil);
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancasBole.DBGrid_ClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Screen.Cursor := crSQLWait;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CodSac, DtVecto, ValorTitulo, VrPago, TipDtOcorrencia, SeuNum, NossoNumero, DtEmissao ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('from tbTitulos ');
IBQuery_Parcelas.SQL.Add('where DtVecto between :Data1 and :Data2 and CodSac = :Codigo and VrPago = :Valor');
IBQuery_Parcelas.Parameters.ParamByName('Data1').Value:= FormatDateTime('dd/mm/yyyy', Data1.Date);
IBQuery_Parcelas.Parameters.ParamByName('Data2').Value:= FormatDateTime('dd/mm/yyyy', Data2.Date);
IBQuery_Parcelas.Parameters.ParamByName('Codigo').Value:= IBQuery_ClientesCodSacado.AsString;
IBQuery_Parcelas.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Parcelas.SQL.Add('order by DtVecto');
IBQuery_Parcelas.Open;
IBQuery_Parcelas.Last;
Label_Men.Caption:= 'Mensalidades: '+IntToStr(IBQuery_Parcelas.RecordCount);
Label_Tot.Caption:= FormatFloat('Total Acumulado: R$ #,##0.00', IBQuery_Parcelas.FieldByName('ValorTitulo').AsFloat * IBQuery_Parcelas.RecordCount);
IBQuery_Parcelas.First;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancasBole.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCobrancasBole.FormShow(Sender: TObject);
var
  Qry : TADOQuery;
begin
FrmCobrancasBole.Top:=100;
FrmCobrancasBole.Left:=0;
Data1.Date:= Data-30;
Data2.Date:= Data;
Imprimir;
Screen.Cursor := crHourGlass;
Qry := TADOQuery.Create(nil);
  with Qry do begin
    Active:= False;
    Connection:= Dm.ADOConnection;
    SQL.Add('select distinct CidadeSac from tbSacado');
    Open;
     end;
    MEdit_Cidade.Items.Clear;
    Qry.First;
    if not Qry.Eof then
    repeat
    { seus comandos para a tabela }
    MEdit_Cidade.Items.Add(Qry.FieldByName('CidadeSac').AsString);
    Qry.Next;
    until Qry.Eof;
Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCobrancasBole.Caption:= FrmCobrancasBole.Caption;
Exit;
end else
FrmCobrancasBole.Caption:= FrmCobrancasBole.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCobrancasBole.DBGrid_ClientesCellClick(Column: TColumn);
begin
Screen.Cursor := crSQLWait;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.SQL.Clear;
IBQuery_Parcelas.SQL.Add('select CodSac, DtVecto, ValorTitulo, VrPago, TipDtOcorrencia, SeuNum, NossoNumero, DtEmissao ');
// TOTAL DE MENSALIDADE
IBQuery_Parcelas.SQL.Add('from tbTitulos ');
IBQuery_Parcelas.SQL.Add('where DtVecto between :Data1 and :Data2 and CodSac = :Codigo and VrPago = :Valor');
IBQuery_Parcelas.Parameters.ParamByName('Data1').Value:= FormatDateTime('dd/mm/yyyy', Data1.Date);
IBQuery_Parcelas.Parameters.ParamByName('Data2').Value:= FormatDateTime('dd/mm/yyyy', Data2.Date);
IBQuery_Parcelas.Parameters.ParamByName('Codigo').Value:= IBQuery_ClientesCodSacado.AsString;
IBQuery_Parcelas.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Parcelas.SQL.Add('order by DtVecto');
IBQuery_Parcelas.Open;
IBQuery_Parcelas.Last;
Label_Men.Caption:= 'Mensalidades: '+IntToStr(IBQuery_Parcelas.RecordCount);
Label_Tot.Caption:= FormatFloat('Total Acumulado: R$ #,##0.00', IBQuery_Parcelas.FieldByName('ValorTitulo').AsFloat * IBQuery_Parcelas.RecordCount);
IBQuery_Parcelas.First;


Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmCobrancasBole.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
IBQuery_Clientes.Close;
IBQuery_Clientes.Open;
IBQuery_Parcelas.Close;
IBQuery_Parcelas.Open;
end;

procedure TFrmCobrancasBole.Imprimir;
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

procedure TFrmCobrancasBole.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCobrancasBole.Btn_ImprimirClick(Sender: TObject);
begin
if FrmRelCobrancasBole <> Nil then Exit;
FrmRelCobrancasBole := TFrmRelCobrancasBole.Create(self);
FrmRelCobrancasBole.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCobrancasBole.QuickRep1.Preview;
FrmRelCobrancasBole.Free;
FrmRelCobrancasBole := Nil;
end;

procedure TFrmCobrancasBole.MEdit_DiasVencerKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCobrancasBole.MEdit_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCobrancasBole.MEdit_DiasVencerChange(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir Dias &Vencidos';
end;

procedure TFrmCobrancasBole.Data1Change(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir o &Período';
end;

procedure TFrmCobrancasBole.Data2Change(Sender: TObject);
begin
Btn_Exibir.Caption:= 'Exibir o &Período';
end;

end.
