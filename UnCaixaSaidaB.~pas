unit UnCaixaSaidaB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, DBClient, IBCustomDataSet,
  DB;

type
  TFrmCaixaSaidaB = class(TForm)
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
  FrmCaixaSaidaB: TFrmCaixaSaidaB;

implementation

uses UnCaixaB, UnDmFluxo, UnPrincipal;

{$R *.dfm}

procedure TFrmCaixaSaidaB.MEdit_DataSaidaKeyPress(Sender: TObject;
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

procedure TFrmCaixaSaidaB.MEdit_ValorPagoKeyPress(Sender: TObject;
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

procedure TFrmCaixaSaidaB.MEdit_NumeroDocKeyPress(Sender: TObject;
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

procedure TFrmCaixaSaidaB.MEdit_DescricaoKeyPress(Sender: TObject;
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

procedure TFrmCaixaSaidaB.Btn_ProximoDebitoClick(Sender: TObject);
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

procedure TFrmCaixaSaidaB.Btn_CancelarSaidaClick(Sender: TObject);
begin
MEdit_DataSaida.Text:= '';
MEdit_ValorPago.Text:= '0';
MEdit_NumeroDoc.Text:= '';
MEdit_Descricao.Text:= '';
Btn_ProximoDebito.Enabled:= True;
Btn_CancelaSaida.Enabled:= True;
Btn_ProximoDebito.SetFocus;
end;

procedure TFrmCaixaSaidaB.Btn_CancelaSaidaClick(Sender: TObject);
begin
Panel_EstornoSai.Visible:= False;
Btn_ConfirmaDebito.Enabled:= False;
Btn_CancelarSaida.Enabled:= False;
MEdit_DataSaida.Text:= '';
MEdit_ValorPago.Text:= '0';
MEdit_NumeroDoc.Text:= '';
MEdit_Descricao.Text:= '';
ListBox_ExtSai.Items.Text:= '';

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

procedure TFrmCaixaSaidaB.Btn_EstornoSaidaClick(Sender: TObject);
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

DmFluxo.QueryApagar.Close;
DmFluxo.QueryApagar.SQL.Clear;
DmFluxo.QueryApagar.SQL.Add('select * from ASAIDA');
DmFluxo.QueryApagar.SQL.Add('where DATA = :Hoje');
DmFluxo.QueryApagar.SQL.Add('order by DATA');
DmFluxo.QueryApagar.ParamByName('Hoje').AsDate:= Data;
DmFluxo.QueryApagar.Prepare;
DmFluxo.QueryApagar.Open;

FrmCaixaB.tbSetCapsLock(True); { Liga Caps Lock }
DBGrid_LancSai.SetFocus;
end;

procedure TFrmCaixaSaidaB.Btn_ConfirmaDebitoClick(Sender: TObject);
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
DmFluxo.Provider.DataSet := DmFluxo.QueryApagar;
DmFluxo.DS.Dataset := DmFluxo.cdsApagar;

DmFluxo.ds.dataset.active := true;
TClientDataset(DmFluxo.DS.Dataset).Append;

DmFluxo.cdsAPagarDATA.AsString:= MEdit_DataSaida.Text;
DmFluxo.cdsAPagarHISTORICO.AsString:= MEdit_Descricao.Text+' Doc '+MEdit_NumeroDoc.Text;
DmFluxo.cdsAPagarVALOR.AsString:= MEdit_ValorPago.Text;

TClientDataset(DmFluxo.DS.Dataset).Post;
  with TClientDataset(DmFluxo.DS.Dataset) do
  begin
    if ChangeCount = 0 then begin
      MessageDlg('Não existe alterações para serem aplicadas !', mtWarning, [mbOk], 0);
     Abort;
    end;
 //   ApplyUpdates(0);
   if (TClientDataset(DmFluxo.DS.Dataset).ChangeCount > 0) then
    TClientDataset(DmFluxo.DS.Dataset).ApplyUpdates(0);
  end;
 //   Refresh;
   if TClientDataset(DmFluxo.DS.Dataset).UpdateStatus = usUnModified then
    TClientDataset(DmFluxo.DS.Dataset).RefreshRecord;

ListBox_ExtSai.Items.Add(MEdit_DataSaida.Text+'  '+MEdit_ValorPago.Text+'  '+MEdit_Descricao.Text+' Doc '+MEdit_NumeroDoc.Text);
Btn_ConfirmaDebito.Enabled:= False;
Btn_ProximoDebito.Enabled:= True;
Btn_EstornoSaida.Enabled:= True;
Btn_ProximoDebito.SetFocus;
end;

procedure TFrmCaixaSaidaB.Btn_ExeEstSaiClick(Sender: TObject);
Var
Valor:String;
begin
if (DBGrid_LancSai.Fields[0].Text = '') or (DBGrid_LancSai.Fields[1].Text = '') or (DBGrid_LancSai.Fields[2].Text = '') then
begin
ShowMessage('Não existe lançamento(s) para estorno.');
Exit;
end else
Valor:= FormatFloat('#,##0.00', DmFluxo.QueryApagarVALOR.AsFloat);
DadosEstornoS:= DBGrid_LancSai.Fields[0].Text+'  '+Valor+'  '+DBGrid_LancSai.Fields[1].Text+' -> ESTORNADO';
if EstornoSai = '' then
begin
ShowMessage('Selecione o lançamento e pressione "Enter" antes de estornar.');
DBGrid_LancSai.SetFocus;
Exit;
end else

DmFluxo.QueryApagar.Close;
DmFluxo.QueryApagar.SQL.Clear;
DmFluxo.QueryApagar.SQL.Add('Delete from ASAIDA ');
DmFluxo.QueryApagar.SQL.Add('where ID =:Descricao');
DmFluxo.QueryApagar.ParamByName('Descricao').AsString:= EstornoSai;
DmFluxo.QueryApagar.ExecSQL;

DmFluxo.QueryApagar.Close;
DmFluxo.QueryApagar.SQL.Clear;
DmFluxo.QueryApagar.SQL.Add('select * from ASAIDA');
DmFluxo.QueryApagar.SQL.Add('where DATA = :Hoje');
DmFluxo.QueryApagar.SQL.Add('order by DATA');
DmFluxo.QueryApagar.ParamByName('Hoje').AsDate:= Data;
DmFluxo.QueryApagar.Prepare;
DmFluxo.QueryApagar.Open;

ListBox_ExtSai.ItemIndex:= 0;
ListBox_ExtSai.Perform(LB_SELECTSTRING,0,LongInt(PChar(EstornoSai)));
ListBox_ExtSai.Items.Delete(ListBox_ExtSai.ItemIndex);
ListBox_ExtSai.Items.Add(DadosEstornoS);

EstornoSai:= '';
Btn_SairEstSai.SetFocus;
end;

procedure TFrmCaixaSaidaB.Btn_SairEstSaiClick(Sender: TObject);
begin
MEdit_DataSaida.Enabled:= True;
MEdit_ValorPago.Enabled:= True;
MEdit_NumeroDoc.Enabled:= True;
MEdit_Descricao.Enabled:= True;
Btn_CancelaSaida.Enabled:= True;
Btn_ProximoDebito.Enabled:= True;
Btn_ProximoDebito.SetFocus;
Panel_EstornoSai.Visible:= False;
DmFluxo.QueryApagar.Close;
end;

procedure TFrmCaixaSaidaB.DBGrid_LancSaiKeyPress(Sender: TObject;
  var Key: Char);
begin
FrmCaixaB.tbSetCapsLock(True); { Liga Caps Lock }
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
EstornoSai:= DmFluxo.QueryApagarID.AsString;//DBGrid_LancSai.Fields[1].Text;
if EstornoSai = '' then
begin
Exit;
end else
Btn_ExeEstSai.SetFocus;
  end;
end;

procedure TFrmCaixaSaidaB.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if iOK <> 625 then Canclose := False;
iOK := 624;
end;

end.
