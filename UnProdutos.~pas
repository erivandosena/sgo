unit UnProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Menus, IBQuery, DBCtrls, ComCtrls,
  StdCtrls, Mask, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFrmProdutos = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNovo: TBitBtn;
    SbAnterior: TBitBtn;
    SbProximo: TBitBtn;
    SbAtualiza: TBitBtn;
    SbSalvar: TBitBtn;
    SbFecha: TBitBtn;
    BtnOpcoes: TBitBtn;
    DataSource1: TDataSource;
    IBQueryCodigo: TIBQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    BtnImprimirEtiqueta: TBitBtn;
    Label8: TLabel;
    ComboBox_Valor1: TComboBox;
    ComboBox_Valor2: TComboBox;
    IBQuery_EtiquetaProdutos: TIBQuery;
    CheckBox_ValorUnitario: TCheckBox;
    IBQuery_EtiquetaProdutosCOD_PROD: TIBStringField;
    IBQuery_EtiquetaProdutosDESCRICAO: TIBStringField;
    IBQuery_EtiquetaProdutosVALOR_UNITARIO: TIBBCDField;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Label11: TLabel;
    IBQuery_Pesquisa: TIBQuery;
    Ds_Pesquisa: TDataSource;
    Label_EstoqueTotal: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    Btn_EstoqueTotal: TBitBtn;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    IBQuery_PesquisaCOD_PROD: TIBStringField;
    IBQuery_PesquisaDESCRICAO: TIBStringField;
    IBQuery_PesquisaESTOQUE_MINIMO: TIntegerField;
    IBQuery_PesquisaVALOR_TOTAL: TIBBCDField;
    IBQuery_PesquisaNOME_FORNECEDOR: TIBStringField;
    IBQuery_PesquisaNOME_PRODUTO: TIBStringField;
    IBQuery_PesquisaQUANTIDADE_ESTOQUE: TIntegerField;
    IBQuery_PesquisaVALOR_UNITARIO: TIBBCDField;
    IBQuery_PesquisaF_2: TIBBCDField;
    Edit1: TComboBox;
    IBQuery_PesquisaF_1: TLargeintField;
    Edit2: TMaskEdit;
    Label14: TLabel;
    LabelEst: TLabel;
    LabelEstTotal: TLabel;
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbFechaClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAtualizaClick(Sender: TObject);
    procedure SbProximoClick(Sender: TObject);
    procedure SbAnteriorClick(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BtnOpcoesClick(Sender: TObject);
    procedure ComboBox_Valor1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_Valor2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnImprimirEtiquetaClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Btn_EstoqueTotalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;
  Novo_Cad: String;
  QuantEst, ValUnit, ValTot: Real;

implementation

uses UnDm, UnRelEtiquetaProd, UnPrincipal, UnRelProdutos;

{$R *.dfm}

procedure TFrmProdutos.SbSalvarClick(Sender: TObject);
begin
IBQueryCodigo.Close;
IBQueryCodigo.Open;
if DBEdit1.Text = '' then
begin
ShowMessage('Preencha o campo "Referência"');
DBEdit1.SetFocus;
Exit;
end else
if DBText1.Caption = '' then
begin
ShowMessage('Selecione o nome do grupo para o "Produto"');
ComboBox1.SetFocus;
Exit;
end else
if DBEdit6.Text = '' then
begin
ShowMessage('Preencha o campo "Quantidade"');
DBEdit6.SetFocus;
Exit;
end else
if DBEdit2.Text = '' then
begin
ShowMessage('Preencha o campo "Est. M." (Estoque Mínimo)');
DBEdit2.SetFocus;
Exit;
end else
if DBEdit7.Text = '' then
begin
ShowMessage('Preencha o campo "Valor Unitário"');
DBEdit7.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQueryCodigo.Locate('COD_PROD', DBEdit1.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

QuantEst:= Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger;
ValUnit:= Dm.IBDS_ESTOQUEVALOR_UNITARIO.AsFloat;
ValTot:= QuantEst * ValUnit;
Dm.IBDS_ESTOQUE.Edit;
Dm.IBDS_ESTOQUEVALOR_TOTAL.AsFloat:= ValTot;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBEdit1.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o Produto de código: "'+DBEdit1.Text+'" já está cadastrado, informe outro.');
Dm.IBDS_ESTOQUE.Edit;
DBEdit1.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

QuantEst:= Dm.IBDS_ESTOQUEQUANTIDADE_ESTOQUE.AsInteger;
ValUnit:= Dm.IBDS_ESTOQUEVALOR_UNITARIO.AsFloat;
ValTot:= QuantEst * ValUnit;
Dm.IBDS_ESTOQUE.Edit;
Dm.IBDS_ESTOQUEVALOR_TOTAL.AsFloat:= ValTot;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ESTOQUE.Post;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
DBEdit1.SetFocus;
end;

procedure TFrmProdutos.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este produto?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_ESTOQUE.Delete;
Dm.IBDS_ESTOQUE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmProdutos);
DBEdit1.SetFocus;
end;
end;

procedure TFrmProdutos.SbCancelarClick(Sender: TObject);
begin
if Novo_Cad <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste produto?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_ESTOQUE.Cancel;
Dm.IBDS_ESTOQUE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
SbNovo.SetFocus;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro de produto?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_ESTOQUE.Cancel;
Dm.IBDS_ESTOQUE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Novo_Cad:= '';
SbNovo.SetFocus;
Exit;
end;
DBEdit1.SetFocus;
end;

procedure TFrmProdutos.DataSource1StateChange(Sender: TObject);
begin
 SbNovo.Enabled           := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled        := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ESTOQUE.RecordCount > 0);
 SbAtualiza.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ESTOQUE.RecordCount > 0);
 SbSalvar.Enabled         := DataSource1.State in [dsInsert,dsEdit];
 SbCancelar.Enabled       := DataSource1.State in [dsInsert,dsEdit];
 SbAnterior.Enabled       := (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ESTOQUE.BOF);
 SbProximo.Enabled        := (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ESTOQUE.EOF);
