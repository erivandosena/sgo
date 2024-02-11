unit UnCaixaSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, DBClient, IBCustomDataSet,
  DB;

type
  TFrmCaixaSaida = class(TForm)
    Panel_EstornoSai: TPanel;
    Label71: TLabel;
    Btn_ExeEstSai: TBitBtn;
    Btn_SairEstSai: TBitBtn;
    DBGrid_LancSai: TDBGrid;
    MEdit_ValorPago: TMaskEdit;
    MEdit_NumeroDoc: TMaskEdit;
    MEdit_Descricao: TMaskEdit;
    MEdit_DataSaida: TMaskEdit;
    ListBox_ExtSai: TListBox;
    Label72: TLabel;
    Label43: TLabel;
    Label39: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Btn_ProximoDebito: TBitBtn;
    Btn_EstornoSaida: TBitBtn;
    Btn_ConfirmaDebito: TBitBtn;
    Btn_CancelaSaida: TBitBtn;
    Btn_CancelarSaida: TBitBtn;
    Bevel4: TBevel;
    procedure MEdit_DataSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_ValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_NumeroDocKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ProximoDebitoClick(Sender: TObject);
    procedure Btn_CancelarSaidaClick(Sender: TObject);
    procedure Btn_CancelaSaidaClick(Sender: TObject);
    procedure Btn_EstornoSaidaClick(Sender: TObject);
    procedure Btn_ConfirmaDebitoClick(Sender: TObject);
    procedure Btn_ExeEstSaiClick(Sender: TObject);
    procedure Btn_SairEstSaiClick(Sender: TObject);
    procedure DBGrid_LancSaiKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaSaida: TFrmCaixaSaida;

implementation

uses UnCaixa, UnDmFluxo, UnPrincipal;

{$R *.dfm}

procedure TFrmCaixaSaida.MEdit_DataSaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
MEdit_DataSaida.Text:= DateToStr(Data);
MEdit_ValorPago.SetFocus;
end;
end;

procedure TFrmCaixaSaida.MEdit_ValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_ValorPago.Text = '' then
begin
MEdit_ValorPago.Text:= '0';
end else
MEdit_ValorPago.Text:= floattostrf(StrToFloat(MEdit_ValorPago.Text),ffFixed,18,2);
if MEdit_DataSaida.Text = '' then
begin
MEdit_DataSaida.SetFocus;
Exit;
end else
MEdit_NumeroDoc.SetFocus;
end;
end;

