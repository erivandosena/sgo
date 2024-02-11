unit UnCaixaOutrasEntradasB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, DB,
  IBCustomDataSet, IBQuery;

type
  TFrmCaixaOutrasEntradasB = class(TForm)
    Panel_EstornoEnt: TPanel;
    Label70: TLabel;
    Btn_ExeEstEnt: TBitBtn;
    Btn_SairEstEnt: TBitBtn;
    DBGrid_LancEnt: TDBGrid;
    MaskEdit_ValorRecebido: TMaskEdit;
    MaskEdit_DtaEntrada: TMaskEdit;
    MaskEdit_DocNum: TMaskEdit;
    MaskEdit_DescCredito: TMaskEdit;
    ListBox_ExtEnt: TListBox;
    Label66: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    Label23: TLabel;
    Label10: TLabel;
    Btn_Estorno: TBitBtn;
    Btn_Cancelar: TBitBtn;
    BitBtn_Proximo: TBitBtn;
    BitBtn_Finalizar: TBitBtn;
    BitBtn_Confirmar: TBitBtn;
    Bevel7: TBevel;
    DS_EstornoE: TDataSource;
    IBQuery_EstornoE: TIBQuery;
    IBQuery_EstornoEID: TIntegerField;
    IBQuery_EstornoEDATA: TDateTimeField;
    IBQuery_EstornoEHISTORICO: TIBStringField;
    IBQuery_EstornoENUMERO_CONTRATO: TIBStringField;
    IBQuery_EstornoENUMERO_PARCELA: TIBStringField;
    IBQuery_EstornoEND_SEU_NUMERO: TIBStringField;
    IBQuery_EstornoENOSSO_NUMERO: TIBStringField;
    IBQuery_EstornoEVALOR: TIBBCDField;
    procedure MaskEdit_DtaEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_ValorRecebidoKeyPress(Sender: TObject;
      var Key: Char);
    procedure MaskEdit_DocNumKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit_DescCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn_ProximoClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure BitBtn_FinalizarClick(Sender: TObject);
    procedure Btn_EstornoClick(Sender: TObject);
    procedure BitBtn_ConfirmarClick(Sender: TObject);
    procedure Btn_ExeEstEntClick(Sender: TObject);
    procedure Btn_SairEstEntClick(Sender: TObject);
    procedure DBGrid_LancEntKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaOutrasEntradasB: TFrmCaixaOutrasEntradasB;

implementation

uses UnDm, UnPrincipal, UnCaixaB;

{$R *.dfm}

procedure TFrmCaixaOutrasEntradasB.MaskEdit_DtaEntradaKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
MaskEdit_DtaEntrada.Text:= DateToStr(Data);
Btn_ExeEstEnt.Enabled:= True;
MaskEdit_ValorRecebido.SetFocus;
end;

end;