end;

procedure TFrmProdutos.SbFechaClick(Sender: TObject);
begin
Close;
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
FrmProdutos.Top:=212;
FrmProdutos.Left:=0;
FrmProdutos.Height:= 229;
//  ADICIONA PRODUTOS
Screen.Cursor := crHourGlass;
    DBComboBox1.Items.Clear;
    Dm.IBDS_PRODUTO.First;
    if not Dm.IBDS_PRODUTO.Eof then
    repeat
    { seus comandos para a tabela }
    DBComboBox1.Items.Add(Dm.IBDS_PRODUTODESCRICAO.AsString);
    Dm.IBDS_PRODUTO.Next;
    until Dm.IBDS_PRODUTO.Eof;
Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmProdutos.Caption:= FrmProdutos.Caption;
Exit;
end else
FrmProdutos.Caption:= FrmProdutos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmProdutos.SbAtualizaClick(Sender: TObject);
begin
Dm.IBDS_ESTOQUE.close;
Dm.IBDS_ESTOQUE.Open;
Dm.IBDS_ESTOQUE.Refresh;
ComboBox1.Text:= 'SELECIONE>>>>>>>>>>';
end;

procedure TFrmProdutos.SbProximoClick(Sender: TObject);
begin
Dm.IBDS_ESTOQUE.Next;
DataSource1StateChange(FrmProdutos);
end;

procedure TFrmProdutos.SbAnteriorClick(Sender: TObject);
begin
Dm.IBDS_ESTOQUE.Prior;
DataSource1StateChange(FrmProdutos);
end;

procedure TFrmProdutos.SbNovoClick(Sender: TObject);
begin
IBQueryCodigo.Close;
IBQueryCodigo.Open;
Novo_Cad:= '1';
Dm.IBDS_ESTOQUE.Last;
Dm.IBDS_ESTOQUE.Append;
ComboBox1.Text:= 'SELECIONE>>>>>>>>>>';
DBEdit1.SetFocus;
end;

procedure TFrmProdutos.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmProdutos.ComboBox1Change(Sender: TObject);
begin
Dm.IBDS_ESTOQUE.Edit;
if ComboBox1.Text = '1-ARMAÇÃO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'ARMAÇÃO';
end else
if ComboBox1.Text = '2-LENTE' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'LENTE';
end else
if ComboBox1.Text = '3-JOIA' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'JOIA';
end else
if ComboBox1.Text = '4-RELÓGIO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'RELÓGIO';
end else
if ComboBox1.Text = '5-ÓCULOS SPORT' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'ÓCULOS SPORT';
end else
if ComboBox1.Text = '6-RELÓGIO DE PADERE' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'RELÓGIO DE PADERE';
end else
if ComboBox1.Text = '7-DIVERSO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'DIVERSO';
end;
end;

procedure TFrmProdutos.BtnOpcoesClick(Sender: TObject);
begin
if BtnOpcoes.Caption = '&Voltar <<' then
begin
FrmProdutos.Height:= 229;
FrmProdutos.Top:= 198;
BtnOpcoes.Caption:= '&Opções >>';
//comandos

