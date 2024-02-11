unit UnLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Mask,
  ExtCtrls, Grids, DBGrids;

type
  TFrmLocalizar = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    RadioButton5: TRadioButton;
    DataSource2: TDataSource;
    PanelSPC: TPanel;
    TimerSPC: TTimer;
    IBQuery_SPC: TIBQuery;
    IBQuery_SPCNUMERO_CONTRATO: TIBStringField;
    IBQuery_SPCNOME: TIBStringField;
    IBQuery_SPCCPF: TIBStringField;
    DS_SPC: TDataSource;
    Panel2: TPanel;
    IBQuery_SPCCODIGO: TIBStringField;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton3KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton5KeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerSPCTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocalizar: TFrmLocalizar;

implementation

uses UnDm, UnPrincipal, UnCaixa;

{$R *.dfm}

procedure TFrmLocalizar.Edit1Change(Sender: TObject);
var a,b,c: String;
begin
Screen.Cursor := crHourglass;
if RadioButton2.Checked = True then
begin
Edit1.MaxLength:=11;
Edit1.EditMask:='999.999.999-99;1;_';
end else
Edit1.EditMask:='';

If Edit1.Text = '' then
Begin
IBQuery1.SQL.Clear;
end
else
if RadioButton1.Checked = True then begin
Edit1.MaxLength:=50;
IBQuery1.SQL.Clear;
a:='Select CODIGO, NOME, CPF, RG from CLIENTES ';
b:='Where NOME Like:Consulta ';
c:='Order By NOME';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery1.Close;
IBQuery1.Open
end else
if RadioButton2.Checked = True then begin
Edit1.MaxLength:=14;
IBQuery1.SQL.Clear;
a:='Select CODIGO, NOME, CPF, RG from CLIENTES ';
b:='Where CPF Like:Consulta ';
c:='Order By CPF';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery1.Close;
IBQuery1.Open
end else
if RadioButton3.Checked = True then begin
Edit1.MaxLength:=19;
IBQuery1.SQL.Clear;
a:='Select CODIGO, NOME, CPF, RG from CLIENTES ';
b:='Where RG Like:Consulta ';
c:='Order By RG';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery1.Close;
IBQuery1.Open
end else
if Edit1.Text <>'' Then begin
Edit1.MaxLength:=13;
IBQuery1.SQL.Clear;
a:='Select CODIGO, NOME, CPF, RG from CLIENTES ';
b:='Where CODIGO ='+Edit1.Text;
c:='Order By CODIGO';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Close;
IBQuery1.Open
end;
Screen.Cursor := crDefault;
end;

procedure TFrmLocalizar.DBGrid1CellClick(Column: TColumn);
begin
if IBQuery1.Active = False  then
begin
Abort;
Exit;
end else
DataSource2.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, [loPartialKey, loCaseInsensitive]);
IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select * from SPC ');
IBQuery_SPC.SQL.Add('where CODIGO = :Cod ');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.ParamByName('Cod').AsString := DBGrid1.Fields[0].text;
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
if IBQuery_SPC.Locate('CODIGO',DBGrid1.Fields[0].text,[]) then
begin
FrmLocalizar.Height:= 385;
TimerSPC.Enabled:= True;
Exit;
end else
FrmLocalizar.Height:= 288;
TimerSPC.Enabled:= False;
end;

procedure TFrmLocalizar.FormShow(Sender: TObject);
begin
FrmLocalizar.Top:= 100;
FrmLocalizar.Left:= 50;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmLocalizar.Caption:= FrmLocalizar.Caption;
Exit;
end else
FrmLocalizar.Caption:= FrmLocalizar.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
Edit1.SetFocus;
end;

procedure TFrmLocalizar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
DBGrid1.SetFocus;
If Dm.IBDS_VENDAS.Active = True then
begin
Frmcaixa.ME_Cliente.Text:= DBGrid1.Fields[1].Text;
Close;
Exit;
end else
If FrmPrincipal.Enabled = True then
begin
FrmPrincipal.BitBtn1.SetFocus;
Close;
end;
end;
end;

procedure TFrmLocalizar.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrmLocalizar.RadioButton1Click(Sender: TObject);
begin
Label5.Caption:='Informe o nome do(a) cliente:';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton2Click(Sender: TObject);
begin
Label5.Caption:='Informe o n� do CPF do(a) cliente:';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton3Click(Sender: TObject);
begin
Label5.Caption:='Informe o n� do RG do(a) cliente:';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton4Click(Sender: TObject);
begin
Label5.Caption:='Informe o n� de matr�cula do(a) s�cio(a):';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
DBGrid1.SetFocus;
  end else
if RadioButton2.Checked = True then
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end else
if RadioButton3.Checked = True then
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end else
if RadioButton5.Checked = True then
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;
end;

procedure TFrmLocalizar.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if IBQuery1.Active = False  then
begin
Abort;
Exit;
end else
DataSource2.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, [loPartialKey, loCaseInsensitive]);
IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select * from SPC ');
IBQuery_SPC.SQL.Add('where CODIGO = :Cod ');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.ParamByName('Cod').AsString := DBGrid1.Fields[0].text;
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
if IBQuery_SPC.Locate('CODIGO',DBGrid1.Fields[0].text,[]) then
begin
FrmLocalizar.Height:= 385;
TimerSPC.Enabled:= True;
Exit;
end else
FrmLocalizar.Height:= 288;
TimerSPC.Enabled:= False;
end;

procedure TFrmLocalizar.RadioButton5Click(Sender: TObject);
begin
Label5.Caption:='Informe o c�digo do(a) cliente:';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmLocalizar.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
if RadioButton1.Checked = True then
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_CLIENTES.Locate('NOME', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_CLIENTES.FieldByName('NOME').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
        end;
    end;  
  end;
end;
end;

procedure TFrmLocalizar.TimerSPCTimer(Sender: TObject);
begin
PanelSPC.Visible:=not PanelSPC.Visible;
end;

end.




