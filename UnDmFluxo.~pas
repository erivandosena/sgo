unit UnDmFluxo;

interface

uses
  SysUtils, DB, DBClient, Provider, IBCustomDataSet, IBQuery, Classes,
  IBDatabase, MidasLib;

type
  TDmFluxo = class(TDataModule)
    IBTransaction: TIBTransaction;
    QueryApagar: TIBQuery;
    QueryApagarID: TIntegerField;
    QueryApagarDATA: TDateTimeField;
    QueryApagarHISTORICO: TIBStringField;
    QueryApagarVALOR: TIBBCDField;
    QueryFluxo: TIBQuery;
    Provider: TDataSetProvider;
    QueryAreceber: TIBQuery;
    cdsAreceber: TClientDataSet;
    cdsFluxo: TClientDataSet;
    cdsAPagar: TClientDataSet;
    cdsAPagarID: TIntegerField;
    cdsAPagarDATA: TDateTimeField;
    cdsAPagarHISTORICO: TStringField;
    cdsAPagarVALOR: TBCDField;
    IBQuery_IDAPagar: TIBQuery;
    DS: TDataSource;
    IBQuery_IDAReceber: TIBQuery;
    QueryFluxoDATA: TDateTimeField;
    QueryFluxoHISTORICO: TIBStringField;
    QueryFluxoNUMERO_CONTRATO: TIBStringField;
    QueryFluxoNUMERO_PARCELA: TIBStringField;
    QueryFluxoND_SEU_NUMERO: TIBStringField;
    QueryFluxoNOSSO_NUMERO: TIBStringField;
    QueryFluxoVALOR: TIBBCDField;
    QueryFluxoTIPO: TIBStringField;
    QueryAreceberID: TIntegerField;
    QueryAreceberDATA: TDateTimeField;
    QueryAreceberHISTORICO: TIBStringField;
    QueryAreceberNUMERO_CONTRATO: TIBStringField;
    QueryAreceberNUMERO_PARCELA: TIBStringField;
    QueryAreceberND_SEU_NUMERO: TIBStringField;
    QueryAreceberNOSSO_NUMERO: TIBStringField;
    QueryAreceberVALOR: TIBBCDField;
    cdsFluxoDATA: TDateTimeField;
    cdsFluxoHISTORICO: TStringField;
    cdsFluxoNUMERO_CONTRATO: TStringField;
    cdsFluxoNUMERO_PARCELA: TStringField;
    cdsFluxoND_SEU_NUMERO: TStringField;
    cdsFluxoNOSSO_NUMERO: TStringField;
    cdsFluxoVALOR: TBCDField;
    cdsFluxoTIPO: TStringField;
    cdsAreceberID: TIntegerField;
    cdsAreceberDATA: TDateTimeField;
    cdsAreceberHISTORICO: TStringField;
    cdsAreceberNUMERO_CONTRATO: TStringField;
    cdsAreceberNUMERO_PARCELA: TStringField;
    cdsAreceberND_SEU_NUMERO: TStringField;
    cdsAreceberNOSSO_NUMERO: TStringField;
    cdsAreceberVALOR: TBCDField;
    DS_EstornoSaida: TDataSource;
    Query_BApagar: TIBQuery;
    Query_BApagarID: TIntegerField;
    Query_BApagarDATA: TDateTimeField;
    Query_BApagarHISTORICO: TIBStringField;
    Query_BApagarVALOR: TIBBCDField;
    Query_BFluxo: TIBQuery;
    Query_BFluxoDATA: TDateTimeField;
    Query_BFluxoHISTORICO: TIBStringField;
    Query_BFluxoNUMERO_CONTRATO: TIBStringField;
    Query_BFluxoNUMERO_PARCELA: TIBStringField;
    Query_BFluxoND_SEU_NUMERO: TIBStringField;
    Query_BFluxoNOSSO_NUMERO: TIBStringField;
    Query_BFluxoVALOR: TIBBCDField;
    Query_BFluxoTIPO: TIBStringField;
    BProvider: TDataSetProvider;
    Query_BAreceber: TIBQuery;
    Query_BAreceberID: TIntegerField;
    Query_BAreceberDATA: TDateTimeField;
    Query_BAreceberHISTORICO: TIBStringField;
    Query_BAreceberNUMERO_CONTRATO: TIBStringField;
    Query_BAreceberNUMERO_PARCELA: TIBStringField;
    Query_BAreceberND_SEU_NUMERO: TIBStringField;
    Query_BAreceberNOSSO_NUMERO: TIBStringField;
    Query_BAreceberVALOR: TIBBCDField;
    cds_BAreceber: TClientDataSet;
    cds_BAreceberID: TIntegerField;
    cds_BAreceberDATA: TDateTimeField;
    cds_BAreceberHISTORICO: TStringField;
    cds_BAreceberNUMERO_CONTRATO: TStringField;
    cds_BAreceberNUMERO_PARCELA: TStringField;
    cds_BAreceberND_SEU_NUMERO: TStringField;
    cds_BAreceberNOSSO_NUMERO: TStringField;
    cds_BAreceberVALOR: TBCDField;
    cds_BFluxo: TClientDataSet;
    cds_BFluxoDATA: TDateTimeField;
    cds_BFluxoHISTORICO: TStringField;
    cds_BFluxoVALOR: TBCDField;
    cds_BFluxoTIPO: TStringField;
    cds_BFluxoNUMERO_CONTRATO: TStringField;
    cds_BFluxoNUMERO_PARCELA: TStringField;
    cds_BFluxoND_SEU_NUMERO: TStringField;
    cds_BFluxoNOSSO_NUMERO: TStringField;
    cds_BAPagar: TClientDataSet;
    cds_BAPagarID: TIntegerField;
    cds_BAPagarDATA: TDateTimeField;
    cds_BAPagarHISTORICO: TStringField;
    cds_BAPagarVALOR: TBCDField;
    IBQuery_IDAPagar_B: TIBQuery;
    DS_B: TDataSource;
    IBQuery_IDAReceber_B: TIBQuery;
    DS_BEstornoSaida: TDataSource;
    procedure cdsAPagarAfterInsert(DataSet: TDataSet);
    procedure cdsAreceberAfterInsert(DataSet: TDataSet);
    procedure cds_BAPagarAfterInsert(DataSet: TDataSet);
    procedure cds_BAreceberAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmFluxo: TDmFluxo;