Exit;
end else
if BtnOpcoes.Caption = '&Opções >>' then
begin
//comandos
Screen.Cursor := crHourGlass;
    ComboBox_Valor1.Items.Clear;
    ComboBox_Valor2.Items.Clear;
//ADICIONA CODIGOS
    Dm.IBDS_ESTOQUE.First;
    if not Dm.IBDS_ESTOQUE.Eof then
    repeat
    { seus comandos para a tabela }
    ComboBox_Valor1.Items.Add(Dm.IBDS_ESTOQUECOD_PROD.AsString);
    ComboBox_Valor2.Items.Add(Dm.IBDS_ESTOQUECOD_PROD.AsString);
    Dm.IBDS_ESTOQUE.Next;
    until Dm.IBDS_ESTOQUE.Eof;

Edit2.SetFocus;
Screen.Cursor := crDefault;
FrmProdutos.Height:= 572;
FrmProdutos.Top:= 0;
BtnOpcoes.Caption:= '&Voltar <<';
end;
end;

procedure TFrmProdutos.ComboBox_Valor1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
ComboBox_Valor2.Text:= ComboBox_Valor1.Text;
Screen.Cursor := crHourGlass;
Dm.IBDS_ESTOQUE.Locate('COD_PROD', ComboBox_Valor1.Text, []);
Screen.Cursor := crDefault;
ComboBox_Valor2.SetFocus;
end;
end;

procedure TFrmProdutos.ComboBox_Valor2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if ComboBox_Valor1.Text = '' then
begin
ComboBox_Valor1.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
Dm.IBDS_ESTOQUE.Locate('COD_PROD', ComboBox_Valor1.Text, []);
Screen.Cursor := crDefault;
BtnImprimirEtiqueta.SetFocus;
end;
end;

procedure TFrmProdutos.BtnImprimirEtiquetaClick(Sender: TObject);
begin
if (ComboBox_Valor1.Text = '') or (ComboBox_Valor2.Text = '')  then
begin
ComboBox_Valor1.SetFocus;
Exit;
end else
if ComboBox_Valor1.Text > ComboBox_Valor2.Text then
begin
ComboBox_Valor1.Text:= '';
ComboBox_Valor2.Text:= '';
ComboBox_Valor1.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_EtiquetaProdutos.Close;
IBQuery_EtiquetaProdutos.SQL.Clear;
IBQuery_EtiquetaProdutos.SQL.Add('select COD_PROD, DESCRICAO, VALOR_UNITARIO, ');
// QUANTIDADE DE ETIQUETAS
IBQuery_EtiquetaProdutos.SQL.Add('(select count (COD_PROD) from ESTOQUE ');
IBQuery_EtiquetaProdutos.SQL.Add('where COD_PROD >= :Primeiro and COD_PROD <= :Ultimo) ');
// FINALIZA SELEÇÃO
IBQuery_EtiquetaProdutos.SQL.Add('from ESTOQUE ');
IBQuery_EtiquetaProdutos.SQL.Add('where COD_PROD >= :Primeiro and COD_PROD <= :Ultimo ');
// PARÂMETROS
IBQuery_EtiquetaProdutos.ParamByName('Primeiro').AsString:= ComboBox_Valor1.Text;
IBQuery_EtiquetaProdutos.ParamByName('Ultimo').AsString:= ComboBox_Valor2.Text;
IBQuery_EtiquetaProdutos.SQL.Add('order by COD_PROD');
IBQuery_EtiquetaProdutos.Open;
Screen.Cursor := crDefault;
if FrmRelEtiquetaProd <> Nil then Exit;
FrmRelEtiquetaProd := TFrmRelEtiquetaProd.Create(self);
FrmRelEtiquetaProd.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelEtiquetaProd.QuickRep1.Preview;
FrmRelEtiquetaProd.Free;
FrmRelEtiquetaProd := Nil;
end;

procedure TFrmProdutos.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }

Dm.IBDS_ESTOQUE.Edit;
if ComboBox1.Text = '1-ARMAÇÃO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'ARMAÇÃO';
end else
if ComboBox1.Text = '2-LENTE' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'LENTE';
end else
if ComboBox1.Text = '3-JOIA' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'JOIA';
end else
if ComboBox1.Text = '4-RELÓGIO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'RELÓGIO';
end else
if ComboBox1.Text = '5-ÓCULOS SPORT' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'ÓCULOS SPORT';
end else
if ComboBox1.Text = '6-RELÓGIO DE PADERE' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'RELÓGIO DE PADERE';
end else
if ComboBox1.Text = '7-DIVERSO' then
begin
Dm.IBDS_ESTOQUENOME_PRODUTO.asString:= 'DIVERSO';
end;
Btn_EstoqueTotal.SetFocus;
end;
end;

