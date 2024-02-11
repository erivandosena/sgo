unit UnVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmVendedor = class(TForm)
    Panel1: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNova: TBitBtn;
    SbSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SbAtualizar: TBitBtn;
    Bevel2: TBevel;
    SpeedButton1: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    IBQueryVendedor: TIBQuery;
    Panel4: TPanel;
    procedure SbNovaClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAtualizarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedor: TFrmVendedor;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmVendedor.SbNovaClick(Sender: TObject);
begin
IBQueryVendedor.Close;
IBQueryVendedor.Open;
Dm.IBDS_VENDEDOR.Last;
Dm.IBDS_VENDEDOR.Append;
Dm.IBDS_VENDEDORCOD_VENDEDOR.AsString:= Dm.IBDS_VENDEDORCOD_VEDR.AsString;
Dm.IBDS_VENDEDORCOD_VENDEDOR.AsString:= FrmPrincipal.ZeroEsquerda(strtoint(Dm.IBDS_VENDEDORCOD_VENDEDOR.AsString), 4);
DBEdit1.SetFocus;
end;

procedure TFrmVendedor.SbSalvarClick(Sender: TObject);
begin
IBQueryVendedor.Close;
IBQueryVendedor.Open;
if DBEdit2.Text = '' then
begin
DBEdit2.Color:=$00F4FFF4;
DBEdit2.SetFocus;
Exit;
end
else
if DBEdit1.Text = '' then
begin
DBEdit1.Color:=$00F4FFF4;
DBEdit1.SetFocus;
Exit;
end
else

if not IBQueryVendedor.Locate('NOME_VENDEDOR', DBEdit1.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_VENDEDOR.Post;
Dm.IBDS_VENDEDOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBEdit1.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o vendedor: "'+DBEdit1.Text+'" já está cadastrado, informe outro nome.');
Dm.IBDS_VENDEDOR.Edit;
DBEdit1.SetFocus;
end;

procedure TFrmVendedor.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este vendedor?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_VENDEDOR.Delete;
Dm.IBDS_VENDEDOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmVendedor);
Exit;
end
else
DBEdit1.SetFocus;
end;

procedure TFrmVendedor.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_VENDEDOR.Cancel;
Dm.IBDS_VENDEDOR.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmVendedor.SbAtualizarClick(Sender: TObject);
begin
Dm.IBDS_VENDEDOR.close;
Dm.IBDS_VENDEDOR.Open;
Dm.IBDS_VENDEDOR.Refresh;
end;

procedure TFrmVendedor.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmVendedor.DataSource1StateChange(Sender: TObject);
begin
 SbNova.Enabled           := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_VENDEDOR.RecordCount > 0);
 DBGrid1.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_VENDEDOR.RecordCount > 0);
 SbAtualizar.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_VENDEDOR.RecordCount > 0);
 SbSalvar.Enabled          := DataSource1.State in [dsInsert,dsEdit];
 SbCancelar.Enabled        := DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmVendedor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure TFrmVendedor.FormShow(Sender: TObject);
begin
FrmVendedor.Top:=139;
FrmVendedor.Left:=181;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmVendedor.Caption:= FrmVendedor.Caption;
Exit;
end else
FrmVendedor.Caption:= FrmVendedor.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

end.
