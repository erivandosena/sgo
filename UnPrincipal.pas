unit UnPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, backup, DB, Menus, ComCtrls, StdCtrls, ExtCtrls, Buttons, jpeg,
  QRPrntr, Registry;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    DataSource1: TDataSource;
    Image2: TImage;
    BackupFile1: TBackupFile;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    ProgressBar1: TProgressBar;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Cadastros1: TMenuItem;
    Empresa1: TMenuItem;
    Usurios1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Vendedores1: TMenuItem;
    MdicosOftalmologistas1: TMenuItem;
    Consultas1: TMenuItem;
    Faturas1: TMenuItem;
    Finanas1: TMenuItem;
    Caixa1: TMenuItem;
    FluxodoCaixa011: TMenuItem;
    Caixa021: TMenuItem;
    FluxodeCaixa021: TMenuItem;
    Relatrios1: TMenuItem;
    ReimpressodeCarn1: TMenuItem;
    ReimpressodeComprovante1: TMenuItem;
    Ferramentas1: TMenuItem;
    Calculadora1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    N1: TMenuItem;
    Aniversariantes1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSGO1: TMenuItem;
    LogoffdeUsurio1: TMenuItem;
    N2: TMenuItem;
    FileListBox: TListBox;
    Baixas1: TMenuItem;
    EstornodeVenda1: TMenuItem;
    EstornodeFinanciamento1: TMenuItem;
    BitBtn7: TBitBtn;
    N3: TMenuItem;
    N4: TMenuItem;
    Carn1: TMenuItem;
    BoletoBancrio1: TMenuItem;
    InclusoouExclusoaoServiodeProteoaoCrdito1: TMenuItem;
    Cobranas1: TMenuItem;
    LocalizarCliente1: TMenuItem;
    Principal1: TMenuItem;
    Carn2: TMenuItem;
    BoletoBancrio2: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure CpiadeSegurana1Click(Sender: TObject);
    procedure SobreoSGO1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BackupFile1Progress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure Caixa1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure MdicosOftalmologistas1Click(Sender: TObject);
    procedure ReimpressodeCarn1Click(Sender: TObject);
    procedure ReimpressodeComprovante1Click(Sender: TObject);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure LogoffdeUsurio1Click(Sender: TObject);
    procedure EstornarVendaCompleta1Click(Sender: TObject);
    procedure EstornodeFinanciamento1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Caixa021Click(Sender: TObject);
    procedure FluxodeCaixa021Click(Sender: TObject);
    procedure SPCClick(Sender: TObject);
    procedure BoletoBancrio1Click(Sender: TObject);
    procedure CarndaLoja1Click(Sender: TObject);
    procedure Carn2Click(Sender: TObject);
    procedure BoletoBancrio2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ManipulaExcecoes(Sender: TObject; E: Exception);
  public
    { Public declarations }
    procedure CustomPreview(Sender: TObject);
    function ZeroEsquerda(const I: integer; const Casas: byte): string;
    function RetZero(ZEROS:string;QUANT:integer):String;
    function TiraMascara(text:string): String;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Reg: TRegistry;
  Data: TDateTime;
  AnoAtual, Usuario, Empresa: String;

implementation

uses UnClientes, UnBackup, UnDm, UnUsuarios, UnSenha, UnFrmDataGeral,
  UnEmpresa, UnProdutos, UnCaixa, UnLocalizar, UnPreview, UnFluxo,
  UnVendedor, UnMedico, UnFaturas, UnReimpressao, UnReimpComp,
  UnAniversariantes, UnBaixa, UnBaixaFinanciamento, UnFluxoB, UnCaixaB,
  UnSPC, UnCobrancas, UnFaturasBole, UnCobrancasBole;

{$R *.dfm}

procedure TFrmPrincipal.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmPrincipal.BitBtn9Click(Sender: TObject);
begin
Close;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
WinExec('Calc', SW_Show);
end;