procedure TFrmCaixaOutrasEntradasB.MaskEdit_ValorRecebidoKeyPress(
  Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MaskEdit_ValorRecebido.Text = '' then
begin
MaskEdit_ValorRecebido.Text:= '0';
end else
MaskEdit_ValorRecebido.Text:= floattostrf(StrToFloat(MaskEdit_ValorRecebido.Text),ffFixed,18,2);
if MaskEdit_DtaEntrada.Text = '' then
begin
MaskEdit_DtaEntrada.SetFocus;
Exit;
end else
MaskEdit_DocNum.SetFocus;
end;
end;

procedure TFrmCaixaOutrasEntradasB.MaskEdit_DocNumKeyPress(Sender: TObject;
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
MaskEdit_DescCredito.SetFocus;
end;
end;

procedure TFrmCaixaOutrasEntradasB.MaskEdit_DescCreditoKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MaskEdit_ValorRecebido.Text = '' then
begin
MaskEdit_ValorRecebido.SetFocus;
Exit;
end else
BitBtn_Confirmar.Enabled:= True;
BitBtn_Confirmar.SetFocus;
end;
end;

procedure TFrmCaixaOutrasEntradasB.BitBtn_ProximoClick(Sender: TObject);
begin
Btn_Cancelar.Enabled:= True;
Btn_Estorno.Enabled:= False;
BitBtn_Confirmar.Enabled:= False;
MaskEdit_DtaEntrada.Text:= '';
MaskEdit_ValorRecebido.Text:= '0';
MaskEdit_DocNum.Text:= '';
MaskEdit_DescCredito.Text:= '';
MaskEdit_DtaEntrada.SetFocus;
end;

procedure TFrmCaixaOutrasEntradasB.Btn_CancelarClick(Sender: TObject);
begin
MaskEdit_DtaEntrada.Text:= '';
MaskEdit_ValorRecebido.Text:= '0';
MaskEdit_DocNum.Text:= '';
MaskEdit_DescCredito.Text:= '';
BitBtn_Proximo.Enabled:= True;
BitBtn_Finalizar.Enabled:= True;
BitBtn_Proximo.SetFocus;
end;

procedure TFrmCaixaOutrasEntradasB.BitBtn_FinalizarClick(Sender: TObject);
begin
Panel_EstornoEnt.Visible:= False;
BitBtn_Confirmar.Enabled:= False;
Btn_Cancelar.Enabled:= False;
MaskEdit_DtaEntrada.Text:= '';
MaskEdit_ValorRecebido.Text:= '0';
MaskEdit_DocNum.Text:= '';
MaskEdit_DescCredito.Text:= '';
ListBox_ExtEnt.Items.Text:= '';
FrmCaixaB.Panel_CaixaLivre1.Visible:= True;
FrmCaixaB.SbFecha.Enabled:= True;
FrmCaixaB.ComboBoxOpcao.Enabled:= True;
FrmCaixaB.ComboBoxOpcao.Text:= '';
FrmCaixaB.SbNovo.Enabled:= True;
FrmCaixaB.SbNovo.Caption:= 'No&vo Lançamento';
FrmCaixaB.ComboBoxOpcao.SetFocus;
iOK := 625;
Close;
end;

procedure TFrmCaixaOutrasEntradasB.Btn_EstornoClick(Sender: TObject);
begin
if ListBox_ExtEnt.Items.Text = '' then
begin
ShowMessage('Não houve lançamento(s) para estorno.');
Exit;
end else
MaskEdit_DtaEntrada.Enabled:= False;
MaskEdit_ValorRecebido.Enabled:= False;
MaskEdit_DocNum.Enabled:= False;
MaskEdit_DescCredito.Enabled:= False;
Panel_EstornoEnt.Visible:= True;
Btn_Cancelar.Enabled:= False;
BitBtn_Proximo.Enabled:= False;
BitBtn_Finalizar.Enabled:= False;
Btn_Estorno.Enabled:= False;
IBQuery_EstornoE.Close;
IBQuery_EstornoE.SQL.Clear;
IBQuery_EstornoE.SQL.Add('select * from AENTRADA');
IBQuery_EstornoE.SQL.Add('where DATA = :Hoje');
IBQuery_EstornoE.SQL.Add('order by DATA');
IBQuery_EstornoE.ParamByName('Hoje').AsDate:= Data;
IBQuery_EstornoE.Prepare;
IBQuery_EstornoE.Open;
FrmCaixaB.tbSetCapsLock(True); { Liga Caps Lock }
DBGrid_LancEnt.SetFocus;
end;

procedure TFrmCaixaOutrasEntradasB.BitBtn_ConfirmarClick(Sender: TObject);
begin
MaskEdit_ValorRecebido.Text:= floattostrf(StrToFloat(MaskEdit_ValorRecebido.Text),ffFixed,18,2);
if MaskEdit_DtaEntrada.Text = '  /  /    ' then
begin
ShowMessage('É preciso informar a data do crédito.');
MaskEdit_DtaEntrada.SetFocus;
Exit;
end else
if MaskEdit_ValorRecebido.Text = '0,00' then
begin
ShowMessage('É preciso informar o valor recebido.');
MaskEdit_ValorRecebido.SetFocus;
Exit;
end else
if MaskEdit_DescCredito.Text = '' then
begin
ShowMessage('É preciso informar a descrição do crédito.');
MaskEdit_DescCredito.SetFocus;
Exit;
end else
// da entrada no caixa
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Last;
Dm.IBDS_AENTRADA.Append;
Dm.IBDS_AENTRADADATA.AsString:= MaskEdit_DtaEntrada.Text;
Dm.IBDS_AENTRADAHISTORICO.AsString:= MaskEdit_DescCredito.Text+' C/D '+MaskEdit_DocNum.Text;
Dm.IBDS_AENTRADAND_SEU_NUMERO.AsString:= '0';
Dm.IBDS_AENTRADANUMERO_CONTRATO.AsString:= MaskEdit_DocNum.Text;
Dm.IBDS_AENTRADAVALOR.AsString:= MaskEdit_ValorRecebido.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
ListBox_ExtEnt.Items.Add(MaskEdit_DtaEntrada.Text+'  '+MaskEdit_ValorRecebido.Text+'  '+MaskEdit_DescCredito.Text+' C/D '+MaskEdit_DocNum.Text);
BitBtn_Confirmar.Enabled:= False;
BitBtn_Proximo.Enabled:= True;
Btn_Estorno.Enabled:= True;
BitBtn_Proximo.SetFocus;
end;

procedure TFrmCaixaOutrasEntradasB.Btn_ExeEstEntClick(Sender: TObject);
Var
Valor:String;
begin
if (DBGrid_LancEnt.Fields[0].Text = '') or (DBGrid_LancEnt.Fields[1].Text = '') or (DBGrid_LancEnt.Fields[2].Text = '') then
begin
ShowMessage('Não existe lançamento(s) para estorno.');
Exit;
end else
Valor:= FormatFloat('#,##0.00', IBQuery_EstornoEVALOR.AsFloat);
DadosEstornoE:= DBGrid_LancEnt.Fields[0].Text+'  '+Valor+'  '+DBGrid_LancEnt.Fields[1].Text+' -> ESTORNADO';
if EstornoEnt = '' then
begin
ShowMessage('Selecione o lançamento e pressione "Enter" antes de estornar.');
DBGrid_LancEnt.SetFocus;
Exit;
end else
IBQuery_EstornoE.Close;
IBQuery_EstornoE.Sql.Clear;
IBQuery_EstornoE.SQL.Add('Delete from AENTRADA ');
IBQuery_EstornoE.SQL.Add('where ID =:Descricao');
IBQuery_EstornoE.ParamByName('Descricao').AsString:= EstornoEnt;
IBQuery_EstornoE.ExecSQL;
Dm.IBDS_AENTRADA.Close;
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Edit;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_AENTRADA.Post;
Dm.IBDS_AENTRADA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_EstornoE.Close;
IBQuery_EstornoE.SQL.Clear;
IBQuery_EstornoE.SQL.Add('select * from AENTRADA');
IBQuery_EstornoE.SQL.Add('where DATA = :Hoje');
IBQuery_EstornoE.SQL.Add('order by DATA');
IBQuery_EstornoE.ParamByName('Hoje').AsDate:= Data;
IBQuery_EstornoE.Prepare;
IBQuery_EstornoE.Open;

ListBox_ExtEnt.ItemIndex:= 0;
ListBox_ExtEnt.Perform(LB_SELECTSTRING,0,LongInt(PChar(EstornoEnt)));
ListBox_ExtEnt.Items.Delete(ListBox_ExtEnt.ItemIndex);
ListBox_ExtEnt.Items.Add(DadosEstornoE);

EstornoEnt:= '';
Btn_SairEstEnt.SetFocus;
end;

procedure TFrmCaixaOutrasEntradasB.Btn_SairEstEntClick(Sender: TObject);
begin
MaskEdit_DtaEntrada.Enabled:= True;
MaskEdit_ValorRecebido.Enabled:= True;
MaskEdit_DocNum.Enabled:= True;
MaskEdit_DescCredito.Enabled:= True;
BitBtn_Finalizar.Enabled:= True;
BitBtn_Proximo.Enabled:= True;
BitBtn_Proximo.SetFocus;
Panel_EstornoEnt.Visible:= False;
end;

procedure TFrmCaixaOutrasEntradasB.DBGrid_LancEntKeyPress(Sender: TObject;
  var Key: Char);
begin
FrmCaixaB.tbSetCapsLock(True); { Liga Caps Lock }
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
EstornoEnt:= IBQuery_EstornoEID.AsString;//DBGrid_LancEnt.Fields[1].Text;
if EstornoEnt = '' then
begin
Exit;
end else
Btn_ExeEstEnt.SetFocus;
  end;
end;

procedure TFrmCaixaOutrasEntradasB.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK := 624;
end;

end.
