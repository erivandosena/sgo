unit UnRelRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TFrmRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DataSource1: TDataSource;
    QRImage3: TQRImage;
    QRImage2: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRExprMemo2: TQRExprMemo;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel_Data: TQRLabel;
    QRShape7: TQRShape;
    QRMemo_Referente: TQRMemo;
    QRLabel_Valor: TQRLabel;
    QRMemo_Extenco: TQRMemo;
    QRShape8: TQRShape;
    QRLabel3: TQRLabel;
    Memo: TQRMemo;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRecibo: TFrmRelRecibo;

  Function Extenso( rValor:Extended;const aMoeda:array of string ):String;

implementation

uses UnCaixa, UnDm, UnCaixaEntrada;

{$R *.dfm}

function IIFString( bCond: Boolean; sTrue, sFalse: String): String;
(*****************************************************************)
begin
     if (bCond) then
        Result := sTrue
     else
        Result := sFalse;
end;

(***********************************************************)
Function LeftStr( s:String;n:Integer ):String;
(***********************************************************)
Begin
LeftStr:=Copy(s,1,n);
End;

(***********************************************************)
Function RightPos( s:String;n:Integer): String;
(***********************************************************)
Begin
RightPos:=Copy(s,n,Length(s)-n+1)
End;

(******************************************************************)
Function Converte( sTrinca,sValor,sNumero:String;iGrandeza:Byte;const aMoeda:array of string ):String;
(******************************************************************)
Var sMil, sDigito1, sDigito2, sDigito3, sDezena:String;
Const aUnidades:Array[1..9] Of String=( 'UM ', 'DOIS ', 'TRÊS ',
               'QUATRO ', 'CINCO ', 'SEIS ','SETE ','OITO ', 'NOVE ' );
      aDezenas :Array[1..9] Of String=( 'DEZ ', 'VINTE ', 'TRINTA ',
               'QUARENTA ', 'CINQUENTA ','SESSENTA ', 'SETENTA ',
               'OITENTA ', 'NOVENTA ');
      aTeen :Array[1..10] Of String=('DEZ ', 'ONZE ', 'DOZE ', 'TREZE ',
               'QUATORZE ','QUINZE ', 'DEZESSEIS ','DEZESETE ','DEZOITO ','DEZENOVE ');
      aCentenas:Array[1..9] Of String=( 'CENTO ', 'DUZENTOS ', 'TREZENTOS ',
               'QUATROCENTOS ','QUINHENTOS ','SEISCENTOS ','SETECENTOS ',
               'OITOCENTOS ','NOVECENTOS ');
      aMilhoes :Array[1..2] Of String=( 'MILHAO ', 'MILHOES ' );
//      aMoeda:Array[1..2] Of String=( 'REAL ','REAIS ' );
      aCentavos:Array[1..2] Of String=('CENTAVO', 'CENTAVOS' );
Begin
sMil:='MIL ';
If sTrinca='000' Then Begin
   Result:=sValor;
   Exit;
End;
sDigito1:=sTrinca[1];
sDigito2:=Copy(sTrinca,2,1);
sDigito3:=Copy(sTrinca,3,1);
sDezena :=Copy(sTrinca,2,2);
If (iGrandeza=4) and (Int(StrToFloat(sNumero))>0) Then
   sValor:=sValor+IIfString( StrToFloat(sNumero)<>Int(StrToFloat(sNumero)),' E ','' );
If sDigito1<>'0' Then
   If (sDezena='00') and (sDigito1='1') Then
      sValor:=sValor+'CEM '
   Else
      sValor:=sValor+aCentenas[ StrToInt(sDigito1) ];
If (sDezena>='10') and (sDezena<='19') Then
   sValor:=sValor+IIfString( sDigito1<>'0','E '+aTeen[ StrToInt(sDezena)-9 ],
                                           aTeen[ StrToInt(sDezena)-9 ] );
If sDigito2>='2' Then
   If sDigito1<>'0' Then
      sValor:=sValor+'E '+aDezenas[ StrToInt(sDigito2) ]
   Else
      sValor:=sValor+aDezenas[ StrToInt(sDigito2) ];

If (sDigito3<>'0') and ((sDezena<'10') or (sDezena>'19')) Then
   If (sDigito1<>'0') or (sDigito2<>'0') Then
      sValor:=sValor+'E '+aUnidades[ StrToInt(sDigito3) ]
   Else
      sValor:=sValor+aUnidades[ StrToInt(sDigito3) ];
Case iGrandeza Of
   1:sValor:=sValor+IIfString( StrToInt(sTrinca)=1, aMilhoes[1], aMilhoes[2]);
   2:sValor:=IIfString( StrToInt(sTrinca)>0,sValor+sMil,sValor);
   3:sValor:=sValor+IIfString( StrToFloat(sNumero)<2, aMoeda[0], aMoeda[1] );
   4:sValor:=sValor+IIfString( StrToInt(sTrinca)=1, aCentavos[1], aCentavos[2]);
End;
Result:=sValor;
End;

