unit UnFaturasBole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Grids, DBGrids,
  ADODB, DBCtrls, Mask;

type
  TFrmFaturasBole = class(TForm)
    Ds_Faturas: TDataSource;
    CBox_Codigo: TComboBox;
    BtnFechar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Btn_ImprimeCarta: TBitBtn;
    IBQuery_Faturas: TADOQuery;
    IBQuery_Clientes: TADOQuery;
    Ds_Clientes: TDataSource;
    IBQuery_FaturasCodCedente: TIntegerField;
    IBQuery_FaturasCodSac: TStringField;
    IBQuery_FaturasSeuNum: TStringField;
    IBQuery_FaturasCodCarteira: TIntegerField;
    IBQuery_FaturasAceite: TStringField;
    IBQuery_FaturasCodEspecie: TStringField;
    IBQuery_FaturasInstCobranca: TBooleanField;
    IBQuery_FaturasPrazoProtDev: TIntegerField;
    IBQuery_FaturasOpcVecto: TStringField;
    IBQuery_FaturasDtVecto: TDateTimeField;
    IBQuery_FaturasDtEmissao: TDateTimeField;
    IBQuery_FaturasCodMoeda: TStringField;
    IBQuery_FaturasValorTitulo: TBCDField;
    IBQuery_FaturasValorJuros: TBCDField;
    IBQuery_FaturasDtDesconto: TDateTimeField;
    IBQuery_FaturasValorDesconto: TBCDField;
    IBQuery_FaturasValorAbatimento: TBCDField;
    IBQuery_FaturasDtMulta: TDateTimeField;
    IBQuery_FaturasValorMulta: TBCDField;
    IBQuery_FaturasUsoCedente: TStringField;
    IBQuery_FaturasNossoNumero: TStringField;
    IBQuery_FaturasRemessa: TBooleanField;
    IBQuery_FaturasRetorno: TBooleanField;
    IBQuery_Faturasimpresso: TBooleanField;
    IBQuery_FaturasMovimentacao: TBooleanField;
    IBQuery_FaturasTipoBloq: TBooleanField;
    IBQuery_FaturasCompensavel: TBooleanField;
    IBQuery_FaturasCodOcorRemessa: TStringField;
    IBQuery_FaturasCodOcorRetorno: TStringField;
    IBQuery_FaturasParcela: TStringField;
    IBQuery_FaturasTotalParcelas: TStringField;
    IBQuery_FaturasCodBarras: TStringField;
    IBQuery_FaturasNumRemessa: TStringField;
    IBQuery_FaturasMensagem1: TStringField;
    IBQuery_FaturasMensagem2: TStringField;
    IBQuery_FaturasMensagem3: TStringField;
    IBQuery_Faturasmensagem4: TStringField;
    IBQuery_FaturasMensagem5: TStringField;
    IBQuery_Faturasmensagem6: TStringField;
    IBQuery_FaturasCampo1: TStringField;
    IBQuery_FaturasCampo2: TStringField;
    IBQuery_FaturasCampo3: TStringField;
    IBQuery_FaturasCampo4: TStringField;
    IBQuery_FaturasCampo5: TStringField;
    IBQuery_FaturasCODREJ1: TStringField;
    IBQuery_FaturasCODREJ2: TStringField;
    IBQuery_FaturasCODREJ3: TStringField;
    IBQuery_FaturasTipDtOcorrencia: TDateTimeField;
    IBQuery_FaturasDtPgto: TDateTimeField;
    IBQuery_FaturasVrPago: TBCDField;
    IBQuery_FaturasVrDesEf: TBCDField;
    IBQuery_FaturasVrAcrEf: TBCDField;
    IBQuery_FaturasVrAbaEf: TBCDField;
    IBQuery_FaturasMovManual: TBooleanField;
    IBQuery_FaturasAvalista: TStringField;
    IBQuery_FaturasCPfCGCAval: TStringField;
    IBQuery_FaturasTipoPessoaAval: TBooleanField;
    IBQuery_FaturasNumRem: TFloatField;
    IBQuery_FaturasLock: TBooleanField;
    IBQuery_FaturasCONFIRMA: TBooleanField;
    IBQuery_FaturasCARNE: TIntegerField;
    IBQuery_FaturasVRJUREF: TBCDField;
    IBQuery_FaturasVRMULEF: TBCDField;
    IBQuery_FaturasVRCREDEF: TBCDField;
    IBQuery_FaturasVRTARIFA: TBCDField;
    IBQuery_FaturasDtCredef: TDateTimeField;
    IBQuery_FaturasDtTarief: TDateTimeField;
    IBQuery_FaturasCanalPgto: TStringField;
    IBQuery_FaturasFormaPgto: TStringField;
    IBQuery_FaturasFloatPgto: TStringField;
    IBQuery_ClientesCodSacado: TStringField;
    IBQuery_ClientesNomeSac: TStringField;
    DBGrid_Parcelas: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    CBox_SNIni: TMaskEdit;
    CBox_SNFin: TMaskEdit;
    DBText: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure CBox_CodigoKeyPress(Sender: TObject; var Key: Char);

    procedure DBGrid_ParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Btn_ImprimeCartaClick(Sender: TObject);
    procedure DBGrid_ParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBox_SNIniKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_SNFinKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ParcelasCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaturasBole: TFrmFaturasBole;

