unit UnClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Menus, IBQuery, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask, ComCtrls, ToolEdit, RXDBCtrl, Grids, DBGrids;

type
  TFrmClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNovo: TBitBtn;
    SbAnterior: TBitBtn;
    SbProximo: TBitBtn;
    SbAtualiza: TBitBtn;
    SbSalvar: TBitBtn;
    SbFecha: TBitBtn;
    Label1: TLabel;
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
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    DBEdit40: TDBEdit;
    Label42: TLabel;
    DBEdit41: TDBEdit;
    Label43: TLabel;
    DBEdit42: TDBEdit;
    Label44: TLabel;
    DBEdit43: TDBEdit;
    Label45: TLabel;
    DBEdit44: TDBEdit;
    Label46: TLabel;
    DBEdit45: TDBEdit;
    Label47: TLabel;
    DBEdit46: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit48: TDBEdit;
    Label50: TLabel;
    DBEdit49: TDBEdit;
    Label51: TLabel;
    DBEdit50: TDBEdit;
    DBComboBox16: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    BitBtn2: TBitBtn;
    SbLocalizar: TBitBtn;
    Fechar1: TMenuItem;
    DBComboBox7: TDBComboBox;
    IBQueryCodigo: TIBQuery;
    Panel4: TPanel;
    N1: TMenuItem;
    DadosdoCliente1: TMenuItem;
    DadosdoConjuge1: TMenuItem;
    DBEdit17: TDBEdit;
    TabSheet3: TTabSheet;
    DadosFinanceiros1: TMenuItem;
    Panel5: TPanel;
    NovoCadastro1: TMenuItem;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit19: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBText4: TDBText;
    Label59: TLabel;
    DBText5: TDBText;
    Label60: TLabel;
    DBText6: TDBText;
    Label61: TLabel;
    Localizar1: TMenuItem;
    DBMemo1: TDBMemo;
    Label62: TLabel;
    DBComboBox10: TDBComboBox;
    PopupMenu1: TPopupMenu;
    Limparcampo1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    DBComboBox8: TDBComboBox;
    IBQuery_Cidades: TIBQuery;
    IBQuery_CidadesNOME_CID: TIBStringField;
    IBQuery_CidadesCEP_CID: TIBStringField;
    IBQuery_CidadesESTADO_UF: TIBStringField;
    CBox_Contrato: TComboBox;
    IBQuery_Contratos: TIBQuery;
    IBQuery_ContratosNOME_CLIENTE: TIBStringField;
    IBQuery_ContratosNUMERO_CONTRATO: TIBStringField;
    IBQuery_ContratosCODIGO: TIBStringField;
    CBox_FaturaAtrasada: TComboBox;
    IBQuery_FaturaAtrasada: TIBQuery;
    IBQuery_ContratosFORMA_VENDA: TIBStringField;
    Label55: TLabel;
    DBText_Fatura: TDBText;
    Ds_Contratos: TDataSource;
    IBQuery_FaturaAtrasadaNUMERO_PARCELA: TIBStringField;
    IBQuery_FaturaAtrasadaDATA_VENCIMENTO: TDateTimeField;
    IBQuery_FaturaAtrasadaVALOR_PARCELA: TIBBCDField;
    IBQuery_FaturaAtrasadaSITUACAO_PARCELA: TIBStringField;
    IBQuery_FaturaAtrasadaDATA_PAGAMENTO: TDateTimeField;
    DBDateEdit_Cli: TDBDateEdit;
    DBDateEdit_Con: TDBDateEdit;
    GroupBoxSPC: TGroupBox;
    DBGridSPC: TDBGrid;
    IBQuery_SPC: TIBQuery;
    IBQuery_SPCNUMERO_CONTRATO: TIBStringField;
    IBQuery_SPCNOME: TIBStringField;
    IBQuery_SPCCPF: TIBStringField;
    DS_SPC: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure SbFechaClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbAtualizaClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAnteriorClick(Sender: TObject);
    procedure SbProximoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit50Exit(Sender: TObject);
    procedure DadosdoCliente1Click(Sender: TObject);
    procedure DadosdoConjuge1Click(Sender: TObject);
    procedure DadosFinanceiros1Click(Sender: TObject);
    procedure SbLocalizarClick(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Limparcampo1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CBox_FaturaAtrasadaChange(Sender: TObject);
    procedure CBox_ContratoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_FaturaAtrasadaKeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit_CliExit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBDateEdit_ConExit(Sender: TObject);
    procedure DBEdit40Enter(Sender: TObject);
  private
    { Private declarations }
    function ZeroEsquerda(const I: integer; const Casas: byte): string;
    function InformarMOtivo(var Motivo: string): boolean;
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;
  Novo_Cad: String;
implementation

uses UnDm, UnLocalizar, UnPrincipal;

{$R *.dfm}

procedure TFrmClientes.FormShow(Sender: TObject);
begin
FrmClientes.Top:=39;
FrmClientes.Left:=0;
    Dm.IBDS_CIDADES.First;
    if not Dm.IBDS_CIDADES.Eof then
    repeat
    { seus comandos para a tabela }
    DBComboBox8.Items.Add(Dm.IBDS_CIDADESNOME_CID.AsString);
    Dm.IBDS_CIDADES.Next;
    until Dm.IBDS_CIDADES.Eof;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmClientes.Caption:= FrmClientes.Caption;
Exit;
end else
FrmClientes.Caption:= FrmClientes.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmClientes.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmClientes.SbFechaClick(Sender: TObject);
begin
Close;
end;

procedure TFrmClientes.DataSource1StateChange(Sender: TObject);
begin
 SbNovo.Enabled           := DataSource1.State in [dsBrowse];
 NovoCadastro1.Enabled    := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled        := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 SbAtualiza.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 SbSalvar.Enabled         := DataSource1.State in [dsInsert,dsEdit];
 SbLocalizar.Enabled      := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 Localizar1.Enabled        := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 DBEdit17.ReadOnly        := DataSource1.State in [dsEdit];

 SbCancelar.Enabled       := DataSource1.State in [dsInsert,dsEdit];
 SbAnterior.Enabled       := (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_CLIENTES.BOF);
 SbProximo.Enabled        := (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_CLIENTES.EOF);
end;

procedure TFrmClientes.SbNovoClick(Sender: TObject);
begin
IBQueryCodigo.Close;
IBQueryCodigo.Open;
Novo_Cad:= '1';
PageControl1.ActivePageIndex:= 0;
Dm.IBDS_CLIENTES.Last;
Dm.IBDS_CLIENTES.Append;
Dm.IBDS_CLIENTES.FieldByName('CODIGO').asString:= Dm.IBDS_CLIENTESCOD_CLIE.asString;
Dm.IBDS_CLIENTES.FieldByName('CODIGO').asString := ZeroEsquerda(strtoint(Dm.IBDS_CLIENTESCODIGO.asString), 3);
Dm.IBDS_CLIENTES.FieldByName('CODIGO').asString := AnoAtual+Dm.IBDS_CLIENTESCODIGO.asString;
Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').asDateTime :=Data;
Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').asString:=FormatDateTime('dd/mm/yyyy',StrtoDate(Dm.IBDS_CLIENTESDATA_CADASTRO.asString));
DBEdit2.SetFocus;
end;

procedure TFrmClientes.SbSalvarClick(Sender: TObject);
begin
IBQueryCodigo.Close;
IBQueryCodigo.Open;
PageControl1.ActivePageIndex:=0;
if DBEdit17.Text = '' then
begin
ShowMessage('Preencha o campo "Código do Cliente"');
DBEdit17.SetFocus;
Exit;
end else
if DBEdit2.Text = '' then
begin
PageControl1.ActivePageIndex:=0;
ShowMessage('Preencha o campo "Nome"');
DBEdit2.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQueryCOdigo.Locate('CODIGO', DBEdit17.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
DBEdit2.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o código: "'+DBEdit17.Text+'" já está cadastrado, informe outro.');
Dm.IBDS_CLIENTES.Edit;
DBEdit17.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
DBEdit2.SetFocus;
end;

procedure TFrmClientes.SbExcluirClick(Sender: TObject);
var
M:String;
begin
if MessageBox(0,'Você tem certeza que deseja excluir este cadastro?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão de todas as informações atuais.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
//=====MOVE
Screen.Cursor := crHourGlass;
if not Dm.IBDS_INATIVOS.Locate('COD_CLIE', Dm.IBDS_CLIENTESCOD_CLIE.Value, []) then
begin
Dm.IBDS_INATIVOS.Last;
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').asDateTime :=Data;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').asString:=FormatDateTime('dd/mm/yyyy',StrtoDate(Dm.IBDS_INATIVOSDATA_MOVIDO.asString));
Dm.IBDS_INATIVOSCOD_CLIE.asString:= Dm.IBDS_CLIENTESCOD_CLIE.asString;
Dm.IBDS_INATIVOSCODIGO.asString:= Dm.IBDS_CLIENTESCODIGO.asString;
Dm.IBDS_INATIVOSDATA_CADASTRO.asString:= Dm.IBDS_CLIENTESDATA_CADASTRO.asString;
Dm.IBDS_INATIVOSNOME.asString:= Dm.IBDS_CLIENTESNOME.asString;
Dm.IBDS_INATIVOSAPELIDO.asString:= Dm.IBDS_CLIENTESAPELIDO.asString;
Dm.IBDS_INATIVOSNATURALIDADE.asString:= Dm.IBDS_CLIENTESNATURALIDADE.asString;
Dm.IBDS_INATIVOSRG.asString:= Dm.IBDS_CLIENTESRG.asString;
Dm.IBDS_INATIVOSCPF.asString:= Dm.IBDS_CLIENTESCPF.asString;
Dm.IBDS_INATIVOSDATA_NASCIMENTO.asString:= Dm.IBDS_CLIENTESDATA_NASCIMENTO.asString;
Dm.IBDS_INATIVOSPAI.asString:= Dm.IBDS_CLIENTESPAI.asString;
Dm.IBDS_INATIVOSAPELIDO_PAI.asString:= Dm.IBDS_CLIENTESAPELIDO_PAI.asString;
Dm.IBDS_INATIVOSMAE.asString:= Dm.IBDS_CLIENTESMAE.asString;
Dm.IBDS_INATIVOSAPELIDO_MAE.asString:= Dm.IBDS_CLIENTESAPELIDO_MAE.asString;
Dm.IBDS_INATIVOSENDERECO_CLIENTE.asString:= Dm.IBDS_CLIENTESENDERECO_CLIENTE.asString;
Dm.IBDS_INATIVOSTELEFONE_CLIENTE.asString:= Dm.IBDS_CLIENTESTELEFONE_CLIENTE.asString;
Dm.IBDS_INATIVOSCIDADE.asString:= Dm.IBDS_CLIENTESCIDADE.asString;
Dm.IBDS_INATIVOSBAIRRO.asString:= Dm.IBDS_CLIENTESBAIRRO.asString;
Dm.IBDS_INATIVOSCEP.asString:= Dm.IBDS_CLIENTESCEP.asString;
Dm.IBDS_INATIVOSESTADO_UF.asString:= Dm.IBDS_CLIENTESESTADO_UF.asString;
Dm.IBDS_INATIVOSCASA.asString:= Dm.IBDS_CLIENTESCASA.asString;
Dm.IBDS_INATIVOSTEMPO_MORADIA.asString:= Dm.IBDS_CLIENTESTEMPO_MORADIA.asString;
Dm.IBDS_INATIVOSPONTO_REFERENCIA.asString:= Dm.IBDS_CLIENTESPONTO_REFERENCIA.asString;
Dm.IBDS_INATIVOSVIZINHOS.asString:= Dm.IBDS_CLIENTESVIZINHOS.asString;
Dm.IBDS_INATIVOSLOCAL_TRABALHO.asString:= Dm.IBDS_CLIENTESLOCAL_TRABALHO.asString;
Dm.IBDS_INATIVOSFUNCAO.asString:= Dm.IBDS_CLIENTESFUNCAO.asString;
Dm.IBDS_INATIVOSSALARIO.asString:= Dm.IBDS_CLIENTESSALARIO.asString;
Dm.IBDS_INATIVOSTEMPO_SERVICO.asString:= Dm.IBDS_CLIENTESTEMPO_SERVICO.asString;
Dm.IBDS_INATIVOSTELEFONE_TRABALHO.asString:= Dm.IBDS_CLIENTESTELEFONE_TRABALHO.asString;
Dm.IBDS_INATIVOSENDERECO_TRABALHO.asString:= Dm.IBDS_CLIENTESENDERECO_TRABALHO.asString;
Dm.IBDS_INATIVOSEMPREGO_ANTERIOR.asString:= Dm.IBDS_CLIENTESEMPREGO_ANTERIOR.asString;
Dm.IBDS_INATIVOSENDERECO_EMPREG_ANT.asString:= Dm.IBDS_CLIENTESENDERECO_EMPREG_ANT.asString;
Dm.IBDS_INATIVOSTELEFONE_EMPREG_ANT.asString:= Dm.IBDS_CLIENTESTELEFONE_EMPREG_ANT.asString;
Dm.IBDS_INATIVOSAPOSENTADO.asString:= Dm.IBDS_CLIENTESAPOSENTADO.asString;
Dm.IBDS_INATIVOSBANCO_APOSENTADO.asString:= Dm.IBDS_CLIENTESBANCO_APOSENTADO.asString;
Dm.IBDS_INATIVOSRECEBE_DIA.asString:= Dm.IBDS_CLIENTESRECEBE_DIA.asString;
Dm.IBDS_INATIVOSVALOR_PAGAMENTO_APOS.asString:= Dm.IBDS_CLIENTESVALOR_PAGAMENTO_APOS.asString;
Dm.IBDS_INATIVOSESTADO_CIVIL.asString:= Dm.IBDS_CLIENTESESTADO_CIVIL.asString;
Dm.IBDS_INATIVOSCONJUGE.asString:= Dm.IBDS_CLIENTESCONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_CONJUGE.asString;
Dm.IBDS_INATIVOSRG_CONJUGE.asString:= Dm.IBDS_CLIENTESRG_CONJUGE.asString;
Dm.IBDS_INATIVOSCPF_CONJUGE.asString:= Dm.IBDS_CLIENTESCPF_CONJUGE.asString;
Dm.IBDS_INATIVOSDATA_NASCIMENTO_CONJUGE.asString:= Dm.IBDS_CLIENTESDATA_NASCIMENTO_CONJUGE.asString;
Dm.IBDS_INATIVOSPAI_CONJUGE.asString:= Dm.IBDS_CLIENTESPAI_CONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_PAI_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_PAI.asString;
Dm.IBDS_INATIVOSMAE_CONJUGE.asString:= Dm.IBDS_CLIENTESMAE_CONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_MAE_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_MAE_CONJUGE.asString;
Dm.IBDS_INATIVOSLOCAL_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESLOCAL_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSFUNCAO_CONJUGE.asString:= Dm.IBDS_CLIENTESFUNCAO_CONJUGE.asString;
Dm.IBDS_INATIVOSTEMPO_SERVICO_CONJUGE.asString:= Dm.IBDS_CLIENTESTEMPO_SERVICO_CONJUGE.asString;
Dm.IBDS_INATIVOSSALARIO_CONJUGE.asString:= Dm.IBDS_CLIENTESSALARIO_CONJUGE.asString;
Dm.IBDS_INATIVOSENDERECO_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESENDERECO_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSTELEFONE_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESTELEFONE_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSNUMERO_CONTRATO.asString:= Dm.IBDS_CLIENTESNUMERO_CONTRATO.asString;
Dm.IBDS_INATIVOSNUMERO_SIS_COB.asString:= Dm.IBDS_CLIENTESNUMERO_SIS_COB.asString;
Dm.IBDS_INATIVOSTIPO_VENDA.asString:= Dm.IBDS_CLIENTESTIPO_VENDA.asString;
Dm.IBDS_INATIVOSFORMA_VENDA.asString:= Dm.IBDS_CLIENTESFORMA_VENDA.asString;
Dm.IBDS_INATIVOS.FieldByName('OBS_CLIENTE').asString:= Dm.IBDS_CLIENTES.FieldByName('OBS_CLIENTE').asString;
Dm.IBDS_INATIVOSMOVIDO_USUARIO.asString:= FrmPrincipal.StatusBar1.Panels[2].Text;
Screen.Cursor := crDefault;
if InformarMOtivo(M) then
Dm.IBDS_INATIVOSRAZAO_MOVIDO.asString:= M;
if Dm.IBDS_INATIVOSRAZAO_MOVIDO.asString = '' then
begin
MessageBox(FrmClientes.Handle,'Cadastro atual não excluído, porque não foi informado um motivo, tente novamente','Aviso',0+48);
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
PageControl1.ActivePageIndex:= 0;
Exit;
end else
//=====salva nos inativos
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_INATIVOS.Post;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
//=====DELETA
Dm.IBDS_CLIENTES.Delete;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmClientes);
Screen.Cursor := crDefault;
MessageBox(FrmClientes.Handle,'O cadastro atual foi movido para: "Clientes inativos".','Aviso',0+48);
Exit;
end else
Screen.Cursor := crHourGlass;
Dm.IBDS_INATIVOS.Delete;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmClientes);
//=====INICIA AÇÃO
Dm.IBDS_INATIVOS.Last;
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').asDateTime :=Data;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').asString:=FormatDateTime('dd/mm/yyyy',StrtoDate(Dm.IBDS_INATIVOSDATA_MOVIDO.asString));
Dm.IBDS_INATIVOSCOD_CLIE.asString:= Dm.IBDS_CLIENTESCOD_CLIE.asString;
Dm.IBDS_INATIVOSCODIGO.asString:= Dm.IBDS_CLIENTESCODIGO.asString;
Dm.IBDS_INATIVOSDATA_CADASTRO.asString:= Dm.IBDS_CLIENTESDATA_CADASTRO.asString;
Dm.IBDS_INATIVOSNOME.asString:= Dm.IBDS_CLIENTESNOME.asString;
Dm.IBDS_INATIVOSAPELIDO.asString:= Dm.IBDS_CLIENTESAPELIDO.asString;
Dm.IBDS_INATIVOSNATURALIDADE.asString:= Dm.IBDS_CLIENTESNATURALIDADE.asString;
Dm.IBDS_INATIVOSRG.asString:= Dm.IBDS_CLIENTESRG.asString;
Dm.IBDS_INATIVOSCPF.asString:= Dm.IBDS_CLIENTESCPF.asString;
Dm.IBDS_INATIVOSDATA_NASCIMENTO.asString:= Dm.IBDS_CLIENTESDATA_NASCIMENTO.asString;
Dm.IBDS_INATIVOSPAI.asString:= Dm.IBDS_CLIENTESPAI.asString;
Dm.IBDS_INATIVOSAPELIDO_PAI.asString:= Dm.IBDS_CLIENTESAPELIDO_PAI.asString;
Dm.IBDS_INATIVOSMAE.asString:= Dm.IBDS_CLIENTESMAE.asString;
Dm.IBDS_INATIVOSAPELIDO_MAE.asString:= Dm.IBDS_CLIENTESAPELIDO_MAE.asString;
Dm.IBDS_INATIVOSENDERECO_CLIENTE.asString:= Dm.IBDS_CLIENTESENDERECO_CLIENTE.asString;
Dm.IBDS_INATIVOSTELEFONE_CLIENTE.asString:= Dm.IBDS_CLIENTESTELEFONE_CLIENTE.asString;
Dm.IBDS_INATIVOSCIDADE.asString:= Dm.IBDS_CLIENTESCIDADE.asString;
Dm.IBDS_INATIVOSBAIRRO.asString:= Dm.IBDS_CLIENTESBAIRRO.asString;
Dm.IBDS_INATIVOSCEP.asString:= Dm.IBDS_CLIENTESCEP.asString;
Dm.IBDS_INATIVOSESTADO_UF.asString:= Dm.IBDS_CLIENTESESTADO_UF.asString;
Dm.IBDS_INATIVOSCASA.asString:= Dm.IBDS_CLIENTESCASA.asString;
Dm.IBDS_INATIVOSTEMPO_MORADIA.asString:= Dm.IBDS_CLIENTESTEMPO_MORADIA.asString;
Dm.IBDS_INATIVOSPONTO_REFERENCIA.asString:= Dm.IBDS_CLIENTESPONTO_REFERENCIA.asString;
Dm.IBDS_INATIVOSVIZINHOS.asString:= Dm.IBDS_CLIENTESVIZINHOS.asString;
Dm.IBDS_INATIVOSLOCAL_TRABALHO.asString:= Dm.IBDS_CLIENTESLOCAL_TRABALHO.asString;
Dm.IBDS_INATIVOSFUNCAO.asString:= Dm.IBDS_CLIENTESFUNCAO.asString;
Dm.IBDS_INATIVOSSALARIO.asString:= Dm.IBDS_CLIENTESSALARIO.asString;
Dm.IBDS_INATIVOSTEMPO_SERVICO.asString:= Dm.IBDS_CLIENTESTEMPO_SERVICO.asString;
Dm.IBDS_INATIVOSTELEFONE_TRABALHO.asString:= Dm.IBDS_CLIENTESTELEFONE_TRABALHO.asString;
Dm.IBDS_INATIVOSENDERECO_TRABALHO.asString:= Dm.IBDS_CLIENTESENDERECO_TRABALHO.asString;
Dm.IBDS_INATIVOSEMPREGO_ANTERIOR.asString:= Dm.IBDS_CLIENTESEMPREGO_ANTERIOR.asString;
Dm.IBDS_INATIVOSENDERECO_EMPREG_ANT.asString:= Dm.IBDS_CLIENTESENDERECO_EMPREG_ANT.asString;
Dm.IBDS_INATIVOSTELEFONE_EMPREG_ANT.asString:= Dm.IBDS_CLIENTESTELEFONE_EMPREG_ANT.asString;
Dm.IBDS_INATIVOSAPOSENTADO.asString:= Dm.IBDS_CLIENTESAPOSENTADO.asString;
Dm.IBDS_INATIVOSBANCO_APOSENTADO.asString:= Dm.IBDS_CLIENTESBANCO_APOSENTADO.asString;
Dm.IBDS_INATIVOSRECEBE_DIA.asString:= Dm.IBDS_CLIENTESRECEBE_DIA.asString;
Dm.IBDS_INATIVOSVALOR_PAGAMENTO_APOS.asString:= Dm.IBDS_CLIENTESVALOR_PAGAMENTO_APOS.asString;
Dm.IBDS_INATIVOSESTADO_CIVIL.asString:= Dm.IBDS_CLIENTESESTADO_CIVIL.asString;
Dm.IBDS_INATIVOSCONJUGE.asString:= Dm.IBDS_CLIENTESCONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_CONJUGE.asString;
Dm.IBDS_INATIVOSRG_CONJUGE.asString:= Dm.IBDS_CLIENTESRG_CONJUGE.asString;
Dm.IBDS_INATIVOSCPF_CONJUGE.asString:= Dm.IBDS_CLIENTESCPF_CONJUGE.asString;
Dm.IBDS_INATIVOSDATA_NASCIMENTO_CONJUGE.asString:= Dm.IBDS_CLIENTESDATA_NASCIMENTO_CONJUGE.asString;
Dm.IBDS_INATIVOSPAI_CONJUGE.asString:= Dm.IBDS_CLIENTESPAI_CONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_PAI_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_PAI.asString;
Dm.IBDS_INATIVOSMAE_CONJUGE.asString:= Dm.IBDS_CLIENTESMAE_CONJUGE.asString;
Dm.IBDS_INATIVOSAPELIDO_MAE_CONJUGE.asString:= Dm.IBDS_CLIENTESAPELIDO_MAE_CONJUGE.asString;
Dm.IBDS_INATIVOSLOCAL_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESLOCAL_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSFUNCAO_CONJUGE.asString:= Dm.IBDS_CLIENTESFUNCAO_CONJUGE.asString;
Dm.IBDS_INATIVOSTEMPO_SERVICO_CONJUGE.asString:= Dm.IBDS_CLIENTESTEMPO_SERVICO_CONJUGE.asString;
Dm.IBDS_INATIVOSSALARIO_CONJUGE.asString:= Dm.IBDS_CLIENTESSALARIO_CONJUGE.asString;
Dm.IBDS_INATIVOSENDERECO_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESENDERECO_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSTELEFONE_TRABALHO_CONJUGE.asString:= Dm.IBDS_CLIENTESTELEFONE_TRABALHO_CONJUGE.asString;
Dm.IBDS_INATIVOSNUMERO_CONTRATO.asString:= Dm.IBDS_CLIENTESNUMERO_CONTRATO.asString;
Dm.IBDS_INATIVOSNUMERO_SIS_COB.asString:= Dm.IBDS_CLIENTESNUMERO_SIS_COB.asString;
Dm.IBDS_INATIVOSTIPO_VENDA.asString:= Dm.IBDS_CLIENTESTIPO_VENDA.asString;
Dm.IBDS_INATIVOSFORMA_VENDA.asString:= Dm.IBDS_CLIENTESFORMA_VENDA.asString;
Dm.IBDS_INATIVOS.FieldByName('OBS_CLIENTE').asString:= Dm.IBDS_CLIENTES.FieldByName('OBS_CLIENTE').asString;
Dm.IBDS_INATIVOSMOVIDO_USUARIO.asString:= FrmPrincipal.StatusBar1.Panels[2].Text;
Screen.Cursor := crDefault;
if InformarMOtivo(M) then
Dm.IBDS_INATIVOSRAZAO_MOVIDO.asString:= M;
if Dm.IBDS_INATIVOSRAZAO_MOVIDO.asString = '' then
begin
MessageBox(FrmClientes.Handle,'Cadastro atual não excluído, porque não foi informado um motivo, tente novamente','Aviso',0+48);
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
PageControl1.ActivePageIndex:= 0;
Screen.Cursor := crDefault;
Exit;
end else
//=====salva nos inativos
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_INATIVOS.Post;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
//=====DELETA
Dm.IBDS_CLIENTES.Delete;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmClientes);
Screen.Cursor := crDefault;
MessageBox(FrmClientes.Handle,'O cadastro atual foi movido para: "Clientes inativos".','Aviso',0+48);
end;
end;