implementation

uses UnDm;

{$R *.dfm}

procedure TDmFluxo.cdsAPagarAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDAPagar.Open;
  IBQuery_IDAPagar.First;
  If IBQuery_IDAPagar.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDAPagar.Fields[0].AsInteger;
  IBQuery_IDAPagar.Close;
  Inc( nNum );
  cdsAPagarID.AsInteger := nNum;
end;

procedure TDmFluxo.cdsAreceberAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDAReceber.Open;
  IBQuery_IDAReceber.First;
  If IBQuery_IDAReceber.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDAReceber.Fields[0].AsInteger;
  IBQuery_IDAReceber.Close;
  Inc( nNum );
  cdsAreceberID.AsInteger := nNum;
end;

procedure TDmFluxo.cds_BAPagarAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDAPagar_B.Open;
  IBQuery_IDAPagar_B.First;
  If IBQuery_IDAPagar_B.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDAPagar_B.Fields[0].AsInteger;
  IBQuery_IDAPagar_B.Close;
  Inc( nNum );
  cds_BAPagarID.AsInteger := nNum;
end;

procedure TDmFluxo.cds_BAreceberAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDAReceber_B.Open;
  IBQuery_IDAReceber_B.First;
  If IBQuery_IDAReceber_B.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDAReceber_B.Fields[0].AsInteger;
  IBQuery_IDAReceber_B.Close;
  Inc( nNum );
  cds_BAreceberID.AsInteger := nNum;
end;

end.
