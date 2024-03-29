unit UnDm;

interface

uses
  SysUtils, IBServices, DB, IBCustomDataSet, IBQuery, IBDatabase, Classes, Dialogs,
  IBUpdateSQL, Registry, ADODB;

type
  TDm = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    Ds_CLIENTES: TDataSource;
    Ds_USUARIOS: TDataSource;
    IBDS_USUARIOS: TIBDataSet;
    IBDS_USUARIOSNOME_USUARIO: TIBStringField;
    IBDS_USUARIOSSENHA: TIBStringField;
    IBDS_USUARIOSANTERIOR: TIBStringField;
    IBQ_SENHA: TIBQuery;
    IBQ_SENHANOME_USUARIO: TIBStringField;
    IBQ_SENHASENHA: TIBStringField;
    DSSENHA: TDataSource;
    IBDS_ESTOQUE: TIBDataSet;
    IBDS_ESTOQUECOD_PROD: TIBStringField;
    IBDS_ESTOQUENOME_PRODUTO: TIBStringField;
    IBDS_ESTOQUEDESCRICAO: TIBStringField;
    IBDS_ESTOQUEQUANTIDADE_ESTOQUE: TIntegerField;
    IBDS_ESTOQUEESTOQUE_MINIMO: TIntegerField;
    IBDS_ESTOQUEVALOR_UNITARIO: TIBBCDField;
    IBDS_ESTOQUEVALOR_TOTAL: TIBBCDField;
    IBDS_ESTOQUENOME_FORNECEDOR: TIBStringField;
    Ds_ESTOQUE: TDataSource;
    IBDS_EMPRESA: TIBDataSet;
    IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField;
    IBDS_EMPRESANOME_FANTASIA: TIBStringField;
    IBDS_EMPRESACNPJ: TIBStringField;
    IBDS_EMPRESAIE: TIBStringField;
    IBDS_EMPRESASLOGAN: TIBStringField;
    IBDS_EMPRESAENDERECO: TIBStringField;
    IBDS_EMPRESABAIRRO: TIBStringField;
    IBDS_EMPRESACEP: TIBStringField;
    IBDS_EMPRESACIDADE: TIBStringField;
    IBDS_EMPRESAESTADO_UF: TIBStringField;
    IBDS_EMPRESATELEFONE: TIBStringField;
    IBDS_EMPRESAFAX: TIBStringField;
    IBDS_EMPRESAEMAIL: TIBStringField;
    IBDS_EMPRESAWEBSITE: TIBStringField;
    IBDS_EMPRESASOCIO_1: TIBStringField;
    IBDS_EMPRESASOCIO_2: TIBStringField;
    IBDS_EMPRESALOGO_EMPRESA: TBlobField;
    IBDS_EMPRESAJUROS: TIBBCDField;
    IBDS_EMPRESAMULTA: TFloatField;
    Ds_EMPRESA: TDataSource;
    IBDS_CLIENTES: TIBDataSet;
    IBDS_CLIENTESCOD_CLIE: TIntegerField;
    IBDS_CLIENTESCODIGO: TIBStringField;
    IBDS_CLIENTESDATA_CADASTRO: TDateTimeField;
    IBDS_CLIENTESNOME: TIBStringField;
    IBDS_CLIENTESAPELIDO: TIBStringField;
    IBDS_CLIENTESNATURALIDADE: TIBStringField;
    IBDS_CLIENTESCPF: TIBStringField;
    IBDS_CLIENTESRG: TIBStringField;
    IBDS_CLIENTESDATA_NASCIMENTO: TDateTimeField;
    IBDS_CLIENTESPAI: TIBStringField;
    IBDS_CLIENTESAPELIDO_PAI: TIBStringField;
    IBDS_CLIENTESMAE: TIBStringField;
    IBDS_CLIENTESAPELIDO_MAE: TIBStringField;
    IBDS_CLIENTESENDERECO_CLIENTE: TIBStringField;
    IBDS_CLIENTESTELEFONE_CLIENTE: TIBStringField;
    IBDS_CLIENTESCIDADE: TIBStringField;
    IBDS_CLIENTESBAIRRO: TIBStringField;
    IBDS_CLIENTESCEP: TIBStringField;
    IBDS_CLIENTESESTADO_UF: TIBStringField;
    IBDS_CLIENTESPONTO_REFERENCIA: TIBStringField;
    IBDS_CLIENTESVIZINHOS: TIBStringField;
    IBDS_CLIENTESLOCAL_TRABALHO: TIBStringField;
    IBDS_CLIENTESFUNCAO: TIBStringField;
    IBDS_CLIENTESSALARIO: TIBBCDField;
    IBDS_CLIENTESTELEFONE_TRABALHO: TIBStringField;
    IBDS_CLIENTESENDERECO_TRABALHO: TIBStringField;
    IBDS_CLIENTESEMPREGO_ANTERIOR: TIBStringField;
    IBDS_CLIENTESENDERECO_EMPREG_ANT: TIBStringField;
    IBDS_CLIENTESTELEFONE_EMPREG_ANT: TIBStringField;
    IBDS_CLIENTESBANCO_APOSENTADO: TIBStringField;
    IBDS_CLIENTESVALOR_PAGAMENTO_APOS: TIBBCDField;
    IBDS_CLIENTESESTADO_CIVIL: TIBStringField;
    IBDS_CLIENTESCONJUGE: TIBStringField;
    IBDS_CLIENTESAPELIDO_CONJUGE: TIBStringField;
    IBDS_CLIENTESRG_CONJUGE: TIBStringField;
    IBDS_CLIENTESCPF_CONJUGE: TIBStringField;
    IBDS_CLIENTESDATA_NASCIMENTO_CONJUGE: TDateTimeField;
    IBDS_CLIENTESPAI_CONJUGE: TIBStringField;
    IBDS_CLIENTESAPELIDO_PAI_CONJUGE: TIBStringField;
    IBDS_CLIENTESMAE_CONJUGE: TIBStringField;
    IBDS_CLIENTESAPELIDO_MAE_CONJUGE: TIBStringField;
    IBDS_CLIENTESLOCAL_TRABALHO_CONJUGE: TIBStringField;
    IBDS_CLIENTESFUNCAO_CONJUGE: TIBStringField;
    IBDS_CLIENTESSALARIO_CONJUGE: TIBBCDField;
    IBDS_CLIENTESENDERECO_TRABALHO_CONJUGE: TIBStringField;
    IBDS_CLIENTESTELEFONE_TRABALHO_CONJUGE: TIBStringField;
    IBDS_CLIENTESNUMERO_CONTRATO: TIBStringField;
    IBDS_CLIENTESNUMERO_SIS_COB: TIBStringField;
    IBDS_CLIENTESTIPO_VENDA: TIBStringField;
    IBDS_CLIENTESFORMA_VENDA: TIBStringField;
    IBDS_CLIENTESOBS_CLIENTE: TMemoField;
    IBQ_CODCLIE: TIBQuery;
    IBDS_INATIVOS: TIBDataSet;
    IBDS_INATIVOSCOD_CLIE: TIntegerField;
    IBDS_INATIVOSCODIGO: TIBStringField;
    IBDS_INATIVOSDATA_CADASTRO: TDateTimeField;
    IBDS_INATIVOSNOME: TIBStringField;
    IBDS_INATIVOSAPELIDO: TIBStringField;
    IBDS_INATIVOSNATURALIDADE: TIBStringField;
    IBDS_INATIVOSRG: TIBStringField;
    IBDS_INATIVOSCPF: TIBStringField;
    IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField;
    IBDS_INATIVOSPAI: TIBStringField;
    IBDS_INATIVOSAPELIDO_PAI: TIBStringField;
    IBDS_INATIVOSMAE: TIBStringField;
    IBDS_INATIVOSAPELIDO_MAE: TIBStringField;
    IBDS_INATIVOSENDERECO_CLIENTE: TIBStringField;
    IBDS_INATIVOSTELEFONE_CLIENTE: TIBStringField;
    IBDS_INATIVOSCIDADE: TIBStringField;
    IBDS_INATIVOSBAIRRO: TIBStringField;
    IBDS_INATIVOSCEP: TIBStringField;
    IBDS_INATIVOSESTADO_UF: TIBStringField;
    IBDS_INATIVOSCASA: TIBStringField;
    IBDS_INATIVOSTEMPO_MORADIA: TIBStringField;
    IBDS_INATIVOSPONTO_REFERENCIA: TIBStringField;
    IBDS_INATIVOSVIZINHOS: TIBStringField;
    IBDS_INATIVOSLOCAL_TRABALHO: TIBStringField;
    IBDS_INATIVOSFUNCAO: TIBStringField;
    IBDS_INATIVOSSALARIO: TIBBCDField;
    IBDS_INATIVOSTEMPO_SERVICO: TIBStringField;
    IBDS_INATIVOSTELEFONE_TRABALHO: TIBStringField;
    IBDS_INATIVOSENDERECO_TRABALHO: TIBStringField;
    IBDS_INATIVOSEMPREGO_ANTERIOR: TIBStringField;
    IBDS_INATIVOSENDERECO_EMPREG_ANT: TIBStringField;
    IBDS_INATIVOSTELEFONE_EMPREG_ANT: TIBStringField;
    IBDS_INATIVOSAPOSENTADO: TIBStringField;
    IBDS_INATIVOSBANCO_APOSENTADO: TIBStringField;
    IBDS_INATIVOSRECEBE_DIA: TIBStringField;
    IBDS_INATIVOSVALOR_PAGAMENTO_APOS: TIBBCDField;
    IBDS_INATIVOSESTADO_CIVIL: TIBStringField;
    IBDS_INATIVOSCONJUGE: TIBStringField;
    IBDS_INATIVOSAPELIDO_CONJUGE: TIBStringField;
    IBDS_INATIVOSRG_CONJUGE: TIBStringField;
    IBDS_INATIVOSCPF_CONJUGE: TIBStringField;
    IBDS_INATIVOSDATA_NASCIMENTO_CONJUGE: TDateTimeField;
    IBDS_INATIVOSPAI_CONJUGE: TIBStringField;
    IBDS_INATIVOSAPELIDO_PAI_CONJUGE: TIBStringField;
    IBDS_INATIVOSMAE_CONJUGE: TIBStringField;
    IBDS_INATIVOSAPELIDO_MAE_CONJUGE: TIBStringField;
    IBDS_INATIVOSLOCAL_TRABALHO_CONJUGE: TIBStringField;
    IBDS_INATIVOSFUNCAO_CONJUGE: TIBStringField;
    IBDS_INATIVOSTEMPO_SERVICO_CONJUGE: TIBStringField;
    IBDS_INATIVOSSALARIO_CONJUGE: TIBBCDField;
    IBDS_INATIVOSENDERECO_TRABALHO_CONJUGE: TIBStringField;
    IBDS_INATIVOSTELEFONE_TRABALHO_CONJUGE: TIBStringField;
    IBDS_INATIVOSNUMERO_CONTRATO: TIBStringField;
    IBDS_INATIVOSNUMERO_SIS_COB: TIBStringField;
    IBDS_INATIVOSTIPO_VENDA: TIBStringField;
    IBDS_INATIVOSFORMA_VENDA: TIBStringField;
    IBDS_INATIVOSOBS_CLIENTE: TMemoField;
    IBDS_INATIVOSDATA_MOVIDO: TDateTimeField;
    IBDS_INATIVOSMOVIDO_USUARIO: TIBStringField;
    IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField;
    Ds_INATIVOS: TDataSource;
    IBDS_VENDAS: TIBDataSet;
    IBDS_VENDASCOD_VEND: TIntegerField;
    IBDS_VENDASNUMERO_CONTRATO: TIBStringField;
    IBDS_VENDASDATA_VENDA: TDateTimeField;
    IBDS_VENDASNOME_VENDEDOR: TIBStringField;
    IBDS_VENDASNOME_CLIENTE: TIBStringField;
    IBDS_VENDASCODIGO: TIBStringField;
    IBDS_VENDASCPF: TIBStringField;
    IBDS_VENDASTIPO_VENDA: TIBStringField;
    IBDS_VENDASFORMA_VENDA: TIBStringField;
    IBDS_VENDASACRESCIMO: TIBBCDField;
    IBDS_VENDASDESCONTO: TIBBCDField;
    IBDS_VENDASSUB_TOTAL: TIBBCDField;
    IBDS_VENDASVALOR_TOTAL: TIBBCDField;
    IBDS_VENDASARMACAO_COD: TIBStringField;
    IBDS_VENDASARMACAO_TAMANHO: TIBStringField;
    IBDS_VENDASARMACAO_COR: TIBStringField;
    IBDS_VENDASLONGE_OD_ESF: TIBStringField;
    IBDS_VENDASLONGE_OD_CIL: TIBStringField;
    IBDS_VENDASLONGE_OD_EIXO: TIBStringField;
    IBDS_VENDASLONGE_OD_DNP: TIBStringField;
    IBDS_VENDASLONGE_OE_ESF: TIBStringField;
    IBDS_VENDASLONGE_OE_CIL: TIBStringField;
    IBDS_VENDASLONGE_OE_EIXO: TIBStringField;
    IBDS_VENDASLONGE_OE_DNP: TIBStringField;
    IBDS_VENDASLONGE_ALTURA_OD: TIBStringField;
    IBDS_VENDASLONGE_ALTURA_OD_LENTES: TIBStringField;
    IBDS_VENDASLONGE_ALTURA_OE: TIBStringField;
    IBDS_VENDASLONGE_ALTURA_OE_LENTES: TIBStringField;
    IBDS_VENDASLONGE_ADICAO: TIBStringField;
    IBDS_VENDASLONGE_DP: TIBStringField;
    IBDS_VENDASPERTO_OD_ESF: TIBStringField;
    IBDS_VENDASPERTO_OD_CIL: TIBStringField;
    IBDS_VENDASPERTO_OD_EIXO: TIBStringField;
    IBDS_VENDASPERTO_OD_DNP: TIBStringField;
    IBDS_VENDASPERTO_OE_ESF: TIBStringField;
    IBDS_VENDASPERTO_OE_CIL: TIBStringField;
    IBDS_VENDASPERTO_OE_EIXO: TIBStringField;
    IBDS_VENDASPERTO_OE_DNP: TIBStringField;
    IBDS_VENDASPERTO_DP: TIBStringField;
    IBDS_VENDASPERTO_LENTES: TIBStringField;
    IBDS_VENDASOBS: TMemoField;
    IBDS_VENDASNOME_MEDICO: TIBStringField;
    IBDS_VENDASOPCAO_VENDA: TIBStringField;
    Ds_VENDAS: TDataSource;
    Ds_ITEM: TDataSource;
    IBDS_ITEM: TIBDataSet;
    IBDS_ITEMCOD_ITEM: TIntegerField;
    IBDS_ITEMNUMERO_CONTRATO: TIBStringField;
    IBDS_ITEMCOD_PROD: TIBStringField;
    IBDS_ITEMNOME_PRODUTO: TIBStringField;
    IBDS_ITEMDESCRICAO: TIBStringField;
    IBDS_ITEMQUANTIDADE: TIntegerField;
    IBDS_ITEMVALOR_UNITARIO: TIBBCDField;
    IBDS_ITEMVALOR_TOTAL: TIBBCDField;
    IBQ_CODVEND: TIBQuery;
    IBQ_CODITEM: TIBQuery;
    IBDS_CARNE: TIBDataSet;
    IBDS_CARNECOD_CARN: TIntegerField;
    IBDS_CARNENUMERO_DOC: TIBStringField;
    IBDS_CARNENUMERO_CONTRATO: TIBStringField;
    IBDS_CARNENOME_CLIENTE: TIBStringField;
    IBDS_CARNECODIGO: TIBStringField;
    IBDS_CARNEACRESCIMO: TIBBCDField;
    IBDS_CARNEDESCONTO: TIBBCDField;
    IBDS_CARNEVALOR_PARCELA: TIBBCDField;
    IBDS_CARNEVALOR_PAGO: TIBBCDField;
    IBDS_CARNEVALOR_PENDENTE: TIBBCDField;
    IBDS_CARNEDATA_VENCIMENTO: TDateTimeField;
    IBDS_CARNEQUANT_PARCELAS: TIBStringField;
    IBDS_CARNENUMERO_PARCELA: TIBStringField;
    IBDS_CARNESITUACAO_PARCELA: TIBStringField;
    IBDS_CARNEDATA_PAGAMENTO: TDateTimeField;
    IBDS_CARNETOTAL_PAGO: TIBBCDField;
    IBDS_CARNEVALOR_APAGAR: TIBBCDField;
    Ds_CARNE: TDataSource;
    IBQ_CODCARN: TIBQuery;
    Ds_AENTRADA: TDataSource;
    IBDS_AENTRADA: TIBDataSet;
    IBDS_AENTRADAID: TIntegerField;
    IBDS_AENTRADADATA: TDateTimeField;
    IBDS_AENTRADAHISTORICO: TIBStringField;
    IBDS_AENTRADANUMERO_CONTRATO: TIBStringField;
    IBDS_AENTRADANUMERO_PARCELA: TIBStringField;
    IBDS_AENTRADAND_SEU_NUMERO: TIBStringField;
    IBDS_AENTRADANOSSO_NUMERO: TIBStringField;
    IBDS_AENTRADAVALOR: TIBBCDField;
    IBQuery_IDAEntrada: TIBQuery;
    IBDS_VENDEDOR: TIBDataSet;
    IBDS_VENDEDORCOD_VEDR: TIntegerField;
    IBDS_VENDEDORCOD_VENDEDOR: TIBStringField;
    IBDS_VENDEDORNOME_VENDEDOR: TIBStringField;
    Ds_VENDEDOR: TDataSource;
    IBQuery_CODVEDR: TIBQuery;
    IBDS_MEDICO: TIBDataSet;
    IBDS_MEDICOCOD_MEDI: TIntegerField;
    IBDS_MEDICONOME_MEDICO: TIBStringField;
    IBDS_MEDICOTELEFONE_MEDICO: TIBStringField;
    IBDS_MEDICOEMAIL_MEDIGO: TIBStringField;
    Ds_MEDICO: TDataSource;
    IBQuery_CODMEDI: TIBQuery;
    IBDS_CHEQUE: TIBDataSet;
    IBDS_CHEQUECOD_CHEQ: TIntegerField;
    IBDS_CHEQUENUMERO_CONTRATO: TIBStringField;
    IBDS_CHEQUENOME_CLIENTE: TIBStringField;
    IBDS_CHEQUECODIGO: TIBStringField;
    IBDS_CHEQUEVALOR_PARCELA: TIBBCDField;
    IBDS_CHEQUEDATA_VENCIMENTO: TDateTimeField;
    IBDS_CHEQUEQUANT_PARCELAS: TIBStringField;
    IBDS_CHEQUENUMERO_PARCELA: TIBStringField;
    IBDS_CHEQUESITUACAO_PARCELA: TIBStringField;
    IBDS_CHEQUEDATA_PAGAMENTO: TDateTimeField;
    IBDS_CHEQUEACRESCIMO: TIBBCDField;
    IBDS_CHEQUEDESCONTO: TIBBCDField;
    IBDS_CHEQUEVALOR_PAGO: TIBBCDField;
    IBDS_CHEQUEVALOR_PENDENTE: TIBBCDField;
    IBDS_CHEQUETOTAL_PAGO: TIBBCDField;
    IBDS_CHEQUEVALOR_APAGAR: TIBBCDField;
    Ds_CHEQUE: TDataSource;
    IBQuery_CODCHEQ: TIBQuery;
    IBDS_CARTAO: TIBDataSet;
    IBDS_CARTAOCOD_CART: TIntegerField;
    IBDS_CARTAONUMERO_CONTRATO: TIBStringField;
    IBDS_CARTAONOME_CLIENTE: TIBStringField;
    IBDS_CARTAOCODIGO: TIBStringField;
    IBDS_CARTAOVALOR_PARCELA: TIBBCDField;
    IBDS_CARTAODATA_VENCIMENTO: TDateTimeField;
    IBDS_CARTAOQUANT_PARCELAS: TIBStringField;
    IBDS_CARTAONUMERO_PARCELA: TIBStringField;
    IBDS_CARTAOSITUACAO_PARCELA: TIBStringField;
    IBDS_CARTAODATA_PAGAMENTO: TDateTimeField;
    IBDS_CARTAOACRESCIMO: TIBBCDField;
    IBDS_CARTAODESCONTO: TIBBCDField;
    IBDS_CARTAOVALOR_PAGO: TIBBCDField;
    IBDS_CARTAOVALOR_PENDENTE: TIBBCDField;
    IBDS_CARTAOTOTAL_PAGO: TIBBCDField;
    IBDS_CARTAOVALOR_APAGAR: TIBBCDField;
    Ds_CARTAO: TDataSource;
    IBQuery_CODCART: TIBQuery;
    IBDS_BOLETO: TIBDataSet;
    IBDS_BOLETOCOD_BOLE: TIntegerField;
    IBDS_BOLETONUMERO_CONTRATO: TIBStringField;
    IBDS_BOLETONOME_CLIENTE: TIBStringField;
    IBDS_BOLETOCODIGO: TIBStringField;
    IBDS_BOLETOVALOR_PARCELA: TIBBCDField;
    IBDS_BOLETODATA_VENCIMENTO: TDateTimeField;
    IBDS_BOLETOQUANT_PARCELAS: TIBStringField;
    IBDS_BOLETONUMERO_PARCELA: TIBStringField;
    IBDS_BOLETOSITUACAO_PARCELA: TIBStringField;
    IBDS_BOLETODATA_PAGAMENTO: TDateTimeField;
    IBDS_BOLETOACRESCIMO: TIBBCDField;
    IBDS_BOLETODESCONTO: TIBBCDField;
    IBDS_BOLETOVALOR_PAGO: TIBBCDField;
    IBDS_BOLETOVALOR_PENDENTE: TIBBCDField;
    IBDS_BOLETOTOTAL_PAGO: TIBBCDField;
    IBDS_BOLETOVALOR_APAGAR: TIBBCDField;
    Ds_BOLETO: TDataSource;
    IBQuery_CODBOLE: TIBQuery;
    IBDS_CIDADES: TIBDataSet;
    IBDS_CIDADESCODIGO: TIntegerField;
    IBDS_CIDADESNOME_CID: TIBStringField;
    IBDS_CIDADESCEP_CID: TIBStringField;
    IBDS_CIDADESESTADO_UF: TIBStringField;
    IBDS_CIDADESTIPO: TIBStringField;
    Ds_CIDADES: TDataSource;
    IBDS_PRODUTO: TIBDataSet;
    IBDS_PRODUTOCODIGO: TIntegerField;
    IBDS_PRODUTODESCRICAO: TIBStringField;
    IBDS_PRODUTOGRUPO: TIntegerField;
    IBDS_PRODUTOFORNECEDOR: TIntegerField;
    Ds_PRODUTO: TDataSource;
    Ds_BENTRADA: TDataSource;
    IBDS_BENTRADA: TIBDataSet;
    IBDS_BENTRADAID: TIntegerField;
    IBDS_BENTRADADATA: TDateTimeField;
    IBDS_BENTRADAHISTORICO: TIBStringField;
    IBDS_BENTRADANUMERO_CONTRATO: TIBStringField;
    IBDS_BENTRADANUMERO_PARCELA: TIBStringField;
    IBDS_BENTRADAND_SEU_NUMERO: TIBStringField;
    IBDS_BENTRADANOSSO_NUMERO: TIBStringField;
    IBDS_BENTRADAVALOR: TIBBCDField;
    IBQuery_IDBEntrada: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBConfigService: TIBConfigService;
    IBDS_SPC: TIBDataSet;
    Ds_SPC: TDataSource;
    IBQuery_CODSPC: TIBQuery;
    IBDS_SPCCOD_SPC: TIntegerField;
    IBDS_SPCNUMERO_CONTRATO: TIBStringField;
    IBDS_SPCNOME: TIBStringField;
    IBDS_SPCCPF: TIBStringField;
    IBDS_CLIENTESCASA: TIBStringField;
    IBDS_CLIENTESTEMPO_MORADIA: TIBStringField;
    IBDS_CLIENTESTEMPO_SERVICO: TIBStringField;
    IBDS_CLIENTESAPOSENTADO: TIBStringField;
    IBDS_CLIENTESTEMPO_SERVICO_CONJUGE: TIBStringField;
    IBDS_CLIENTESRECEBE_DIA: TIBStringField;
    ADOConnection: TADOConnection;
    IBDS_SPCCODIGO: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IBDS_CLIENTESAfterInsert(DataSet: TDataSet);
    procedure IBDS_VENDASAfterInsert(DataSet: TDataSet);
    procedure IBDS_ITEMAfterInsert(DataSet: TDataSet);
    procedure IBDS_CARNEAfterInsert(DataSet: TDataSet);
    procedure IBDS_AENTRADAAfterInsert(DataSet: TDataSet);
    procedure IBDS_VENDEDORAfterInsert(DataSet: TDataSet);
    procedure IBDS_MEDICOAfterInsert(DataSet: TDataSet);
    procedure IBDS_CHEQUEAfterInsert(DataSet: TDataSet);
    procedure IBDS_CARTAOAfterInsert(DataSet: TDataSet);
    procedure IBDS_BOLETOAfterInsert(DataSet: TDataSet);
    procedure IBDS_BENTRADAAfterInsert(DataSet: TDataSet);
    procedure IBDS_SPCAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses UnPrincipal;

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
IBConfigService.DatabaseName:= 'C:\Arquivos de programas\Inforamos\Sgo\Contents\SGO.gdb';
IBConfigService.Params.add('user_name=INFORAMOS');
IBConfigService.Params.add('password=eri21033001');
Try
   begin
     IBconfigService.Active:=true;
     IBConfigService.SetAsyncMode(False);
     //ATIVADA OPERA��O EM MODO SINCRONO - "Forced Write - Grava��o For�ada"
     IBconfigService.Active:=false;
   end;
 except
    Begin
     ShowMessage('N�o foi poss�vel ativar modo de opera��o S�ncrono');
    end;
 end;// try
 IBQ_SENHA.Open;