procedure TFrmClientes.SbAtualizaClick(Sender: TObject);
begin
Dm.IBDS_CLIENTES.close;
Dm.IBDS_CLIENTES.Open;
Dm.IBDS_CLIENTES.Refresh;
end;

procedure TFrmClientes.SbCancelarClick(Sender: TObject);
begin
if Novo_Cad <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
SbNovo.SetFocus;
PageControl1.ActivePageIndex:= 0;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Novo_Cad:= '';
SbNovo.SetFocus;
PageControl1.ActivePageIndex:= 0;
Exit;
end;
end;

procedure TFrmClientes.SbAnteriorClick(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Prior;
DataSource1StateChange(FrmClientes);
if PageControl1.TabIndex = 2 then
begin
PageControl1Change(Nil);
end;
end;

procedure TFrmClientes.SbProximoClick(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Next;
DataSource1StateChange(FrmClientes);
if PageControl1.TabIndex = 2 then
begin
PageControl1Change(Nil);
end;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

function TFrmClientes.ZeroEsquerda(const I: integer;
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

procedure TFrmClientes.DBComboBox2Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
DBEdit36.SetFocus;
end;

procedure TFrmClientes.DBEdit50Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 2;
DBEdit19.SetFocus;
end;

procedure TFrmClientes.DadosdoCliente1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
end;

procedure TFrmClientes.DadosdoConjuge1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
end;

procedure TFrmClientes.DadosFinanceiros1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 2;
end;

procedure TFrmClientes.SbLocalizarClick(Sender: TObject);
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;

procedure TFrmClientes.DBEdit19Exit(Sender: TObject);
begin
if DBEdit19.Text = '' then
begin
Abort;
end else
DBEdit19.Text:= ZeroEsquerda(strtoint(DBEdit19.Text), 3);
end;

procedure TFrmClientes.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
Key:= Upcase(Key);
if ((key = chr(13)) and (DBMemo1.Lines.Count = 10)) then key:= chr(27);
if DBMemo1.Lines.Count > 10 then
begin
DBMemo1.Lines.Delete(10);
key:= chr(0);
end;
end;

function TFrmClientes.InformarMOtivo(var Motivo: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Exclusão de Cadastro';
  Form.Position := poMainFormCenter;
  Form.Width := 287;
  Form.Height := 136;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Informe o motivo da exclusão:';
  Left := 8;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 8;
  Top := 32;
  Width := 264;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  CharCase:=ecUpperCase;

  MaxLength:= 20;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 96;
  Top := 72;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  MOtivo := Medt1.Text;
  Result := true;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmClientes.Limparcampo1Click(Sender: TObject);
begin
Dm.IBDS_CLIENTESDATA_NASCIMENTO.Clear;
end;

procedure TFrmClientes.MenuItem1Click(Sender: TObject);
begin
Dm.IBDS_CLIENTESDATA_NASCIMENTO_CONJUGE.Clear;
end;

procedure TFrmClientes.DBEdit16Enter(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
IBQuery_Cidades.Close;
IBQuery_Cidades.SQL.Clear;
IBQuery_Cidades.SQL.Add('select NOME_CID, CEP_CID, ESTADO_UF from CIDADES ');
IBQuery_Cidades.SQL.Add('where NOME_CID = :Cidade ');
IBQuery_Cidades.SQL.Add('order by NOME_CID');
IBQuery_Cidades.ParamByName('Cidade').AsString := DBComboBox8.Text;
IBQuery_Cidades.Prepare;
IBQuery_Cidades.Open;
Dm.IBDS_CLIENTES.FieldByName('CEP').asString:= IBQuery_CidadesCEP_CID.AsString;
Dm.IBDS_CLIENTES.FieldByName('ESTADO_UF').asString:= IBQuery_CidadesESTADO_UF.AsString;
end;

procedure TFrmClientes.PageControl1Change(Sender: TObject);
begin
case PageControl1.TabIndex of
    0: begin

    end;
    1: begin

    end;
    2: begin
Screen.Cursor := crHourGlass;
IBQuery_Contratos.Close;
IBQuery_Contratos.SQL.Clear;
IBQuery_Contratos.SQL.Add('select NUMERO_CONTRATO, CODIGO, NOME_CLIENTE, FORMA_VENDA from VENDAS ');
IBQuery_Contratos.SQL.Add('where NOME_CLIENTE = :Cliente and CODIGO = :CodCli');
IBQuery_Contratos.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Contratos.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_Contratos.ParamByName('CodCli').AsString := DBText2.Caption;
IBQuery_Contratos.Prepare;
IBQuery_Contratos.Open;
IBQuery_SPC.Close;
IBQuery_SPC.SQL.Clear;
IBQuery_SPC.SQL.Add('select CPF, NOME, NUMERO_CONTRATO from SPC ');
IBQuery_SPC.SQL.Add('where CPF = :Contrato ');
IBQuery_SPC.SQL.Add('order by NUMERO_CONTRATO, NOME');
IBQuery_SPC.ParamByName('Contrato').AsString := Dm.IBDS_CLIENTES.FieldByName('CPF').asString;
IBQuery_SPC.Prepare;
IBQuery_SPC.Open;
// CARREGA CONTRATOS
    CBox_Contrato.Items.Clear;
    IBQuery_Contratos.First;
    if not IBQuery_Contratos.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_ContratosNUMERO_CONTRATO.AsString);
    IBQuery_Contratos.Next;
    until IBQuery_Contratos.Eof;
if IBQuery_ContratosNUMERO_CONTRATO.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '';
CBox_Contrato.Items.Clear;
CBox_Contrato.Text:= '';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_Contrato.ItemIndex:= 0;
IBQuery_Contratos.Locate('NUMERO_CONTRATO', CBox_Contrato.Text,[]);
if DBText_Fatura.Caption = 'CARNÊ' then
begin
// SELECIONA AS FATURAS DO CARNÊ
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARNE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'CHEQUE' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO CHEQUE
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CHEQUE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'BOLETO BANCÁRIO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO BOLETO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from BOLETO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'CARTÃO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO CARTÃO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARTAO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= PAGAMENTO');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '            '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '          '+FloatToStr(IBQuery_FaturaAtrasadaVALOR_PARCELA.AsFloat)+' '+
    '                     '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
end;
end;
end;
Screen.Cursor := crDefault;
end;

procedure TFrmClientes.CBox_FaturaAtrasadaChange(Sender: TObject);
begin
if CBox_FaturaAtrasada.Text = 'PARCELA =-= VENCIMENTO =-= VALOR R$ =-= SITUAÇÃO PARCELA =-= DATA DO PAGAMENTO' then
begin
CBox_FaturaAtrasada.ItemIndex:= 2;
end;
end;

procedure TFrmClientes.CBox_ContratoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not( key in['0'..'9',#8,#13] ) then
begin
Abort;
end;
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Screen.Cursor := crHourGlass;
IBQuery_Contratos.Close;
IBQuery_Contratos.SQL.Clear;
IBQuery_Contratos.SQL.Add('select NUMERO_CONTRATO, CODIGO, NOME_CLIENTE, FORMA_VENDA from VENDAS ');
IBQuery_Contratos.SQL.Add('where NOME_CLIENTE = :Cliente and CODIGO = :CodCli');
IBQuery_Contratos.SQL.Add('order by NUMERO_CONTRATO');
IBQuery_Contratos.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_Contratos.ParamByName('CodCli').AsString := DBText2.Caption;
IBQuery_Contratos.Prepare;
IBQuery_Contratos.Open;
// CARREGA CONTRATOS
    CBox_Contrato.Items.Clear;
    IBQuery_Contratos.First;
    if not IBQuery_Contratos.Eof then
    repeat
    { seus comandos para a tabela }
    CBox_Contrato.Items.Add(IBQuery_ContratosNUMERO_CONTRATO.AsString);
    IBQuery_Contratos.Next;
    until IBQuery_Contratos.Eof;
if IBQuery_ContratosNUMERO_CONTRATO.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '';
CBox_Contrato.Items.Clear;
CBox_Contrato.Text:= '';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else

IBQuery_Contratos.Locate('NUMERO_CONTRATO', CBox_Contrato.Text,[]);
if DBText_Fatura.Caption = 'CARNÊ' then
begin
// SELECIONA AS FATURAS DO CARNÊ
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARNE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('Parcela Vencimento Valor R$  Situação Parcela Data do Pagamento');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '     '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '   '+IBQuery_FaturaAtrasadaVALOR_PARCELA.AsString+' '+
    '         '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'CHEQUE' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO CHEQUE
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CHEQUE');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('Parcela Vencimento Valor R$  Situação Parcela Data do Pagamento');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '     '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '   '+IBQuery_FaturaAtrasadaVALOR_PARCELA.AsString+' '+
    '         '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'BOLETO BANCÁRIO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO BOLETO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from BOLETO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('Parcela Vencimento Valor R$  Situação Parcela Data do Pagamento');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '     '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '   '+IBQuery_FaturaAtrasadaVALOR_PARCELA.AsString+' '+
    '         '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
if DBText_Fatura.Caption = 'CARTÃO' then
begin
Screen.Cursor := crHourGlass;
// SELECIONA AS FATURAS DO CARTÃO
IBQuery_FaturaAtrasada.Close;
IBQuery_FaturaAtrasada.SQL.Clear;
IBQuery_FaturaAtrasada.SQL.Add('select * from CARTAO');
IBQuery_FaturaAtrasada.SQL.Add('where NUMERO_CONTRATO = :NC and NOME_CLIENTE = :Cliente ');
IBQuery_FaturaAtrasada.SQL.Add('and DATA_VENCIMENTO < :Data ');
IBQuery_FaturaAtrasada.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_FaturaAtrasada.ParamByName('NC').AsString := CBox_Contrato.Text;
IBQuery_FaturaAtrasada.ParamByName('Cliente').AsString := DBText1.Caption;
IBQuery_FaturaAtrasada.ParamByName('Data').AsDateTime := Data;
IBQuery_FaturaAtrasada.Prepare;
IBQuery_FaturaAtrasada.Open;
// CARREGA as FATURAS
    CBox_FaturaAtrasada.Items.Clear;
    IBQuery_FaturaAtrasada.First;
    if not IBQuery_FaturaAtrasada.Eof then
    CBox_FaturaAtrasada.Items.Add('Parcela Vencimento Valor R$  Situação Parcela Data do Pagamento');
    repeat
    { seus comandos para a tabela }
    CBox_FaturaAtrasada.Items.Add('    '+IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString+' '+
    '     '+IBQuery_FaturaAtrasadaDATA_VENCIMENTO.AsString+' '+
    '   '+IBQuery_FaturaAtrasadaVALOR_PARCELA.AsString+' '+
    '         '+IBQuery_FaturaAtrasadaSITUACAO_PARCELA.AsString+' '+
    '              '+IBQuery_FaturaAtrasadaDATA_PAGAMENTO.AsString);
    IBQuery_FaturaAtrasada.Next;
    until IBQuery_FaturaAtrasada.Eof;
if IBQuery_FaturaAtrasadaNUMERO_PARCELA.AsString = '' then
begin
CBox_FaturaAtrasada.Items.Clear;
CBox_FaturaAtrasada.Text:= '      NÃO EXISTE(M) FATURA(S) EM ATRASO NESTE CONTRATO INDICADO';
CBox_Contrato.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
CBox_FaturaAtrasada.ItemIndex:= 1;
CBox_FaturaAtrasada.SetFocus;
Screen.Cursor := crDefault;
end;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmClientes.CBox_FaturaAtrasadaKeyPress(Sender: TObject;
  var Key: Char);
begin
Abort;
end;

procedure TFrmClientes.DBDateEdit_CliExit(Sender: TObject);
begin
DBDateEdit_Cli.Visible:= False;
DBDateEdit_Cli.TabOrder:= 36;
DBEdit7.TabOrder:= 7;
end;

procedure TFrmClientes.DBEdit7Enter(Sender: TObject);
begin
DBDateEdit_Cli.Visible:= True;
DBDateEdit_Cli.TabOrder:= 7;
DBEdit7.TabOrder:= 36;
DBDateEdit_Cli.SetFocus;
end;

procedure TFrmClientes.DBDateEdit_ConExit(Sender: TObject);
begin
DBDateEdit_Con.Visible:= False;
DBDateEdit_Con.TabOrder:= 15;
DBEdit40.TabOrder:= 4;
end;

procedure TFrmClientes.DBEdit40Enter(Sender: TObject);
begin
DBDateEdit_Con.Visible:= True;
DBDateEdit_Con.TabOrder:= 4;
DBEdit40.TabOrder:= 15;
DBDateEdit_Con.SetFocus;
end;

end.