procedure TFrmCaixaSaida.MEdit_NumeroDocKeyPress(Sender: TObject;
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
MEdit_Descricao.SetFocus;
end;
end;

procedure TFrmCaixaSaida.MEdit_DescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_ValorPago.Text = '' then
begin
MEdit_ValorPago.SetFocus;
Exit;
end else
Btn_ConfirmaDebito.Enabled:= True;
Btn_ConfirmaDebito.SetFocus;
end;
end;

procedure TFrmCaixaSaida.Btn_ProximoDebitoClick(Sender: TObject);
begin
Btn_CancelarSaida.Enabled:= True;
Btn_EstornoSaida.Enabled:= False;
Btn_ConfirmaDebito.Enabled:= False;
MEdit_DataSaida.Text:= '';
MEdit_ValorPago.Text:= '0';
MEdit_NumeroDoc.Text:= '';
MEdit_Descricao.Text:= '';
MEdit_DataSaida.SetFocus;
end;

procedure TFrmCaixaSaida.Btn_CancelarSaidaClick(Sender: TObject);
begin
MEdit_DataSaida.Text:= '';
MEdit_ValorPago.Text:= '0';
MEdit_NumeroDoc.Text:= '';
MEdit_Descricao.Text:= '';
Btn_ProximoDebito.Enabled:= True;
Btn_CancelaSaida.Enabled:= True;
Btn_ProximoDebito.SetFocus;
end;

procedure TFrmCaixaSaida.Btn_CancelaSaidaClick(Sender: TObject);
begin
Panel_EstornoSai.Visible:= False;
Btn_ConfirmaDebito.Enabled:= False;
Btn_CancelarSaida.Enabled:= False;
MEdit_DataSaida.Text:= '';
MEdit_ValorPago.Text:= '0';
MEdit_NumeroDoc.Text:= '';
MEdit_Descricao.Text:= '';
ListBox_ExtSai.Items.Text:= '';

FrmCaixa.Panel_CaixaLivre1.Visible:= True;
FrmCaixa.SbFecha.Enabled:= True;
FrmCaixa.ComboBoxOpcao.Enabled:= True;
FrmCaixa.ComboBoxOpcao.Text:= '';
FrmCaixa.SbNovo.Enabled:= True;
FrmCaixa.SbNovo.Caption:= 'No&vo Lançamento';
FrmCaixa.ComboBoxOpcao.SetFocus;
iOK := 625;
Close;
end;

procedure TFrmCaixaSaida.Btn_EstornoSaidaClick(Sender: TObject);
begin
if ListBox_ExtSai.Items.Text = '' then
begin
ShowMessage('Não houve lançamento(s) para estorno.');
Exit;
end else
MEdit_DataSaida.Enabled:= False;
MEdit_ValorPago.Enabled:= False;
MEdit_NumeroDoc.Enabled:= False;
MEdit_Descricao.Enabled:= False;
Panel_EstornoSai.Visible:= True;
Btn_CancelarSaida.Enabled:= False;
Btn_ProximoDebito.Enabled:= False;
Btn_CancelaSaida.Enabled:= False;
Btn_EstornoSaida.Enabled:= False;

DmFluxo.Query_BApagar.Close;
DmFluxo.Query_BApagar.SQL.Clear;
DmFluxo.Query_BApagar.SQL.Add('select * from BSAIDA');
DmFluxo.Query_BApagar.SQL.Add('where DATA = :Hoje');
DmFluxo.Query_BApagar.SQL.Add('order by DATA');
DmFluxo.Query_BApagar.ParamByName('Hoje').AsDate:= Data;
DmFluxo.Query_BApagar.Prepare;
DmFluxo.Query_BApagar.Open;

FrmCaixa.tbSetCapsLock(True); { Liga Caps Lock }
DBGrid_LancSai.SetFocus;
end;

procedure TFrmCaixaSaida.Btn_ConfirmaDebitoClick(Sender: TObject);
begin
MEdit_ValorPago.Text:= floattostrf(StrToFloat(MEdit_ValorPago.Text),ffFixed,18,2);
if MEdit_DataSaida.Text = '  /  /    ' then
begin
ShowMessage('É preciso informar a data do débito.');
MEdit_DataSaida.SetFocus;
Exit;
end else
if MEdit_ValorPago.Text = '0,00' then
begin
ShowMessage('É preciso informar o valor pago.');
MEdit_ValorPago.SetFocus;
Exit;
end else
if MEdit_Descricao.Text = '' then
begin
ShowMessage('É preciso informar a descrição do débito.');
MEdit_Descricao.SetFocus;
Exit;
end else
// da saída no caixa
DmFluxo.BProvider.DataSet := DmFluxo.Query_BApagar;
DmFluxo.DS_B.Dataset := DmFluxo.cds_BApagar;

DmFluxo.DS_B.dataset.active := true;
TClientDataset(DmFluxo.DS_B.Dataset).Append;

DmFluxo.cds_BApagarDATA.AsString:= MEdit_DataSaida.Text;
DmFluxo.cds_BApagarHISTORICO.AsString:= MEdit_Descricao.Text+' Doc '+MEdit_NumeroDoc.Text;
DmFluxo.cds_BApagarVALOR.AsString:= MEdit_ValorPago.Text;

TClientDataset(DmFluxo.DS_B.Dataset).Post;
  with TClientDataset(DmFluxo.DS_B.Dataset) do
  begin
    if ChangeCount = 0 then begin
      MessageDlg('Não existe alterações para serem aplicadas !', mtWarning, [mbOk], 0);
     Abort;
    end;
 //   ApplyUpdates(0);
   if (TClientDataset(DmFluxo.DS_B.Dataset).ChangeCount > 0) then
    TClientDataset(DmFluxo.DS_B.Dataset).ApplyUpdates(0);
  end;
 //   Refresh;
   if TClientDataset(DmFluxo.DS_B.Dataset).UpdateStatus = usUnModified then
    TClientDataset(DmFluxo.DS_B.Dataset).RefreshRecord;

ListBox_ExtSai.Items.Add(MEdit_DataSaida.Text+'  '+MEdit_ValorPago.Text+'  '+MEdit_Descricao.Text+' Doc '+MEdit_NumeroDoc.Text);
Btn_ConfirmaDebito.Enabled:= False;
Btn_ProximoDebito.Enabled:= True;
Btn_EstornoSaida.Enabled:= True;
Btn_ProximoDebito.SetFocus;
end;

procedure TFrmCaixaSaida.Btn_ExeEstSaiClick(Sender: TObject);
Var
Valor:String;
begin
if (DBGrid_LancSai.Fields[0].Text = '') or (DBGrid_LancSai.Fields[1].Text = '') or (DBGrid_LancSai.Fields[2].Text = '') then
begin
ShowMessage('Não existe lançamento(s) para estorno.');
Exit;
end else
Valor:= FormatFloat('#,##0.00', DmFluxo.Query_BApagarVALOR.AsFloat);
DadosEstornoS:= DBGrid_LancSai.Fields[0].Text+'  '+Valor+'  '+DBGrid_LancSai.Fields[1].Text+' -> ESTORNADO';
if EstornoSai = '' then
begin
ShowMessage('Selecione o lançamento e pressione "Enter" antes de estornar.');
DBGrid_LancSai.SetFocus;
Exit;
end else

DmFluxo.Query_BApagar.Close;
DmFluxo.Query_BApagar.SQL.Clear;
DmFluxo.Query_BApagar.SQL.Add('Delete from BSAIDA ');
DmFluxo.Query_BApagar.SQL.Add('where ID =:Descricao');
DmFluxo.Query_BApagar.ParamByName('Descricao').AsString:= EstornoSai;
DmFluxo.Query_BApagar.ExecSQL;

DmFluxo.Query_BApagar.Close;
DmFluxo.Query_BApagar.SQL.Clear;
DmFluxo.Query_BApagar.SQL.Add('select * from BSAIDA');
DmFluxo.Query_BApagar.SQL.Add('where DATA = :Hoje');
DmFluxo.Query_BApagar.SQL.Add('order by DATA');
DmFluxo.Query_BApagar.ParamByName('Hoje').AsDate:= Data;
DmFluxo.Query_BApagar.Prepare;
DmFluxo.Query_BApagar.Open;

ListBox_ExtSai.ItemIndex:= 0;
ListBox_ExtSai.Perform(LB_SELECTSTRING,0,LongInt(PChar(EstornoSai)));
ListBox_ExtSai.Items.Delete(ListBox_ExtSai.ItemIndex);
ListBox_ExtSai.Items.Add(DadosEstornoS);

EstornoSai:= '';
Btn_SairEstSai.SetFocus;
end;

procedure TFrmCaixaSaida.Btn_SairEstSaiClick(Sender: TObject);
begin
MEdit_DataSaida.Enabled:= True;
MEdit_ValorPago.Enabled:= True;
MEdit_NumeroDoc.Enabled:= True;
MEdit_Descricao.Enabled:= True;
Btn_CancelaSaida.Enabled:= True;
Btn_ProximoDebito.Enabled:= True;
Btn_ProximoDebito.SetFocus;
Panel_EstornoSai.Visible:= False;
DmFluxo.Query_BApagar.Close;
end;

procedure TFrmCaixaSaida.DBGrid_LancSaiKeyPress(Sender: TObject;
  var Key: Char);
begin
FrmCaixa.tbSetCapsLock(True); { Liga Caps Lock }
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
EstornoSai:= DmFluxo.Query_BApagarID.AsString;//DBGrid_LancSai.Fields[1].Text;
if EstornoSai = '' then
begin
Exit;
end else
Btn_ExeEstSai.SetFocus;
  end;
end;

procedure TFrmCaixaSaida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK := 624;
end;

end.