IBDS_USUARIOS.Open;
IBDS_EMPRESA.Open;
IBDS_CLIENTES.Open;
IBDS_ESTOQUE.Open;
IBDS_INATIVOS.Open;
IBDS_VENDEDOR.Open;
IBDS_MEDICO.Open;
IBDS_CIDADES.Open;
IBDS_PRODUTO.Open;
IBDS_SPC.Open;
end;

procedure TDm.DataModuleDestroy(Sender: TObject);
begin
IBQ_SENHA.Close;
IBDS_USUARIOS.Close;
IBDS_EMPRESA.Close;
IBDS_CLIENTES.Close;
IBDS_ESTOQUE.Close;
IBDS_INATIVOS.Close;
IBDS_ITEM.Close;
IBDS_VENDAS.Close;
IBDS_MEDICO.Close;
IBDS_CHEQUE.Close;
IBDS_CARTAO.Close;
IBDS_BOLETO.Close;
IBDS_AENTRADA.Close;
IBDS_CIDADES.Close;
IBDS_PRODUTO.Close;
IBDS_SPC.Close;
end;

procedure TDm.IBDS_CLIENTESAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQ_CODCLIE.Open;
  IBQ_CODCLIE.First;
  If IBQ_CODCLIE.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODCLIE.Fields[0].AsInteger;
  IBQ_CODCLIE.Close;
  Inc( nNum );
  IBDS_CLIENTESCOD_CLIE.AsInteger := nNum;
