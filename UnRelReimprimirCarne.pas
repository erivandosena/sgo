unit UnRelReimprimirCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelReimprimirCarne = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRShape16: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape4: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape10: TQRShape;
    QRLabel26: TQRLabel;
    QRShape9: TQRShape;
    QRSysData6: TQRSysData;
    QRLabel27: TQRLabel;
    QRSysData7: TQRSysData;
    QRShape11: TQRShape;
    QRDBText14: TQRDBText;
    Grafico: TQRImage;
    QRShape12: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    Procedure CriaCodigo(Cod : String; Imagem : TCanvas);
  public
    { Public declarations }
  end;

var
  FrmRelReimprimirCarne: TFrmRelReimprimirCarne;

implementation

uses UnCaixa, UnReimpressao, UnDm;

{$R *.dfm}

procedure TFrmRelReimprimirCarne.CriaCodigo(Cod: String; Imagem: TCanvas);
//Codigo de barras 2x5i
Const
digitos : array['0'..'9'] of string[5]= ('00110',
'10001',
'01001',
'11000',
'00101',
'10100',
'01100',
'00011',
'10010',
'01010');

Var
Numero : String;
Cod1 : Array[1..1000] Of Char;
Cod2 : Array[1..1000] Of Char;
Codigo : Array[1..1000] Of Char;
Digito : String;
c1,c2 : Integer;
x,y,z,h : LongInt;
a,b,c,d : TPoint;
I : Boolean;

Begin
Numero := Cod;
For x := 1 to 1000 Do
Begin
Cod1 [x] := #0;
Cod2 [x] := #0;
Codigo[x] := #0;
End;
c1 := 1;
c2 := 1;
x := 1;
For y := 1 to Length(Numero) div 2 do
Begin
Digito := Digitos[Numero[x ]]; For z := 1 to 5 do Begin Cod1[c1] := Digito[z]; Inc(c1); End;
Digito := Digitos[Numero[x+1]]; For z := 1 to 5 do Begin Cod2[c2] := Digito[z]; Inc(c2); End;
Inc(x,2);
End;

y := 5;
Codigo[1] := '0'; Codigo[2] := '0'; Codigo[3] := '0'; Codigo[4] := '0'; { Inicio do Codigo }
For x := 1 to c1-1 do
begin
Codigo[y] := Cod1[x]; Inc(y);
Codigo[y] := Cod2[x]; Inc(y);
end;
Codigo[y] := '1'; Inc(y); { Final do Codigo }
Codigo[y] := '0'; Inc(y);
Codigo[y] := '0';
Imagem.Pen .Width := 1;
Imagem.Brush.Color := ClWhite;
Imagem.Pen .Color := ClWhite;
a.x := 1; a.y := 0;
b.x := 1; b.y := 79;
c.x := 2000; c.y := 79;
d.x := 2000; d.y := 0;
Imagem.Polygon([a,b,c,d]);
Imagem.Brush.Color := ClBlack;
Imagem.Pen .Color := ClBlack;
x := 0;
i := True;
for y:=1 to 1000 do
begin
If Codigo[y] <> #0 Then
Begin
If Codigo[y] = '0' then h := 1 Else h := 3;
a.x := x; a.y := 0;
b.x := x; b.y := 79;
c.x := x+h-1; c.y := 79;
d.x := x+h-1; d.y := 0;
If i Then Imagem.Polygon([a,b,c,d]);
i := Not(i);
x := x + h;
end;
end;
end;

procedure TFrmRelReimprimirCarne.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
CriaCodigo(FrmReimpressao.IBQuery_FaturasNUMERO_DOC.AsString, Grafico.Canvas);
end;

end.
