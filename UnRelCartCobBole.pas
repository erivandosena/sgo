unit UnRelCartCobBole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, jpeg, ExtCtrls,
  ADODB;

type
  TFrmRelCartCobBole = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRExprMemo1: TQRExprMemo;
    QRMemo1: TQRMemo;
    ColumnHeaderBand1: TQRBand;
    QRLabelDA: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRMemo2: TQRMemo;
    QRDBText1: TQRDBText;
    QRLabel42: TQRLabel;
    QRShape9: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    IBQuery_Pendentes: TADOQuery;
    QRImageLogo: TQRImage;
    QRMemo3: TQRMemo;
    IBQuery_PendentesSeuNum: TStringField;
    IBQuery_PendentesDtVecto: TDateTimeField;
    IBQuery_PendentesValorTitulo: TBCDField;
    IBQuery_PendentesNossoNumero: TStringField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    procedure DataAtual;
  public
    { Public declarations }
  end;

var
  FrmRelCartCobBole: TFrmRelCartCobBole;

implementation

uses UnDm, UnPrincipal, UnFaturasBole;

{$R *.dfm}

procedure TFrmRelCartCobBole.DataAtual;
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

procedure TFrmRelCartCobBole.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
DataAtual;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
IBQuery_Pendentes.Close;
IBQuery_Pendentes.SQL.Clear;
IBQuery_Pendentes.SQL.Add('select * from tbTitulos ');
IBQuery_Pendentes.SQL.Add('where (CodSac = :CodSac) and VrPago = :Valor ');
IBQuery_Pendentes.SQL.Add('and DtVecto < :Hoje ');
IBQuery_Pendentes.SQL.Add('order by SeuNum');
IBQuery_Pendentes.Parameters.ParamByName('CodSac').Value:= FrmFaturasBole.IBQuery_Clientes.FieldByName('CodSacado').AsString;;
IBQuery_Pendentes.Parameters.ParamByName('Valor').Value:= 0.00;
IBQuery_Pendentes.Parameters.ParamByName('Hoje').Value:= Data;
IBQuery_Pendentes.Open;
end;

end.