(***********************************************************)
Function Extenso( rValor:Extended;const aMoeda:array of string ):String;
(***********************************************************)
Var sValor,sNumero,sMilhoes,sMilhares,sCentenas,sCentavos:String;
Begin
sNumero:=FormatFloat('00000000000.00',rValor);
sNumero:=Copy(sNumero,Length(sNumero)-12,13);
sMilhoes :=Copy( sNumero,2,3 );
sMilhares:=Copy( sNumero,5,3 );
sCentenas:=Copy( sNumero,8,3 );
sCentavos:=FormatFloat('000',(rValor-Int(rValor))*100 );

sValor:=Converte( sMilhoes,sValor,sNumero,1,aMoeda );
If (sMilhoes<>'000') and (sMilhares<='100') or
   ((StrToInt(sMilhares) mod 100)=0) and (sCentenas='000') Then
   sValor:=sValor+'E ';
sValor:=Converte( sMilhares,sValor,sNumero,2,aMoeda );
If (StrToInt( sMilhares)<>0)  and
   (StrToInt(sCentenas)<>0) Then  sValor:=sValor+'E ';
sValor:=Converte( sCentenas,sValor,sNumero,3, aMoeda );

If (sCentenas+sMilhares='000000') and (StrToInt(sMilhoes)<>0) Then
   sValor:=sValor+'DE '+aMoeda[1]
Else If (sCentenas='000') and (StrToInt(sMilhoes+sMilhares)<>0) Then
   sValor:=sValor+aMoeda[1];
sValor:=Converte( sCentavos,sValor,sNumero,4, aMoeda );
If LeftStr(sValor,2)='E ' Then sValor:=RightPos(sValor,3);
Result := sValor
End;

procedure TFrmRelRecibo.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_EMPRESALOGO_EMPRESA.IsNull
      then QRImage2.Picture.Assign(nil)
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
         QRImage2.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    End;
if  Dm.IBDS_EMPRESALOGO_EMPRESA.asString = '' then
begin
QRImage3.Enabled:=True;
end
else
QRImage3.Enabled:=False;
end;

procedure TFrmRelRecibo.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Const aMoeda: Array[1..2] Of String = ('REAL ','REAIS ');
var
Present: TDateTime;
Mes: String;
Year, Month, Day: Word;
begin
Shortdateformat:='dd/mm/yyyy';
Present:= Now;
Mes:= DateToStr(Present);
DecodeDate(Present, Year, Month, Day);
if (TipoVenda = 'A PRAZO') and (OpcaoVenda = 'COM ENTRADA') then
begin
QRLabel_Valor.Caption:= FloatToStrF(VEntrada,ffFixed,18,2);
QRMemo_Extenco.Lines.Text:= 'A importância de   '+Extenso(StrToFloat(QRLabel_Valor.Caption),aMoeda);
QRMemo_Referente.Lines.Text:= 'referente a pagamento da entrada do financiamento no '+FormaVenda+', sob contrato Nº: '+NC+'.';
QRMemo_Referente.Lines.Add('Pelo que firmamos o presente para os devidos efeitos.');
QRLabel_Data.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+', '+IntToStr(Day)+' de '+FormatDateTime('mmmm',StrtoDate(Mes))+' de '+IntToStr(Year)+'.';
Exit;
end else
QRLabel_Valor.Caption:= FloatToStrF(ValorPago,ffFixed,18,2);
QRMemo_Extenco.Lines.Text:= 'A importância de   '+Extenso(StrToFloat(QRLabel_Valor.Caption),aMoeda);
if Dm.IBDS_CARNEVALOR_PENDENTE.AsFloat <> 0.00 then
begin
QRMemo_Referente.Lines.Text:= 'referente a pagamento por conta da parcela '+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_PARCELA.AsString+', doc. Nº: '
+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_DOC.AsString+' sob contrato Nº: '+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_CONTRATO.AsString+'.';
QRMemo_Referente.Lines.Add('Pelo que firmamos o presente para os devidos efeitos.');
end else
QRMemo_Referente.Lines.Text:= 'referente a liquidação da parcela '+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_PARCELA.AsString+', doc. Nº: '
+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_DOC.AsString+' sob contrato Nº: '+FrmCaixaEntrada.IBQuery_FaturaCarneNUMERO_CONTRATO.AsString+'.';
QRMemo_Referente.Lines.Add('Pelo que firmamos o presente para os devidos efeitos.');
QRLabel_Data.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+', '+IntToStr(Day)+' de '+FormatDateTime('mmmm',StrtoDate(Mes))+' de '+IntToStr(Year)+'.';
end;

procedure TFrmRelRecibo.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Memo.Lines.Add('NPJ:'+Dm.IBDS_EMPRESACNPJ.AsString+' - Insc. Est.: '+Dm.IBDS_EMPRESAIE.AsString);
Memo.Lines.Add(Dm.IBDS_EMPRESAENDERECO.AsString+' - '+Dm.IBDS_EMPRESABAIRRO.AsString+' CEP:'+Dm.IBDS_EMPRESACEP.AsString+' - '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO_UF.AsString);
Memo.Lines.Add('TEL.'+Dm.IBDS_EMPRESATELEFONE.AsString+' '+Dm.IBDS_EMPRESAEMAIL.AsString);
end;

end.