end;

procedure TDm.IBDS_VENDASAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQ_CODVEND.Open;
  IBQ_CODVEND.First;
  If IBQ_CODVEND.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODVEND.Fields[0].AsInteger;
  IBQ_CODVEND.Close;
  Inc( nNum );
  IBDS_VENDASCOD_VEND.AsInteger := nNum;
end;

procedure TDm.IBDS_ITEMAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQ_CODITEM.Open;
  IBQ_CODITEM.First;
  If IBQ_CODITEM.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODITEM.Fields[0].AsInteger;
  IBQ_CODITEM.Close;
  Inc( nNum );
  IBDS_ITEMCOD_ITEM.AsInteger := nNum;
end;

procedure TDm.IBDS_CARNEAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQ_CODCARN.Open;
  IBQ_CODCARN.First;
  If IBQ_CODCARN.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODCARN.Fields[0].AsInteger;
  IBQ_CODCARN.Close;
  Inc( nNum );
  IBDS_CARNECOD_CARN.AsInteger := nNum;
end;

procedure TDm.IBDS_AENTRADAAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDAEntrada.Open;
  IBQuery_IDAEntrada.First;
  If IBQuery_IDAEntrada.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDAEntrada.Fields[0].AsInteger;
  IBQuery_IDAEntrada.Close;
  Inc( nNum );
  IBDS_AENTRADAID.AsInteger := nNum;
