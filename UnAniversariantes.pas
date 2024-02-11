unit UnAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Grids, DBGrids, DateUtils;

type
  TFrmAniversariantes = class(TForm)
    Ds_Aniv: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    IBQuery1: TIBQuery;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    SpeedButton1: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    BtnImprimirCarta: TBitBtn;
    IBQuery1BAIRRO: TIBStringField;
    IBQuery1CEP: TIBStringField;
    IBQuery1CIDADE: TIBStringField;
    IBQuery1CNPJ: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1ENDERECO: TIBStringField;
    IBQuery1ESTADO_UF: TIBStringField;
    IBQuery1IE: TIBStringField;
    IBQuery1TELEFONE: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1DATA_NASCIMENTO: TDateTimeField;
    IBQuery1ENDERECO_CLIENTE: TIBStringField;
    IBQuery1CPF: TIBStringField;
    IBQuery1CODIGO: TIBStringField;
    IBQuery1CIDADE1: TIBStringField;
    IBQuery1TELEFONE_CLIENTE: TIBStringField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BtnImprimirCartaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAniversariantes: TFrmAniversariantes;
  Idade:Integer;

implementation

uses UnDm, UnPrincipal, UnRelCartaAniv;

{$R *.DFM}

procedure TFrmAniversariantes.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
ComboBox1.Text:= DateToStr(Data);
ComboBox1.Text:=Formatdatetime('MMMM',strtodate(ComboBox1.Text));
Label1.Caption:= DateToStr(Data);
Label1.Caption:=Formatdatetime('MMMM "de" YYYYY',strtodate(Label1.Caption));
if ComboBox1.Text = 'JANEIRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 1;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'FEVEREIRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 2;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MARÇO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 3;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'ABRIL' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 4;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MAIO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 5;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JUNHO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 6;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JULHO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 7;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'AGOSTO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 8;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'SETEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 9;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'OUTUBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 10;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'NOVEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 11;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'DEZEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 12;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
   IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
end;
end;

procedure TFrmAniversariantes.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'JANEIRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 1;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'FEVEREIRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 2;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MARÇO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 3;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'ABRIL' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 4;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MAIO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 5;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JUNHO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 6;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JULHO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 7;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'AGOSTO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 8;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'SETEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 9;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'OUTUBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 10;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'NOVEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 11;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'DEZEMBRO' then
begin
IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
  IBQuery1.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery1.ParamByName('Mes').AsInteger := 12;
  IBQuery1.SQL.Add('order by DATA_NASCIMENTO');
   IBQuery1.Prepare;
  IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
end;
end;

procedure TFrmAniversariantes.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= 'J';
If (ComboBox1.Text = 'J') or (ComboBox1.Text <> 'J') then
begin
ComboBox1.Text:='ANEIRO';
end;
end;

procedure TFrmAniversariantes.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBGrid1.Fields[3].text = '' then
begin
Abort;
Exit;
end
else
Dm.Ds_CLIENTES.DataSet.Locate('CODIGO', DBGrid1.Fields[4].text, []);
Close;
FrmPrincipal.BitBtn1.SetFocus;
end;
end;

procedure TFrmAniversariantes.DBGrid1DblClick(Sender: TObject);
begin
if DBGrid1.Fields[4].text = '' then
begin
Abort;
Exit;
end
else
Dm.Ds_CLIENTES.DataSet.Locate('CODIGO', DBGrid1.Fields[4].text, []);
Close;
FrmPrincipal.BitBtn1.SetFocus;
end;

procedure TFrmAniversariantes.RadioButton1Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select E.BAIRRO, E.CEP, E.CIDADE, E.CNPJ, E.EMAIL, E.ENDERECO, E.ESTADO_UF, E.IE, E.TELEFONE, C.NOME, C.DATA_NASCIMENTO, C.ENDERECO_CLIENTE, C.CPF, C.CODIGO, C.CIDADE, C.TELEFONE_CLIENTE from CLIENTES C,EMPRESA E ');
IBQuery1.SQL.Add('where EXTRACT(DAY FROM DATA_NASCIMENTO) = :DIA and EXTRACT(MONTH FROM DATA_NASCIMENTO) = :MES');
//e envie nos parâmetros o dia e a hora do sistema, dessa forma
IBQuery1.ParamByName('DIA').AsInteger := StrToInt( FormatDateTime( 'DD',Data ) );
IBQuery1.ParamByName('MES').AsInteger := StrToInt( FormatDateTime( 'MM',Data ) );
IBQuery1.SQL.Add('Order By DATA_NASCIMENTO');
IBQuery1.Prepare;
IBQuery1.Open;
if DBGrid1.Fields[4].text = '' then
begin
BtnImprimirCarta.Enabled:= False;
Exit;
end else
BtnImprimirCarta.Enabled:= True;
end;

procedure TFrmAniversariantes.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DBGrid1.Fields[1].text = '' then
begin
Abort;
Exit;
end
else
Idade:= YearsBetween(StrToDate(DBGrid1.Fields[1].text), StrToDate(DateToStr(Data)));
Label2.Caption:=IntToStr(Idade)+' Anos';
end;

procedure TFrmAniversariantes.DBGrid1CellClick(Column: TColumn);
begin
if DBGrid1.Fields[1].text = '' then
begin
Abort;
Exit;
end
else
Idade:= YearsBetween(StrToDate(DBGrid1.Fields[1].text), StrToDate(DateToStr(Data)));
Label2.Caption:=IntToStr(Idade)+' Anos';
end;

procedure TFrmAniversariantes.FormShow(Sender: TObject);
begin
FrmAniversariantes.Top:=102;
FrmAniversariantes.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmAniversariantes.Caption:= FrmAniversariantes.Caption;
Exit;
end else
FrmAniversariantes.Caption:= FrmAniversariantes.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmAniversariantes.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.BtnImprimirCartaClick(Sender: TObject);
begin
if FrmRelCartaAniv <> Nil then Exit;
FrmRelCartaAniv := TFrmRelCartaAniv.Create(self);
FrmRelCartaAniv.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCartaAniv.QuickRep1.Preview;
FrmRelCartaAniv.Free;
FrmRelCartaAniv := Nil;
end;

end.
