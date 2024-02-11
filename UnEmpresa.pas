unit UnEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Menus, DB, ExtCtrls, StdCtrls, jpeg, DBCtrls, Mask,
  Buttons;

type
  TFrmEmpresa = class(TForm)
    Panel1: TPanel;
    SbSalvar: TBitBtn;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBComboBox16: TDBComboBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    BitBtn1: TBitBtn;
    Label19: TLabel;
    Panel2: TPanel;
    Image2: TImage;
    Image1: TImage;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    ExcluirImagemdaLogomarca1: TMenuItem;
    SalvarImagemdaLogomarca1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel3: TPanel;
    SbInserirImagem: TBitBtn;
    SpeedButton5: TBitBtn;
    SaveDialog1: TSaveDialog;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Bevel1: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SbInserirImagemClick(Sender: TObject);
    procedure LimparImagem1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Image1Click(Sender: TObject);
    procedure SalvarImagemdaLogomarca1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFileToDB(const FilePath: string);
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmEmpresa.SbSalvarClick(Sender: TObject);
begin
if DBEdit1.Text = '' then
begin
ShowMessage('Preencha o campo "Nome Empresarial"');
DBEdit1.SetFocus;
Exit;
end else
if DBEdit3.Text = '  .   .   /    -  ' then
begin
ShowMessage('Preencha o campo "C.N.P.J."');
DBEdit3.SetFocus;
Exit;
end else
if DBEdit4.Text = '  .      - ' then
begin
ShowMessage('Preencha o campo "I.E."');
DBEdit4.SetFocus;
Exit;
end else
Try
    Screen.Cursor := crSQLWait;
    If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
      DM.IBTransaction.CommitRetaining;
  Finally
    Screen.Cursor := crDefault;
  End;
DBEdit1.SetFocus;
if FrmEmpresa.Caption = 'Empresa' then
begin
FrmEmpresa.Caption:= FrmEmpresa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString+' - '+Dm.IBDS_EMPRESACNPJ.AsString;
end;
end;

procedure TFrmEmpresa.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_EMPRESA.Delete;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmEmpresa);
DBEdit1.SetFocus;
end;
end;

procedure TFrmEmpresa.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEmpresa.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Cancel;
Dm.IBDS_EMPRESA.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmEmpresa.DataSource1StateChange(Sender: TObject);
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
SbExcluir.Enabled    := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_EMPRESA.RecordCount > 0);
BitBtn1.Enabled    := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_EMPRESA.RecordCount > 0);
SbSalvar.Enabled     := DataSource1.State in [dsInsert,dsEdit];
SbInserirImagem.Enabled     := DataSource1.State in [dsInsert,dsEdit];
SbCancelar.Enabled   := DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmEmpresa.SbInserirImagemClick(Sender: TObject);
var i: integer;
begin
 if DataSource1.State=dsinactive then
  begin
     MessageDlg('Abra um registro antes de alterar os dados.',mtinformation,[mbok],0);
     Exit;
  end;
     if DataSource1.State=dsbrowse then
Dm.IBDS_EMPRESA.Edit;
begin
  With OpenPictureDialog1 do if Execute
   then
   for i := 0 to Files.Count-1
        do LoadFileToDB(Files[i]);
end;
end;

procedure TFrmEmpresa.LimparImagem1Click(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').Clear;
Image1.Picture.Graphic:= nil;
Image2.Visible:=True;
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
DM.IBTransaction.CommitRetaining;
end;

procedure TFrmEmpresa.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_EMPRESALOGO_EMPRESA.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_EMPRESALOGO_EMPRESA.SaveToStream(MS);
          MS.Seek(0,soFromBeginning);
          with J1 do begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(MS);
          end;
         Image1.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    End;
if  Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').asString = '' then
begin
Image2.Visible:=True;
end
else
Image2.Visible:=False;
end;

procedure TFrmEmpresa.LoadFileToDB(const FilePath: string);
var
 MS: TMemoryStream; J1: TJPEGImage;
begin
  MS := TMemoryStream.Create;
  J1 := TJPEGImage.Create;
    Try{Except}
     {Adquira quadro indiretamente por TImage, stream(flua), e então para DB}
      Image1.Picture.LoadFromFile(FilePath);
     J1.Assign(Image1.Picture);
      J1.SaveToStream(MS);
      Dm.IBDS_EMPRESALOGO_EMPRESA.LoadFromStream(MS);
    Except
      On e:Exception do begin
       ShowMessage
            (e.Message + ^M + 'enquanto tentava carregar '+FilePath);
        With Dm.IBDS_EMPRESA do if not (State in [dsInactive, dsBrowse])
         then
         MessageBox(FrmEmpresa.handle,'Houve um erro ao carregar a imagem selecionada. A imagem não será salva no cadastro atual. Tente novamente.','Informação',0+64);
       Abort;
       end;
       end;
    MS.Free;
    J1.Free;
end;

procedure TFrmEmpresa.Image1Click(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Edit;
end;

procedure TFrmEmpresa.SalvarImagemdaLogomarca1Click(Sender: TObject);
begin
SaveDialog1.FileName:= DBEdit2.Text+'.jpg';
 if SaveDialog1.Execute then 
Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TFrmEmpresa.FormShow(Sender: TObject);
begin
FrmEmpresa.Top:=94;
FrmEmpresa.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmEmpresa.Caption:= FrmEmpresa.Caption;
Exit;
end else
FrmEmpresa.Caption:= FrmEmpresa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmEmpresa.DBEdit1Change(Sender: TObject);
begin
DBEdit2.Text:= DBEdit1.Text;
end;

end.