implementation

uses UnDm, UnRelCartCob, UnPrincipal, UnRelCartCobBole;

{$R *.dfm}

procedure TFrmFaturasBole.FormShow(Sender: TObject);
begin
FrmFaturasBole.Top:=97;
FrmFaturasBole.Left:=0;
IBQuery_Clientes.Close;
IBQuery_Clientes.Open;
Screen.Cursor := crHourGlass;
//  ADICIONA NUMERO CÓDIGO
    CBox_Codigo.Items.Clear;
    IBQuery_Clientes.First;
    if not IBQuery_Clientes.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Codigo.Items.Add(IBQuery_ClientesCodSacado.AsString);
    IBQuery_Clientes.Next;
    until IBQuery_Clientes.Eof;
IBQuery_Clientes.Close;
Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFaturasBole.Caption:= FrmFaturasBole.Caption;
Exit;
end else
FrmFaturasBole.Caption:= FrmFaturasBole.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmFaturasBole.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmFaturasBole.CBox_CodigoKeyPress(Sender: TObject;
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
DBText.Caption:= '';
Screen.Cursor := crSQLWait;
IBQuery_Clientes.Close;
IBQuery_Clientes.SQL.Clear;
IBQuery_Clientes.SQL.Add('select * from tbSacado ');
IBQuery_Clientes.SQL.Add('where CodSacado = :Cod');
IBQuery_Clientes.Parameters.ParamByName('Cod').Value:= CBox_Codigo.Text;
IBQuery_Clientes.Open;
DBText.Caption:= IBQuery_ClientesNomeSac.AsString;
Screen.Cursor := crDefault;
CBox_SNIni.SetFocus;
end;
end;

procedure TFrmFaturasBole.DBGrid_ParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Btn_ImprimeCarta.SetFocus;
end;
end;

procedure TFrmFaturasBole.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmFaturasBole.Btn_ImprimeCartaClick(Sender: TObject);
begin
if FrmRelCartCobBole <> Nil then Exit;
FrmRelCartCobBole := TFrmRelCartCobBole.Create(self);
FrmRelCartCobBole.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCartCobBole.QuickRep1.Preview;
FrmRelCartCobBole.Free;
FrmRelCartCobBole := Nil;
end;

procedure TFrmFaturasBole.DBGrid_ParcelasKeyDown(Sender: TObject;
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
if (IBQuery_FaturasVrPago.AsFloat = 0.00) and (IBQuery_FaturasDtVecto.AsDateTime < Data) then
begin
Btn_ImprimeCarta.Enabled:= True;
Exit;
end else
Btn_ImprimeCarta.Enabled:= False;
end;

procedure TFrmFaturasBole.CBox_SNIniKeyPress(Sender: TObject;
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
CBox_SNFin.SetFocus;
end;
end;

procedure TFrmFaturasBole.CBox_SNFinKeyPress(Sender: TObject;
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
if CBox_SNIni.Text = '' then
begin
CBox_SNIni.SetFocus;
Exit;
end else
if CBox_SNFin.Text = '' then
begin
CBox_SNFin.SetFocus;
Exit;
end else
// SELECIONA AS PARCELAS GERADAS DO BOLETO
Screen.Cursor := crSQLWait;
IBQuery_Faturas.Close;
IBQuery_Faturas.SQL.Clear;
IBQuery_Faturas.SQL.Add('select * from tbTitulos ');
IBQuery_Faturas.SQL.Add('where CodSac = :Cod and SeuNum between :Sn1 and :Sn2');
IBQuery_Faturas.Parameters.ParamByName('Cod').Value:= CBox_Codigo.Text;
IBQuery_Faturas.Parameters.ParamByName('Sn1').Value:= CBox_SNIni.Text;
IBQuery_Faturas.Parameters.ParamByName('Sn2').Value:= CBox_SNFin.Text;
IBQuery_Faturas.SQL.Add('order by DtVecto');
IBQuery_Faturas.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmFaturasBole.DBGrid_ParcelasCellClick(Column: TColumn);
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
if (IBQuery_FaturasVrPago.AsFloat = 0.00) and (IBQuery_FaturasDtVecto.AsDateTime < Data) then
begin
Btn_ImprimeCarta.Enabled:= True;
Exit;
end else
Btn_ImprimeCarta.Enabled:= False;
end;

end.
