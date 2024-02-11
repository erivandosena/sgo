unit UnMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmMedico = class(TForm)
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
    IBQueryMedico: TIBQuery;
    Panel4: TPanel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
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
  FrmMedico: TFrmMedico;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmMedico.SbNovaClick(Sender: TObject);
begin
IBQueryMedico.Close;
IBQueryMedico.Open;
Dm.IBDS_MEDICO.Last;
Dm.IBDS_MEDICO.Append;
DBEdit1.SetFocus;
end;

procedure TFrmMedico.SbSalvarClick(Sender: TObject);
begin
IBQueryMedico.Close;
IBQueryMedico.Open;
if DBEdit1.Text = '' then
begin
DBEdit1.Color:=$00F4FFF4;
DBEdit1.SetFocus;
Exit;
end
else
if not IBQueryMedico.Locate('NOME_MEDICO', DBEdit1.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MEDICO.Post;
Dm.IBDS_MEDICO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBEdit1.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o médico oftalmologista: "'+DBEdit1.Text+'" já está cadastrado, informe outro nome.');
Dm.IBDS_MEDICO.Edit;
DBEdit1.SetFocus;
end;

procedure TFrmMedico.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este vendedor?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_MEDICO.Delete;
Dm.IBDS_MEDICO.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmMedico);
Exit;
end
else
DBEdit1.SetFocus;
end;

procedure TFrmMedico.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_MEDICO.Cancel;
Dm.IBDS_MEDICO.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmMedico.SbAtualizarClick(Sender: TObject);
begin
Dm.IBDS_MEDICO.close;
Dm.IBDS_MEDICO.Open;
Dm.IBDS_MEDICO.Refresh;
end;

procedure TFrmMedico.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMedico.DataSource1StateChange(Sender: TObject);
begin
 SbNova.Enabled           := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MEDICO.RecordCount > 0);
 DBGrid1.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MEDICO.RecordCount > 0);
 SbAtualizar.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MEDICO.RecordCount > 0);
 SbSalvar.Enabled          := DataSource1.State in [dsInsert,dsEdit];
 SbCancelar.Enabled        := DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmMedico.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure TFrmMedico.FormShow(Sender: TObject);
begin
FrmMedico.Top:=139;
FrmMedico.Left:=181;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmMedico.Caption:= FrmMedico.Caption;
Exit;
end else
FrmMedico.Caption:= FrmMedico.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

end.