procedure TFrmPrincipal.CpiadeSegurana1Click(Sender: TObject);
begin
FrmBackup:= TFrmBackup.Create(Application);
try
  FrmBackup.ShowModal;
finally
  FrmBackup.Free;
end;
end;

procedure TFrmPrincipal.SobreoSGO1Click(Sender: TObject);
begin
ShowMessage('Suporte Técnico: SGO - Sistema de Gerenciamento de Ótica'
+#13+#13+'Atendimento: Erivando Ramos'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Contatos: Tel.(85)9602.5039 / 3471170 E-mail: sosinforamos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob Lei do Direito Autoral, LEI 9609/98.');
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
FrmBackup:= TFrmBackup.Create(Application);
try
  FrmBackup.ShowModal;
finally
  FrmBackup.Free;
end;
end;

procedure TFrmPrincipal.BitBtn8Click(Sender: TObject);
begin
ShowMessage('INFORAMOS Serviços - Desenvolvimento de Softwares Administrativos'
+#13+#13+'Atendimento: Erivando Ramos'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Contatos: Tel.(85)9602.5039 / 3471170 E-mail: sosinforamos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'Cópia em locação autorizada para:'
+#13+''+Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString+''
+#13+'CNPJ:'+Dm.IBDS_EMPRESACNPJ.AsString+''
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob Lei do Direito Autoral, LEI 9609/98.');
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
FrmUsuarios:= TFrmUsuarios.Create(Application);
try
  FrmUsuarios.ShowModal;
finally
  FrmUsuarios.Free;
end;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
FrmUsuarios:= TFrmUsuarios.Create(Application);
try
  FrmUsuarios.ShowModal;
finally
  FrmUsuarios.Free;
end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
FrmSenha := TfrmSenha.Create(self);
FrmSenha.ShowModal;
FrmDataGeral:= TFrmDataGeral.Create(self);
FrmDataGeral.ShowModal;
Empresa:= Dm.IBDS_EMPRESACNPJ.AsString;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmPrincipal.Caption:= FrmPrincipal.Caption;
Exit;
end else
FrmPrincipal.Caption:= FrmPrincipal.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmPrincipal.ManipulaExcecoes(Sender: TObject; E: Exception);
var
 SGOErros: TextFile;
 Hora: String;
begin
Hora:=TimeToStr(Time);
ShowMessage('Ocorreu um comando inválido nesta aplicação.'+#13+#13+'Verifique se algo de incorreto foi efetuado.'+#13+#13+'Se o problema continuar consulte o suporte técnico deste produto através do: Tels.(85)347.1170 / 9602.5039 ou E-mail: inforamos.servicos@bol.com.br');
try
  AssignFile(SGOErros, 'C:\Windows\SGOLog.log');
  if not FileExists('C:\Windows\SGOLog.log') then Rewrite(SGOErros,'C:\Windows\SGOLog.log');
  Append(SGOErros);
  WriteLn(SGOErros, 'Ocorrência: '+(E.Message)+ ' em: '+DateToStr(Data)+ ' às ' +Hora+'Hs');
  finally
  CloseFile(SGOErros);
  end;
  Screen.Cursor := crDefault;
  Abort;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Application.OnException := ManipulaExcecoes;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
FrmEmpresa:= TFrmEmpresa.Create(Application);
try
  FrmEmpresa.ShowModal;
finally
  FrmEmpresa.Free;
end;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
FrmProdutos:= TFrmProdutos.Create(Application);
try
  FrmProdutos.ShowModal;
finally
  FrmProdutos.Free;
end;
end;

procedure TFrmPrincipal.BitBtn6Click(Sender: TObject);
begin
FrmCaixa:= TFrmCaixa.Create(Application);
try
  FrmCaixa.ShowModal;
finally
  FrmCaixa.Free;
end;
end;

procedure TFrmPrincipal.DataSource1DataChange(Sender: TObject;
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

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;

procedure TFrmPrincipal.Localizar1Click(Sender: TObject);
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
 Dir, Filename: string;
begin
CanClose:= False;
if MessageBox(0,'Tem certeza que deseja sair deste aplicativo?','Pergunta',mb_yesno+mb_iconquestion)=6 then
CanClose := True;
if CanClose = True then
begin
Reg:= TRegistry.Create;
Reg.OpenKey('SGO\Backup', True);
Diario:=Reg.ReadString('Backup Diário');
Reg.CloseKey;

Dir := 'C:\Meus documentos\Meus backups\SGO';
if not DirectoryExists(Dir) then
ForceDirectories(Dir);
Panel2.Visible:=True;
Screen.Cursor := crMultiDrag;

if Diario = 'Não' then
begin
DeleteFile('C:\Meus documentos\Meus backups\SGO\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data - 1))+'.bck');
Filename:= 'C:\Meus documentos\Meus backups\SGO\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
end else
Filename:= 'C:\Meus documentos\Meus backups\SGO\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
if Filelistbox.items.count = 0 then MessageBox(FrmBackup.handle,'Nenhum arquivo adicionado.','Aviso',0+48)
     else //
  BackupFile1.maxSize := 0;
  backupfile1.backuptitle      := 'SGO - Cópia de segurança';
  backupfile1.backupmode       := bmAll;
  backupfile1.compressionLevel := clMax;
  backupfile1.SaveFileID       := False;
  if backupfile1.backup(filelistbox.items, Filename) then
Panel2.Visible:=False;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmPrincipal.BackupFile1Progress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
with Progressbar1 do
     begin
          visible := Percent < 100;
          if visible then position := Percent;
     end;
end;

procedure TFrmPrincipal.CustomPreview(Sender: TObject);
begin
FrmPreview := TfrmPreview.Create(self);
FrmPreview.QRPreview1.QRPrinter := TQRPrinter(Sender);
FrmPreview.Show;
end;

procedure TFrmPrincipal.Caixa1Click(Sender: TObject);
begin
FrmCaixa:= TFrmCaixa.Create(Application);
try
  FrmCaixa.ShowModal;
finally
  FrmCaixa.Free;
end;
end;

procedure TFrmPrincipal.FluxodeCaixa1Click(Sender: TObject);
begin
FrmFluxoB:= TFrmFluxoB.Create(Application);
try
  FrmFluxoB.ShowModal;
finally
  FrmFluxoB.Free;
end;
end;

function TFrmPrincipal.ZeroEsquerda(const I: integer;
  const Casas: byte): string;
var     Ch: Char;
begin
    Result := IntToStr(I);
    if Length(Result) > Casas then
    begin
        Ch := '*';
        Result := '';
    end
    else
        Ch := '0';
    while Length(Result) < Casas do
        Result := Ch + Result;
end;

procedure TFrmPrincipal.Vendedores1Click(Sender: TObject);
begin
FrmVendedor:= TFrmVendedor.Create(Application);
try
  FrmVendedor.ShowModal;
finally
  FrmVendedor.Free;
end;
end;

procedure TFrmPrincipal.MdicosOftalmologistas1Click(Sender: TObject);
begin
FrmMedico:= TFrmMedico.Create(Application);
try
  FrmMedico.ShowModal;
finally
  FrmMedico.Free;
end;
end;

procedure TFrmPrincipal.ReimpressodeCarn1Click(Sender: TObject);
begin
FrmReimpressao:= TFrmReimpressao.Create(Application);
try
  FrmReimpressao.ShowModal;
finally
  FrmReimpressao.Free;
end;
end;

procedure TFrmPrincipal.ReimpressodeComprovante1Click(Sender: TObject);
begin
FrmReimpComp:= TFrmReimpComp.Create(Application);
try
  FrmReimpComp.ShowModal;
finally
  FrmReimpComp.Free;
end;
end;

procedure TFrmPrincipal.Aniversariantes1Click(Sender: TObject);
begin
FrmAniversariantes:= TFrmAniversariantes.Create(Application);
try
  FrmAniversariantes.ShowModal;
finally
  FrmAniversariantes.Free;
end;
end;

function TFrmPrincipal.RetZero(ZEROS: string; QUANT: integer): String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  RetZero:=aux;
end;

function TFrmPrincipal.TiraMascara(text: string): String;
// Remove mascaras de valores Numericos
var aux:string;
    i:integer;
begin
Aux := '';
for i :=1 to Length(text) do
    begin
    if(copy(text,i,1)<>'.') and (copy(text,i,1)<>'-') and (copy(text,i,1)<>'/')and(copy(text,i,1)<>'\') then
      begin
      Aux := Aux + copy(text,i,1);
      end;
    end;
Result := Aux;
end;

procedure TFrmPrincipal.LogoffdeUsurio1Click(Sender: TObject);
begin
FrmPrincipal.WindowState:= wsMinimized;
FrmSenha := TfrmSenha.Create(self);
FrmSenha.ShowModal;
FrmDataGeral:= TFrmDataGeral.Create(self);
FrmDataGeral.ShowModal;
FrmPrincipal.WindowState:= wsMaximized;
end;

procedure TFrmPrincipal.EstornarVendaCompleta1Click(Sender: TObject);
begin
FrmBaixa:= TFrmBaixa.Create(Application);
try
  FrmBaixa.ShowModal;
finally
  FrmBaixa.Free;
end;
end;

procedure TFrmPrincipal.EstornodeFinanciamento1Click(Sender: TObject);
begin
FrmBaixaFinanciamento:= TFrmBaixaFinanciamento.Create(Application);
try
  FrmBaixaFinanciamento.ShowModal;
finally
  FrmBaixaFinanciamento.Free;
end;
end;

procedure TFrmPrincipal.BitBtn5Click(Sender: TObject);
begin
FrmAniversariantes:= TFrmAniversariantes.Create(Application);
try
  FrmAniversariantes.ShowModal;
finally
  FrmAniversariantes.Free;
end;
end;

procedure TFrmPrincipal.BitBtn7Click(Sender: TObject);
begin
FrmCaixaB:= TFrmCaixaB.Create(Application);
try
  FrmCaixaB.ShowModal;
finally
  FrmCaixaB.Free;
end;
end;

procedure TFrmPrincipal.Caixa021Click(Sender: TObject);
begin
FrmCaixaB:= TFrmCaixaB.Create(Application);
try
  FrmCaixaB.ShowModal;
finally
  FrmCaixaB.Free;
end;
end;

procedure TFrmPrincipal.FluxodeCaixa021Click(Sender: TObject);
begin
FrmFluxo:= TFrmFluxo.Create(Application);
try
  FrmFluxo.ShowModal;
finally
  FrmFluxo.Free;
end;
end;

procedure TFrmPrincipal.SPCClick(Sender: TObject);
begin
FrmSPC:= TFrmSPC.Create(Application);
try
  FrmSPC.ShowModal;
finally
  FrmSPC.Free;
end;
end;

procedure TFrmPrincipal.BoletoBancrio1Click(Sender: TObject);
begin
FrmFaturasBole:= TFrmFaturasBole.Create(Application);
try
  FrmFaturasBole.ShowModal;
finally
  FrmFaturasBole.Free;
end;
end;

procedure TFrmPrincipal.CarndaLoja1Click(Sender: TObject);
begin
FrmFaturas:= TFrmFaturas.Create(Application);
try
  FrmFaturas.ShowModal;
finally
  FrmFaturas.Free;
end;
end;

procedure TFrmPrincipal.Carn2Click(Sender: TObject);
begin
FrmCobrancas:= TFrmCobrancas.Create(Application);
try
  FrmCobrancas.ShowModal;
finally
  FrmCobrancas.Free;
end;
end;

procedure TFrmPrincipal.BoletoBancrio2Click(Sender: TObject);
begin
FrmCobrancasBole:= TFrmCobrancasBole.Create(Application);
try
  FrmCobrancasBole.ShowModal;
finally
  FrmCobrancasBole.Free;
end;
end;

end.
