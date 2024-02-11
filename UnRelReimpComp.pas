unit UnRelReimpComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TFrmRelReimpComp = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DataSource1: TDataSource;
    QRImage3: TQRImage;
    QRImage2: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExprMemo1: TQRExprMemo;
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
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelReimpComp: TFrmRelReimpComp;
  Fracao: Integer;
  Opcaovenda: String;

implementation

uses UnDm, UnReimpComp;

{$R *.dfm}

procedure TFrmRelReimpComp.DataSource1DataChange(Sender: TObject;
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

procedure TFrmRelReimpComp.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
  PdP: Integer;
begin
Shortdateformat:='dd/mm/yyyy';
QRLabel_Vendedor.Caption:= 'Vendedor: '+FrmReimpComp.IBQuery_ContratosNOME_VENDEDOR.AsString;
QRLabel_SubTotal.Caption:= 'Sub Total: R$ '+FloatToStrF(FrmReimpComp.IBQuery_ContratosSUB_TOTAL.AsFloat,ffFixed,18,2);
QRLabel_Acrescimo.Caption:= 'Acrescimo: R$ '+FloatToStrF(FrmReimpComp.IBQuery_ContratosACRESCIMO.AsFloat,ffFixed,18,2);
QRLabel_Desconto.Caption:= 'Desconto: R$ '+FloatToStrF(FrmReimpComp.IBQuery_ContratosDESCONTO.AsFloat,ffFixed,18,2);
QRLabel_ValorTotal.Caption:= 'Valor Total: R$ '+FloatToStrF(FrmReimpComp.IBQuery_ContratosVALOR_TOTAL.AsFloat,ffFixed,18,2);
if FrmReimpComp.IBQuery_ContratosTIPO_VENDA.AsString = 'Á VISTA' then
begin
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ 0,00';
QRLabel_ValorFinanciado.Caption:= 'Valor Financiado: R$ 0,00';
Exit;
end else
QRLabel_ValorFinanciado.Caption:= 'Valor Financiado: R$ '+FloatToStrF(Financiado,ffFixed,18,2);
//////////////
Fracao:= FrmReimpComp.Ds_TipoFatura.DataSet.FieldByName('QUANT_PARCELAS').AsInteger;
//////////////
for PdP:= 1 to Fracao - 1 do begin
end;
QRLabel_Prestacoes.Caption:= 'Prestações: '+IntToStr(Fracao)+' X R$ '+FloatToStrF(FrmReimpComp.Ds_TipoFatura.DataSet.FieldByName('VALOR_PARCELA').AsFloat,ffFixed,18,2);
/////////////
Opcaovenda:= FrmReimpComp.IBQuery_ContratosOPCAO_VENDA.AsString;
////////////
if Opcaovenda = 'SEM ENTRADA' then
begin
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ 0,00';
Exit;
end else
Dm.IBDS_AENTRADA.Open;
Dm.IBDS_AENTRADA.Locate('NUMERO_CONTRATO', FrmReimpComp.IBQuery_ItensNUMERO_CONTRATO.AsString, []);
QRLabel_ValorEntrada.Caption:= 'Valor da Entrada: R$ '+FloatToStrF(Dm.IBDS_AENTRADAVALOR.AsFloat,ffFixed,18,2);
Dm.IBDS_AENTRADA.Close;
end;

procedure TFrmRelReimpComp.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_FormaPagamento.Caption:= 'Forma de Pagamento: '+FrmReimpComp.IBQuery_ContratosTIPO_VENDA.AsString+' '+OpcaoVenda+' NO '+FrmReimpComp.IBQuery_ContratosFORMA_VENDA.AsString;
QRLabel_Cliente.Caption:= 'Cliente: '+FrmReimpComp.IBQuery_ContratosNOME_CLIENTE.AsString;
Dm.IBDS_Clientes.Locate('ENDERECO_CLIENTE', FrmReimpComp.IBQuery_ContratosNOME_CLIENTE.AsString, []);
QRLabel_Endereco.Caption:= 'Endereço: '+Dm.IBDS_CLIENTESENDERECO_CLIENTE.AsString;
QRLabel_Medico.Caption:= 'Médico: '+FrmReimpComp.IBQuery_ContratosNOME_MEDICO.AsString;
QRLabel_Telefone.Caption:= 'Telefone: '+Dm.IBDS_CLIENTESTELEFONE_CLIENTE.AsString;
end;

end.