procedure TFrmProdutos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if IBQuery_Pesquisa.Active = False then
begin
Edit1.SetFocus;
Exit;
end
else
Dm.IBDS_ESTOQUE.Locate('COD_PROD', DBGrid1.Fields[0].Text, []);
end;

procedure TFrmProdutos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DBGrid1.DataSource = Ds_Pesquisa then
begin
if not odd(IBQuery_Pesquisa.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid1.Canvas.Brush.Color:= $00E7F1E7;
DBGrid1.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid1.DefaultDrawDataCell(rect,column.Field,State);
end;
Exit;
end else
if not odd(IBQuery_Pesquisa.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid1.Canvas.Brush.Color:= $00A8E9E8;
DBGrid1.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid1.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmProdutos.ComboBox1Exit(Sender: TObject);
begin
if DBText1.Caption = '' then
begin
ShowMessage('Informme o grupo.');
ComboBox1.SetFocus;
end;
end;

procedure TFrmProdutos.Btn_EstoqueTotalClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Pesquisa.Close;
IBQuery_Pesquisa.SQL.Clear;
IBQuery_Pesquisa.SQL.Add('select COD_PROD, DESCRICAO, ESTOQUE_MINIMO,  VALOR_TOTAL, NOME_FORNECEDOR, NOME_PRODUTO, QUANTIDADE_ESTOQUE, VALOR_UNITARIO, ');
// QUANTIDADE DE ETIQUETAS
IBQuery_Pesquisa.SQL.Add('(select sum(QUANTIDADE_ESTOQUE) from ESTOQUE where QUANTIDADE_ESTOQUE <> '+#39+'0'+#39+' and NOME_PRODUTO = '+#39+Edit1.Text+#39+'), ');
IBQuery_Pesquisa.SQL.Add('(select sum(VALOR_TOTAL*QUANTIDADE_ESTOQUE) from ESTOQUE where QUANTIDADE_ESTOQUE <> '+#39+'0'+#39+' and NOME_PRODUTO = '+#39+Edit1.Text+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Pesquisa.SQL.Add('from ESTOQUE where QUANTIDADE_ESTOQUE <> '+#39+'0'+#39+' and NOME_PRODUTO = '+#39+Edit1.Text+#39);
IBQuery_Pesquisa.SQL.Add('order by COD_PROD, NOME_PRODUTO, DESCRICAO, QUANTIDADE_ESTOQUE, NOME_FORNECEDOR');
IBQuery_Pesquisa.Open;
Screen.Cursor := crDefault;

if IBQuery_PesquisaF_1.AsInteger = 0 then
begin
LabelEst.Caption:= IntToStr(IBQuery_PesquisaF_1.AsInteger)+' '+IBQuery_PesquisaNOME_PRODUTO.AsString;
LabelEstTotal.Caption:= FormatFloat('R$ #,##0.00', 0.00);
BitBtn1.Enabled:= False;
Exit;
end else
LabelEst.Caption:= IBQuery_PesquisaF_1.AsString+' '+IBQuery_PesquisaNOME_PRODUTO.AsString;
LabelEstTotal.Caption:= FormatFloat('R$ #,##0.00', StrToFloat(IBQuery_PesquisaF_2.AsString));
BitBtn1.Enabled:= True;
end;

procedure TFrmProdutos.BitBtn1Click(Sender: TObject);
begin
if FrmRelProdutos <> Nil then Exit;
FrmRelProdutos := TFrmRelProdutos.Create(self);
FrmRelProdutos.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelProdutos.QuickRep1.Preview;
FrmRelProdutos.Free;
FrmRelProdutos := Nil;
end;

procedure TFrmProdutos.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  DBGrid1.SetFocus;
end;
end;

procedure TFrmProdutos.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if not Dm.IBDS_ESTOQUE.Locate('COD_PROD', Edit2.Text, []) then
begin
ShowMessage('Produto não localizado no estoque.');
  end;
end;
end;

procedure TFrmProdutos.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit2 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_ESTOQUE.Locate('COD_PROD', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_ESTOQUE.FieldByName('COD_PROD').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
        end;
    end;  
  end;
end;

end.