end;

procedure TDm.IBDS_VENDEDORAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODVEDR.Open;
  IBQuery_CODVEDR.First;
  If IBQuery_CODVEDR.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODVEDR.Fields[0].AsInteger;
  IBQuery_CODVEDR.Close;
  Inc( nNum );
  IBDS_VENDEDORCOD_VEDR.AsInteger := nNum;
end;

procedure TDm.IBDS_MEDICOAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODMEDI.Open;
  IBQuery_CODMEDI.First;
  If IBQuery_CODMEDI.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODMEDI.Fields[0].AsInteger;
  IBQuery_CODMEDI.Close;
  Inc( nNum );
  IBDS_MEDICOCOD_MEDI.AsInteger := nNum;
end;

procedure TDm.IBDS_CHEQUEAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODCHEQ.Open;
  IBQuery_CODCHEQ.First;
  If IBQuery_CODCHEQ.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODCHEQ.Fields[0].AsInteger;
  IBQuery_CODCHEQ.Close;
  Inc( nNum );
  IBDS_CHEQUECOD_CHEQ.AsInteger := nNum;
end;

procedure TDm.IBDS_CARTAOAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODCART.Open;
  IBQuery_CODCART.First;
  If IBQuery_CODCART.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODCART.Fields[0].AsInteger;
  IBQuery_CODCART.Close;
  Inc( nNum );
  IBDS_CARTAOCOD_CART.AsInteger := nNum;
end;

procedure TDm.IBDS_BOLETOAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODBOLE.Open;
  IBQuery_CODBOLE.First;
  If IBQuery_CODBOLE.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODBOLE.Fields[0].AsInteger;
  IBQuery_CODBOLE.Close;
  Inc( nNum );
  IBDS_BOLETOCOD_BOLE.AsInteger := nNum;
end;

procedure TDm.IBDS_BENTRADAAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_IDBEntrada.Open;
  IBQuery_IDBEntrada.First;
  If IBQuery_IDBEntrada.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_IDBEntrada.Fields[0].AsInteger;
  IBQuery_IDBEntrada.Close;
  Inc( nNum );
  IBDS_BENTRADAID.AsInteger := nNum;
end;

procedure TDm.IBDS_SPCAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQuery_CODSPC.Open;
  IBQuery_CODSPC.First;
  If IBQuery_CODSPC.EOF Then
    nNum := 0
  Else
    nNum := IBQuery_CODSPC.Fields[0].AsInteger;
  IBQuery_CODSPC.Close;
  Inc( nNum );
  IBDS_SPCCOD_SPC.AsInteger := nNum;
end;

end.
