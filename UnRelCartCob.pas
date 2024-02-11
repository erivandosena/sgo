unit UnRelCartCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, jpeg, ExtCtrls;

type
  TFrmRelCartCob = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRExprMemo1: TQRExprMemo;
    QRMemo1: TQRMemo;
    ColumnHeaderBand1: TQRBand;
    QRLabelDA: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRMemo2: TQRMemo;
    IBQuery_Pendentes: TIBQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRImageLogo: TQRImage;
    QRMemo3: TQRMemo;
    IBQuery_PendentesNUMERO_CONTRATO: TIBStringField;
    IBQuery_PendentesDATA_VENCIMENTO: TDateTimeField;
    IBQuery_PendentesQUANT_PARCELAS: TIBStringField;
    IBQuery_PendentesNUMERO_PARCELA: TIBStringField;
    IBQuery_PendentesSITUACAO_PARCELA: TIBStringField;
    IBQuery_PendentesVALOR_PARCELA: TIBBCDField;
    IBQuery_PendentesVALOR_PENDENTE: TIBBCDField;
    QRShape2: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    procedure DataAtual;
  public
    { Public declarations }
  end;

var
  FrmRelCartCob: TFrmRelCartCob;

implementation

uses UnDm, UnFaturas, UnPrincipal;

{$R *.dfm}

procedure TFrmRelCartCob.DataAtual;
var
nrdia: Integer;
diasemana: array[1..7] of String;
meses: array[1..12] of String;
dia, mes, ano: Word;
begin
diasemana[1]:= 'Domingo';
diasemana[2]:= 'Segunda-feira';
diasemana[3]:= 'Terça-feira';
diasemana[4]:= 'Quarta-feira';
diasemana[5]:= 'Quinta-feira';
diasemana[6]:= 'Sexta-feira';
diasemana[7]:= 'Sábado';
meses[1]:= 'Janeiro';
meses[2]:= 'Fevereiro';
meses[3]:= 'Março';
meses[4]:= 'Abril';
meses[5]:= 'Maio';
meses[6]:= 'Junho';
meses[7]:= 'Julho';
meses[8]:= 'Agosto';
meses[9]:= 'Setembro';
meses[10]:= 'Outubro';
meses[11]:= 'Novembro';
meses[12]:= 'Dezembro';
DecodeDate(DATa,ano,mes,dia);
nrdia:= DayOfWeek(DATa);
QRLabelDA.Caption:=Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString+', ' +diasemana[nrdia]+', '+INTTOSTR(dia)+' de '+meses[mes]+' de '+INTTOSTR(ano);
end;

procedure TFrmRelCartCob.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
DataAtual;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
IBQuery_Pendentes.Close;
IBQuery_Pendentes.SQL.Clear;
IBQuery_Pendentes.SQL.Add('select * from CARNE ');
IBQuery_Pendentes.SQL.Add('where (NUMERO_CONTRATO = :NUMERO_CONTRATO) and SITUACAO_PARCELA = :Situacao ');
IBQuery_Pendentes.SQL.Add('and DATA_VENCIMENTO < :Hoje ');
IBQuery_Pendentes.SQL.Add('order by NUMERO_PARCELA');
IBQuery_Pendentes.ParamByName('NUMERO_CONTRATO').AsString;
IBQuery_Pendentes.ParamByName('Situacao').AsString := 'EM ABERTO';
IBQuery_Pendentes.ParamByName('Hoje').AsDateTime := Data;
IBQuery_Pendentes.Prepare;
IBQuery_Pendentes.Open;
end;

end.
