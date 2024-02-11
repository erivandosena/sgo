unit UnRelComprovante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TFrmRelComprovante = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DataSource1: TDataSource;
    QRImage3: TQRImage;
    QRImage2: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRExprMemo2: TQRExprMemo;
    QRLabel_Endereco: TQRLabel;
    QRLabel_cliente: TQRLabel;
    QRLabel_FormaPagamento: TQRLabel;
    QRLabel_Telefone: TQRLabel;
    QRLabel_Medico: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel_ValorEntrada: TQRLabel;
    QRLabel_Prestacoes: TQRLabel;
    QRLabel_ValorFinanciado: TQRLabel;
    QRLabel_Vendedor: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape4: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel_ValorTotal: TQRLabel;
    QRLabel_SubTotal: TQRLabel;
    QRLabel_Desconto: TQRLabel;
    QRLabel_Acrescimo: TQRLabel;
    QRShape7: TQRShape;
    Memo: TQRMemo;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelComprovante: TFrmRelComprovante;

implementation

uses UnCaixa, UnDm, UnCaixaVenda;

{$R *.dfm}

procedure TFrmRelComprovante.DataSource1DataChange(Sender: TObject;
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

procedure TFrmRelComprovante.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
QRLabel_Vendedor.Caption:= 'Vendedor: '+FrmCaixa.IBQuery_VENOME_VENDEDOR.AsString;
QRLabel_SubTotal.Caption:= 'Sub Total: R$ '+FloatToStrF(FrmCaixa.IBQuery_VESUB_TOTAL.AsFloat,ffFixed,18,2);
QRLabel_Acrescimo.Caption:= 'Acrescimo: R$ '+FloatToStrF(FrmCaixa.IBQuery_VEACRESCIMO.AsFloat,ffFixed,18,2);
QRLabel_Desconto.Caption:= 'Desconto: R$ '+FloatToStrF(FrmCaixa.IBQuery_VEDESCONTO.AsFloat,ffFixed,18,2);
QRLabel_ValorTotal.Caption:= 'Valor Total: R$ '+FloatToStrF(FrmCaixa.IBQuery_VEVALOR_TOTAL.AsFloat,ffFixed,18,2);
if FrmCaixa.IBQuery_VETIPO_VENDA.AsString = '� VISTA' then
begin
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ 0,00';
QRLabel_ValorFinanciado.Caption:= 'Valor Financiado: R$ 0,00';
Exit;
end else
QRLabel_ValorFinanciado.Caption:= 'Valor Financiado: R$ '+FloatToStrF(VFinanciado,ffFixed,18,2);
QRLabel_Prestacoes.Caption:= 'Presta��es: '+IntToStr(Fracao)+' X R$ '+FloatToStrF(VDParcela,ffFixed,18,2);
if Opcaovenda = 'SEM ENTRADA' then
begin
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ 0,00';
Exit;
end else
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ '+FloatToStrF(VEntrada,ffFixed,18,2);
end;

procedure TFrmRelComprovante.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_FormaPagamento.Caption:= 'Forma de Pagamento: '+FrmCaixa.IBQuery_VETIPO_VENDA.AsString+' '+OpcaoVenda+' NO '+FrmCaixa.IBQuery_VEFORMA_VENDA.AsString;
QRLabel_Cliente.Caption:= 'Cliente: '+FrmCaixa.IBQuery_VENOME_CLIENTE.AsString;
Dm.IBDS_Clientes.Locate('ENDERECO_CLIENTE', FrmCaixa.IBQuery_VENOME_CLIENTE.AsString, []);
QRLabel_Endereco.Caption:= 'Endere�o: '+Dm.IBDS_CLIENTESENDERECO_CLIENTE.AsString;
QRLabel_Medico.Caption:= 'M�dico: '+FrmCaixa.IBQuery_VENOME_MEDICO.AsString;
QRLabel_Telefone.Caption:= 'Telefone: '+Dm.IBDS_CLIENTESTELEFONE_CLIENTE.AsString;
end;

procedure TFrmRelComprovante.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Memo.Lines.Add('NPJ:'+Dm.IBDS_EMPRESACNPJ.AsString+' - Insc. Est.: '+Dm.IBDS_EMPRESAIE.AsString);
Memo.Lines.Add(Dm.IBDS_EMPRESAENDERECO.AsString+' - '+Dm.IBDS_EMPRESABAIRRO.AsString+' CEP:'+Dm.IBDS_EMPRESACEP.AsString+' - '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO_UF.AsString);
Memo.Lines.Add('TEL.'+Dm.IBDS_EMPRESATELEFONE.AsString+' '+Dm.IBDS_EMPRESAEMAIL.AsString);
end;

end.
