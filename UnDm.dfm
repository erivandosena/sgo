object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 464
  Top = 232
  Height = 560
  Width = 812
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Arquivos de programas\Inforamos\Sgo\Contents\SGO.GDB'
    Params.Strings = (
      'user_name=INFORAMOS'
      'password=eri21033001')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    Left = 40
    Top = 8
  end
  object IBTransaction: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 120
    Top = 8
  end
  object Ds_CLIENTES: TDataSource
    DataSet = IBDS_CLIENTES
    Left = 216
    Top = 128
  end
  object Ds_USUARIOS: TDataSource
    DataSet = IBDS_USUARIOS
    Left = 32
    Top = 128
  end
  object IBDS_USUARIOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      '  (NOME_USUARIO, SENHA, ANTERIOR)'
      'values'
      '  (:NOME_USUARIO, :SENHA, :ANTERIOR)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_USUARIO,'
      '  SENHA,'
      '  ANTERIOR'
      'from USUARIOS '
      'where'
      '  NOME_USUARIO = :NOME_USUARIO')
    SelectSQL.Strings = (
      'select * from USUARIOS'
      'order by NOME_USUARIO')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  NOME_USUARIO = :NOME_USUARIO,'
      '  SENHA = :SENHA,'
      '  ANTERIOR = :ANTERIOR'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 40
    Top = 72
    object IBDS_USUARIOSNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"USUARIOS"."NOME_USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_USUARIOSSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Size = 15
    end
    object IBDS_USUARIOSANTERIOR: TIBStringField
      FieldName = 'ANTERIOR'
      Origin = '"USUARIOS"."ANTERIOR"'
      Size = 15
    end
  end
  object IBQ_SENHA: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from USUARIOS')
    Left = 512
    Top = 8
    object IBQ_SENHANOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"USUARIOS"."NOME_USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
    end
    object IBQ_SENHASENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      FixedChar = True
      Size = 15
    end
  end
  object DSSENHA: TDataSource
    DataSet = IBQ_SENHA
    Left = 584
    Top = 8
  end
  object IBDS_ESTOQUE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  COD_PROD = :OLD_COD_PROD')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      
        '  (COD_PROD, NOME_PRODUTO, DESCRICAO, QUANTIDADE_ESTOQUE, ESTOQU' +
        'E_MINIMO, '
      '   VALOR_UNITARIO, NOME_FORNECEDOR, VALOR_TOTAL)'
      'values'
      
        '  (:COD_PROD, :NOME_PRODUTO, :DESCRICAO, :QUANTIDADE_ESTOQUE, :E' +
        'STOQUE_MINIMO, '
      '   :VALOR_UNITARIO, :NOME_FORNECEDOR, :VALOR_TOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PROD,'
      '  NOME_PRODUTO,'
      '  DESCRICAO,'
      '  QUANTIDADE_ESTOQUE,'
      '  ESTOQUE_MINIMO,'
      '  VALOR_UNITARIO,'
      '  NOME_FORNECEDOR,'
      '  VALOR_TOTAL'
      'from ESTOQUE '
      'where'
      '  COD_PROD = :COD_PROD')
    SelectSQL.Strings = (
      'select * from ESTOQUE'
      'order by NOME_PRODUTO')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  COD_PROD = :COD_PROD,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTIDADE_ESTOQUE = :QUANTIDADE_ESTOQUE,'
      '  ESTOQUE_MINIMO = :ESTOQUE_MINIMO,'
      '  VALOR_UNITARIO = :VALOR_UNITARIO,'
      '  NOME_FORNECEDOR = :NOME_FORNECEDOR,'
      '  VALOR_TOTAL = :VALOR_TOTAL'
      'where'
      '  COD_PROD = :OLD_COD_PROD')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 300
    Top = 76
    object IBDS_ESTOQUECOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"PRODUTOS"."COD_PROD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object IBDS_ESTOQUENOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PRODUTOS"."NOME_PRODUTO"'
      Size = 30
    end
    object IBDS_ESTOQUEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 45
    end
    object IBDS_ESTOQUEQUANTIDADE_ESTOQUE: TIntegerField
      FieldName = 'QUANTIDADE_ESTOQUE'
      Origin = '"PRODUTOS"."QUANTIDADE_ESTOQUE"'
    end
    object IBDS_ESTOQUEESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = '"PRODUTOS"."ESTOQUE_MINIMO"'
    end
    object IBDS_ESTOQUEVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = '"PRODUTOS"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ESTOQUEVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"ESTOQUE"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ESTOQUENOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"PRODUTOS"."NOME_FORNECEDOR"'
      Size = 51
    end
  end
  object Ds_ESTOQUE: TDataSource
    DataSet = IBDS_ESTOQUE
    Left = 304
    Top = 128
  end
  object IBDS_EMPRESA: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      
        '  (NOME_EMPRESARIAL, NOME_FANTASIA, CNPJ, IE, SLOGAN, ENDERECO, ' +
        'BAIRRO, '
      
        '   CEP, CIDADE, ESTADO_UF, TELEFONE, FAX, EMAIL, WEBSITE, SOCIO_' +
        '1, SOCIO_2, '
      '   LOGO_EMPRESA, JUROS, MULTA)'
      'values'
      
        '  (:NOME_EMPRESARIAL, :NOME_FANTASIA, :CNPJ, :IE, :SLOGAN, :ENDE' +
        'RECO, :BAIRRO, '
      
        '   :CEP, :CIDADE, :ESTADO_UF, :TELEFONE, :FAX, :EMAIL, :WEBSITE,' +
        ' :SOCIO_1, '
      '   :SOCIO_2, :LOGO_EMPRESA, :JUROS, :MULTA)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_EMPRESARIAL,'
      '  NOME_FANTASIA,'
      '  CNPJ,'
      '  IE,'
      '  SLOGAN,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CEP,'
      '  CIDADE,'
      '  ESTADO_UF,'
      '  TELEFONE,'
      '  FAX,'
      '  EMAIL,'
      '  WEBSITE,'
      '  SOCIO_1,'
      '  SOCIO_2,'
      '  LOGO_EMPRESA,'
      '  JUROS,'
      '  MULTA'
      'from EMPRESA '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select * from EMPRESA')
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  NOME_EMPRESARIAL = :NOME_EMPRESARIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  SLOGAN = :SLOGAN,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  ESTADO_UF = :ESTADO_UF,'
      '  TELEFONE = :TELEFONE,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  WEBSITE = :WEBSITE,'
      '  SOCIO_1 = :SOCIO_1,'
      '  SOCIO_2 = :SOCIO_2,'
      '  LOGO_EMPRESA = :LOGO_EMPRESA,'
      '  JUROS = :JUROS,'
      '  MULTA = :MULTA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 132
    Top = 76
    object IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"EMPRESA"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBDS_EMPRESANOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"EMPRESA"."NOME_FANTASIA"'
      Size = 56
    end
    object IBDS_EMPRESACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '99.999.999/9999-99;1;_'
      Size = 18
    end
    object IBDS_EMPRESAIE: TIBStringField
      FieldName = 'IE'
      Origin = '"EMPRESA"."IE"'
      EditMask = '99.999999-9;1;_'
      Size = 11
    end
    object IBDS_EMPRESASLOGAN: TIBStringField
      FieldName = 'SLOGAN'
      Origin = '"EMPRESA"."SLOGAN"'
      Size = 30
    end
    object IBDS_EMPRESAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"EMPRESA"."ENDERECO"'
      Size = 50
    end
    object IBDS_EMPRESABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"EMPRESA"."BAIRRO"'
      Size = 30
    end
    object IBDS_EMPRESACEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"EMPRESA"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_EMPRESACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"EMPRESA"."CIDADE"'
      Size = 25
    end
    object IBDS_EMPRESAESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"EMPRESA"."ESTADO_UF"'
      Size = 25
    end
    object IBDS_EMPRESATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"EMPRESA"."TELEFONE"'
      Size = 30
    end
    object IBDS_EMPRESAFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"EMPRESA"."FAX"'
      Size = 15
    end
    object IBDS_EMPRESAEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"EMPRESA"."EMAIL"'
      Size = 50
    end
    object IBDS_EMPRESAWEBSITE: TIBStringField
      FieldName = 'WEBSITE'
      Origin = '"EMPRESA"."WEBSITE"'
      Size = 25
    end
    object IBDS_EMPRESASOCIO_1: TIBStringField
      FieldName = 'SOCIO_1'
      Origin = '"EMPRESA"."SOCIO_1"'
      Size = 51
    end
    object IBDS_EMPRESASOCIO_2: TIBStringField
      FieldName = 'SOCIO_2'
      Origin = '"EMPRESA"."SOCIO_2"'
      Size = 51
    end
    object IBDS_EMPRESALOGO_EMPRESA: TBlobField
      FieldName = 'LOGO_EMPRESA'
      Origin = '"EMPRESA"."LOGO_EMPRESA"'
      Size = 8
    end
    object IBDS_EMPRESAJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"EMPRESA"."JUROS"'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"EMPRESA"."MULTA"'
    end
  end
  object Ds_EMPRESA: TDataSource
    DataSet = IBDS_EMPRESA
    Left = 128
    Top = 128
  end
  object IBDS_CLIENTES: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CLIENTESAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  COD_CLIE = :OLD_COD_CLIE')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (COD_CLIE, CODIGO, DATA_CADASTRO, NOME, APELIDO, NATURALIDADE,' +
        ' RG, CPF, '
      
        '   DATA_NASCIMENTO, PAI, APELIDO_PAI, MAE, APELIDO_MAE, ENDERECO' +
        '_CLIENTE, '
      
        '   TELEFONE_CLIENTE, CIDADE, BAIRRO, CEP, ESTADO_UF, CASA, TEMPO' +
        '_MORADIA, '
      
        '   PONTO_REFERENCIA, VIZINHOS, LOCAL_TRABALHO, FUNCAO, SALARIO, ' +
        'TEMPO_SERVICO, '
      
        '   TELEFONE_TRABALHO, ENDERECO_TRABALHO, EMPREGO_ANTERIOR, ENDER' +
        'ECO_EMPREG_ANT, '
      
        '   TELEFONE_EMPREG_ANT, APOSENTADO, BANCO_APOSENTADO, VALOR_PAGA' +
        'MENTO_APOS, '
      
        '   ESTADO_CIVIL, CONJUGE, APELIDO_CONJUGE, RG_CONJUGE, CPF_CONJU' +
        'GE, DATA_NASCIMENTO_CONJUGE, '
      
        '   PAI_CONJUGE, APELIDO_PAI_CONJUGE, MAE_CONJUGE, APELIDO_MAE_CO' +
        'NJUGE, '
      
        '   LOCAL_TRABALHO_CONJUGE, FUNCAO_CONJUGE, TEMPO_SERVICO_CONJUGE' +
        ', SALARIO_CONJUGE, '
      
        '   ENDERECO_TRABALHO_CONJUGE, TELEFONE_TRABALHO_CONJUGE, NUMERO_' +
        'CONTRATO, '
      
        '   NUMERO_SIS_COB, TIPO_VENDA, FORMA_VENDA, OBS_CLIENTE, RECEBE_' +
        'DIA)'
      'values'
      
        '  (:COD_CLIE, :CODIGO, :DATA_CADASTRO, :NOME, :APELIDO, :NATURAL' +
        'IDADE, '
      
        '   :RG, :CPF, :DATA_NASCIMENTO, :PAI, :APELIDO_PAI, :MAE, :APELI' +
        'DO_MAE, '
      
        '   :ENDERECO_CLIENTE, :TELEFONE_CLIENTE, :CIDADE, :BAIRRO, :CEP,' +
        ' :ESTADO_UF, '
      
        '   :CASA, :TEMPO_MORADIA, :PONTO_REFERENCIA, :VIZINHOS, :LOCAL_T' +
        'RABALHO, '
      
        '   :FUNCAO, :SALARIO, :TEMPO_SERVICO, :TELEFONE_TRABALHO, :ENDER' +
        'ECO_TRABALHO, '
      
        '   :EMPREGO_ANTERIOR, :ENDERECO_EMPREG_ANT, :TELEFONE_EMPREG_ANT' +
        ', :APOSENTADO, '
      
        '   :BANCO_APOSENTADO, :VALOR_PAGAMENTO_APOS, :ESTADO_CIVIL, :CON' +
        'JUGE, :APELIDO_CONJUGE, '
      
        '   :RG_CONJUGE, :CPF_CONJUGE, :DATA_NASCIMENTO_CONJUGE, :PAI_CON' +
        'JUGE, :APELIDO_PAI_CONJUGE, '
      
        '   :MAE_CONJUGE, :APELIDO_MAE_CONJUGE, :LOCAL_TRABALHO_CONJUGE, ' +
        ':FUNCAO_CONJUGE, '
      
        '   :TEMPO_SERVICO_CONJUGE, :SALARIO_CONJUGE, :ENDERECO_TRABALHO_' +
        'CONJUGE, '
      
        '   :TELEFONE_TRABALHO_CONJUGE, :NUMERO_CONTRATO, :NUMERO_SIS_COB' +
        ', :TIPO_VENDA, '
      '   :FORMA_VENDA, :OBS_CLIENTE, :RECEBE_DIA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIE,'
      '  CODIGO,'
      '  DATA_CADASTRO,'
      '  NOME,'
      '  APELIDO,'
      '  NATURALIDADE,'
      '  RG,'
      '  CPF,'
      '  DATA_NASCIMENTO,'
      '  PAI,'
      '  APELIDO_PAI,'
      '  MAE,'
      '  APELIDO_MAE,'
      '  ENDERECO_CLIENTE,'
      '  TELEFONE_CLIENTE,'
      '  CIDADE,'
      '  BAIRRO,'
      '  CEP,'
      '  ESTADO_UF,'
      '  CASA,'
      '  TEMPO_MORADIA,'
      '  PONTO_REFERENCIA,'
      '  VIZINHOS,'
      '  LOCAL_TRABALHO,'
      '  FUNCAO,'
      '  SALARIO,'
      '  TEMPO_SERVICO,'
      '  TELEFONE_TRABALHO,'
      '  ENDERECO_TRABALHO,'
      '  EMPREGO_ANTERIOR,'
      '  ENDERECO_EMPREG_ANT,'
      '  TELEFONE_EMPREG_ANT,'
      '  APOSENTADO,'
      '  BANCO_APOSENTADO,'
      '  VALOR_PAGAMENTO_APOS,'
      '  ESTADO_CIVIL,'
      '  CONJUGE,'
      '  APELIDO_CONJUGE,'
      '  RG_CONJUGE,'
      '  CPF_CONJUGE,'
      '  DATA_NASCIMENTO_CONJUGE,'
      '  PAI_CONJUGE,'
      '  APELIDO_PAI_CONJUGE,'
      '  MAE_CONJUGE,'
      '  APELIDO_MAE_CONJUGE,'
      '  LOCAL_TRABALHO_CONJUGE,'
      '  FUNCAO_CONJUGE,'
      '  TEMPO_SERVICO_CONJUGE,'
      '  SALARIO_CONJUGE,'
      '  ENDERECO_TRABALHO_CONJUGE,'
      '  TELEFONE_TRABALHO_CONJUGE,'
      '  NUMERO_CONTRATO,'
      '  NUMERO_SIS_COB,'
      '  TIPO_VENDA,'
      '  FORMA_VENDA,'
      '  OBS_CLIENTE,'
      '  RECEBE_DIA'
      'from CLIENTES '
      'where'
      '  COD_CLIE = :COD_CLIE')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'order by CODIGO')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  COD_CLIE = :COD_CLIE,'
      '  CODIGO = :CODIGO,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  NOME = :NOME,'
      '  APELIDO = :APELIDO,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  PAI = :PAI,'
      '  APELIDO_PAI = :APELIDO_PAI,'
      '  MAE = :MAE,'
      '  APELIDO_MAE = :APELIDO_MAE,'
      '  ENDERECO_CLIENTE = :ENDERECO_CLIENTE,'
      '  TELEFONE_CLIENTE = :TELEFONE_CLIENTE,'
      '  CIDADE = :CIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  ESTADO_UF = :ESTADO_UF,'
      '  CASA = :CASA,'
      '  TEMPO_MORADIA = :TEMPO_MORADIA,'
      '  PONTO_REFERENCIA = :PONTO_REFERENCIA,'
      '  VIZINHOS = :VIZINHOS,'
      '  LOCAL_TRABALHO = :LOCAL_TRABALHO,'
      '  FUNCAO = :FUNCAO,'
      '  SALARIO = :SALARIO,'
      '  TEMPO_SERVICO = :TEMPO_SERVICO,'
      '  TELEFONE_TRABALHO = :TELEFONE_TRABALHO,'
      '  ENDERECO_TRABALHO = :ENDERECO_TRABALHO,'
      '  EMPREGO_ANTERIOR = :EMPREGO_ANTERIOR,'
      '  ENDERECO_EMPREG_ANT = :ENDERECO_EMPREG_ANT,'
      '  TELEFONE_EMPREG_ANT = :TELEFONE_EMPREG_ANT,'
      '  APOSENTADO = :APOSENTADO,'
      '  BANCO_APOSENTADO = :BANCO_APOSENTADO,'
      '  VALOR_PAGAMENTO_APOS = :VALOR_PAGAMENTO_APOS,'
      '  ESTADO_CIVIL = :ESTADO_CIVIL,'
      '  CONJUGE = :CONJUGE,'
      '  APELIDO_CONJUGE = :APELIDO_CONJUGE,'
      '  RG_CONJUGE = :RG_CONJUGE,'
      '  CPF_CONJUGE = :CPF_CONJUGE,'
      '  DATA_NASCIMENTO_CONJUGE = :DATA_NASCIMENTO_CONJUGE,'
      '  PAI_CONJUGE = :PAI_CONJUGE,'
      '  APELIDO_PAI_CONJUGE = :APELIDO_PAI_CONJUGE,'
      '  MAE_CONJUGE = :MAE_CONJUGE,'
      '  APELIDO_MAE_CONJUGE = :APELIDO_MAE_CONJUGE,'
      '  LOCAL_TRABALHO_CONJUGE = :LOCAL_TRABALHO_CONJUGE,'
      '  FUNCAO_CONJUGE = :FUNCAO_CONJUGE,'
      '  TEMPO_SERVICO_CONJUGE = :TEMPO_SERVICO_CONJUGE,'
      '  SALARIO_CONJUGE = :SALARIO_CONJUGE,'
      '  ENDERECO_TRABALHO_CONJUGE = :ENDERECO_TRABALHO_CONJUGE,'
      '  TELEFONE_TRABALHO_CONJUGE = :TELEFONE_TRABALHO_CONJUGE,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NUMERO_SIS_COB = :NUMERO_SIS_COB,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  FORMA_VENDA = :FORMA_VENDA,'
      '  OBS_CLIENTE = :OBS_CLIENTE,'
      '  RECEBE_DIA = :RECEBE_DIA'
      'where'
      '  COD_CLIE = :OLD_COD_CLIE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 220
    Top = 76
    object IBDS_CLIENTESCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"CLIENTES"."COD_CLIE"'
    end
    object IBDS_CLIENTESCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object IBDS_CLIENTESDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Origin = '"CLIENTES"."DATA_CADASTRO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CLIENTESNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = '"CLIENTES"."APELIDO"'
      Size = 25
    end
    object IBDS_CLIENTESNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"CLIENTES"."NATURALIDADE"'
      Size = 30
    end
    object IBDS_CLIENTESCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object IBDS_CLIENTESRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTES"."RG"'
    end
    object IBDS_CLIENTESDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"CLIENTES"."DATA_NASCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CLIENTESPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"CLIENTES"."PAI"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO_PAI: TIBStringField
      FieldName = 'APELIDO_PAI'
      Origin = '"CLIENTES"."APELIDO_PAI"'
      Size = 25
    end
    object IBDS_CLIENTESMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"CLIENTES"."MAE"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO_MAE: TIBStringField
      FieldName = 'APELIDO_MAE'
      Origin = '"CLIENTES"."APELIDO_MAE"'
      Size = 25
    end
    object IBDS_CLIENTESENDERECO_CLIENTE: TIBStringField
      FieldName = 'ENDERECO_CLIENTE'
      Origin = '"CLIENTES"."ENDERECO_CLIENTE"'
      Size = 50
    end
    object IBDS_CLIENTESTELEFONE_CLIENTE: TIBStringField
      FieldName = 'TELEFONE_CLIENTE'
      Origin = '"CLIENTES"."TELEFONE_CLIENTE"'
    end
    object IBDS_CLIENTESCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBDS_CLIENTESBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 30
    end
    object IBDS_CLIENTESCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_CLIENTESESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"CLIENTES"."ESTADO_UF"'
      Size = 25
    end
    object IBDS_CLIENTESPONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"CLIENTES"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBDS_CLIENTESVIZINHOS: TIBStringField
      FieldName = 'VIZINHOS'
      Origin = '"CLIENTES"."VIZINHOS"'
      Size = 51
    end
    object IBDS_CLIENTESLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"CLIENTES"."LOCAL_TRABALHO"'
      Size = 35
    end
    object IBDS_CLIENTESFUNCAO: TIBStringField
      FieldName = 'FUNCAO'
      Origin = '"CLIENTES"."FUNCAO"'
      Size = 25
    end
    object IBDS_CLIENTESSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"CLIENTES"."SALARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CLIENTESTELEFONE_TRABALHO: TIBStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = '"CLIENTES"."TELEFONE_TRABALHO"'
    end
    object IBDS_CLIENTESENDERECO_TRABALHO: TIBStringField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"CLIENTES"."ENDERECO_TRABALHO"'
      Size = 50
    end
    object IBDS_CLIENTESEMPREGO_ANTERIOR: TIBStringField
      FieldName = 'EMPREGO_ANTERIOR'
      Origin = '"CLIENTES"."EMPREGO_ANTERIOR"'
      Size = 35
    end
    object IBDS_CLIENTESENDERECO_EMPREG_ANT: TIBStringField
      FieldName = 'ENDERECO_EMPREG_ANT'
      Origin = '"CLIENTES"."ENDERECO_EMPREG_ANT"'
      Size = 50
    end
    object IBDS_CLIENTESTELEFONE_EMPREG_ANT: TIBStringField
      FieldName = 'TELEFONE_EMPREG_ANT'
      Origin = '"CLIENTES"."TELEFONE_EMPREG_ANT"'
    end
    object IBDS_CLIENTESBANCO_APOSENTADO: TIBStringField
      FieldName = 'BANCO_APOSENTADO'
      Origin = '"CLIENTES"."BANCO_APOSENTADO"'
      Size = 30
    end
    object IBDS_CLIENTESVALOR_PAGAMENTO_APOS: TIBBCDField
      FieldName = 'VALOR_PAGAMENTO_APOS'
      Origin = '"CLIENTES"."VALOR_PAGAMENTO_APOS"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CLIENTESESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = '"CLIENTES"."ESTADO_CIVIL"'
      Size = 25
    end
    object IBDS_CLIENTESCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"CLIENTES"."CONJUGE"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO_CONJUGE: TIBStringField
      FieldName = 'APELIDO_CONJUGE'
      Origin = '"CLIENTES"."APELIDO_CONJUGE"'
      Size = 25
    end
    object IBDS_CLIENTESRG_CONJUGE: TIBStringField
      FieldName = 'RG_CONJUGE'
      Origin = '"CLIENTES"."RG_CONJUGE"'
    end
    object IBDS_CLIENTESCPF_CONJUGE: TIBStringField
      FieldName = 'CPF_CONJUGE'
      Origin = '"CLIENTES"."CPF_CONJUGE"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object IBDS_CLIENTESDATA_NASCIMENTO_CONJUGE: TDateTimeField
      FieldName = 'DATA_NASCIMENTO_CONJUGE'
      Origin = '"CLIENTES"."DATA_NASCIMENTO_CONJUGE"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CLIENTESPAI_CONJUGE: TIBStringField
      FieldName = 'PAI_CONJUGE'
      Origin = '"CLIENTES"."PAI_CONJUGE"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO_PAI_CONJUGE: TIBStringField
      FieldName = 'APELIDO_PAI_CONJUGE'
      Origin = '"CLIENTES"."APELIDO_PAI_CONJUGE"'
      Size = 25
    end
    object IBDS_CLIENTESMAE_CONJUGE: TIBStringField
      FieldName = 'MAE_CONJUGE'
      Origin = '"CLIENTES"."MAE_CONJUGE"'
      Size = 51
    end
    object IBDS_CLIENTESAPELIDO_MAE_CONJUGE: TIBStringField
      FieldName = 'APELIDO_MAE_CONJUGE'
      Origin = '"CLIENTES"."APELIDO_MAE_CONJUGE"'
      Size = 25
    end
    object IBDS_CLIENTESLOCAL_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'LOCAL_TRABALHO_CONJUGE'
      Origin = '"CLIENTES"."LOCAL_TRABALHO_CONJUGE"'
      Size = 35
    end
    object IBDS_CLIENTESFUNCAO_CONJUGE: TIBStringField
      FieldName = 'FUNCAO_CONJUGE'
      Origin = '"CLIENTES"."FUNCAO_CONJUGE"'
      Size = 25
    end
    object IBDS_CLIENTESSALARIO_CONJUGE: TIBBCDField
      FieldName = 'SALARIO_CONJUGE'
      Origin = '"CLIENTES"."SALARIO_CONJUGE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CLIENTESENDERECO_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'ENDERECO_TRABALHO_CONJUGE'
      Origin = '"CLIENTES"."ENDERECO_TRABALHO_CONJUGE"'
      Size = 50
    end
    object IBDS_CLIENTESTELEFONE_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'TELEFONE_TRABALHO_CONJUGE'
      Origin = '"CLIENTES"."TELEFONE_TRABALHO_CONJUGE"'
    end
    object IBDS_CLIENTESNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CLIENTES"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_CLIENTESNUMERO_SIS_COB: TIBStringField
      FieldName = 'NUMERO_SIS_COB'
      Origin = '"CLIENTES"."NUMERO_SIS_COB"'
      Size = 10
    end
    object IBDS_CLIENTESTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"CLIENTES"."TIPO_VENDA"'
    end
    object IBDS_CLIENTESFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"CLIENTES"."FORMA_VENDA"'
    end
    object IBDS_CLIENTESOBS_CLIENTE: TMemoField
      FieldName = 'OBS_CLIENTE'
      Origin = '"CLIENTES"."OBS_CLIENTE"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_CLIENTESCASA: TIBStringField
      FieldName = 'CASA'
      Origin = '"CLIENTES"."CASA"'
      Size = 15
    end
    object IBDS_CLIENTESTEMPO_MORADIA: TIBStringField
      FieldName = 'TEMPO_MORADIA'
      Origin = '"CLIENTES"."TEMPO_MORADIA"'
      Size = 15
    end
    object IBDS_CLIENTESTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"CLIENTES"."TEMPO_SERVICO"'
      Size = 15
    end
    object IBDS_CLIENTESAPOSENTADO: TIBStringField
      FieldName = 'APOSENTADO'
      Origin = '"CLIENTES"."APOSENTADO"'
      Size = 15
    end
    object IBDS_CLIENTESTEMPO_SERVICO_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERVICO_CONJUGE'
      Origin = '"CLIENTES"."TEMPO_SERVICO_CONJUGE"'
      Size = 15
    end
    object IBDS_CLIENTESRECEBE_DIA: TIBStringField
      FieldName = 'RECEBE_DIA'
      Origin = '"CLIENTES"."RECEBE_DIA"'
      Size = 15
    end
  end
  object IBQ_CODCLIE: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CLIE) from CLIENTES')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'MAX'
    Left = 216
    Top = 184
  end
  object IBDS_INATIVOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from INATIVOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into INATIVOS'
      
        '  (COD_CLIE, CODIGO, DATA_CADASTRO, NOME, APELIDO, NATURALIDADE,' +
        ' RG, CPF, '
      
        '   DATA_NASCIMENTO, PAI, APELIDO_PAI, MAE, APELIDO_MAE, ENDERECO' +
        '_CLIENTE, '
      
        '   TELEFONE_CLIENTE, CIDADE, BAIRRO, CEP, ESTADO_UF, CASA, TEMPO' +
        '_MORADIA, '
      
        '   PONTO_REFERENCIA, VIZINHOS, LOCAL_TRABALHO, FUNCAO, SALARIO, ' +
        'TEMPO_SERVICO, '
      
        '   TELEFONE_TRABALHO, ENDERECO_TRABALHO, EMPREGO_ANTERIOR, ENDER' +
        'ECO_EMPREG_ANT, '
      
        '   TELEFONE_EMPREG_ANT, APOSENTADO, BANCO_APOSENTADO, VALOR_PAGA' +
        'MENTO_APOS, '
      
        '   ESTADO_CIVIL, CONJUGE, APELIDO_CONJUGE, RG_CONJUGE, CPF_CONJU' +
        'GE, DATA_NASCIMENTO_CONJUGE, '
      
        '   PAI_CONJUGE, APELIDO_PAI_CONJUGE, MAE_CONJUGE, APELIDO_MAE_CO' +
        'NJUGE, '
      
        '   LOCAL_TRABALHO_CONJUGE, FUNCAO_CONJUGE, TEMPO_SERVICO_CONJUGE' +
        ', SALARIO_CONJUGE, '
      
        '   ENDERECO_TRABALHO_CONJUGE, TELEFONE_TRABALHO_CONJUGE, NUMERO_' +
        'CONTRATO, '
      
        '   NUMERO_SIS_COB, TIPO_VENDA, FORMA_VENDA, OBS_CLIENTE, RECEBE_' +
        'DIA, DATA_MOVIDO, '
      '   MOVIDO_USUARIO, RAZAO_MOVIDO)'
      'values'
      
        '  (:COD_CLIE, :CODIGO, :DATA_CADASTRO, :NOME, :APELIDO, :NATURAL' +
        'IDADE, '
      
        '   :RG, :CPF, :DATA_NASCIMENTO, :PAI, :APELIDO_PAI, :MAE, :APELI' +
        'DO_MAE, '
      
        '   :ENDERECO_CLIENTE, :TELEFONE_CLIENTE, :CIDADE, :BAIRRO, :CEP,' +
        ' :ESTADO_UF, '
      
        '   :CASA, :TEMPO_MORADIA, :PONTO_REFERENCIA, :VIZINHOS, :LOCAL_T' +
        'RABALHO, '
      
        '   :FUNCAO, :SALARIO, :TEMPO_SERVICO, :TELEFONE_TRABALHO, :ENDER' +
        'ECO_TRABALHO, '
      
        '   :EMPREGO_ANTERIOR, :ENDERECO_EMPREG_ANT, :TELEFONE_EMPREG_ANT' +
        ', :APOSENTADO, '
      
        '   :BANCO_APOSENTADO, :VALOR_PAGAMENTO_APOS, :ESTADO_CIVIL, :CON' +
        'JUGE, :APELIDO_CONJUGE, '
      
        '   :RG_CONJUGE, :CPF_CONJUGE, :DATA_NASCIMENTO_CONJUGE, :PAI_CON' +
        'JUGE, :APELIDO_PAI_CONJUGE, '
      
        '   :MAE_CONJUGE, :APELIDO_MAE_CONJUGE, :LOCAL_TRABALHO_CONJUGE, ' +
        ':FUNCAO_CONJUGE, '
      
        '   :TEMPO_SERVICO_CONJUGE, :SALARIO_CONJUGE, :ENDERECO_TRABALHO_' +
        'CONJUGE, '
      
        '   :TELEFONE_TRABALHO_CONJUGE, :NUMERO_CONTRATO, :NUMERO_SIS_COB' +
        ', :TIPO_VENDA, '
      
        '   :FORMA_VENDA, :OBS_CLIENTE, :RECEBE_DIA, :DATA_MOVIDO, :MOVID' +
        'O_USUARIO, '
      '   :RAZAO_MOVIDO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIE,'
      '  CODIGO,'
      '  DATA_CADASTRO,'
      '  NOME,'
      '  APELIDO,'
      '  NATURALIDADE,'
      '  RG,'
      '  CPF,'
      '  DATA_NASCIMENTO,'
      '  PAI,'
      '  APELIDO_PAI,'
      '  MAE,'
      '  APELIDO_MAE,'
      '  ENDERECO_CLIENTE,'
      '  TELEFONE_CLIENTE,'
      '  CIDADE,'
      '  BAIRRO,'
      '  CEP,'
      '  ESTADO_UF,'
      '  CASA,'
      '  TEMPO_MORADIA,'
      '  PONTO_REFERENCIA,'
      '  VIZINHOS,'
      '  LOCAL_TRABALHO,'
      '  FUNCAO,'
      '  SALARIO,'
      '  TEMPO_SERVICO,'
      '  TELEFONE_TRABALHO,'
      '  ENDERECO_TRABALHO,'
      '  EMPREGO_ANTERIOR,'
      '  ENDERECO_EMPREG_ANT,'
      '  TELEFONE_EMPREG_ANT,'
      '  APOSENTADO,'
      '  BANCO_APOSENTADO,'
      '  VALOR_PAGAMENTO_APOS,'
      '  ESTADO_CIVIL,'
      '  CONJUGE,'
      '  APELIDO_CONJUGE,'
      '  RG_CONJUGE,'
      '  CPF_CONJUGE,'
      '  DATA_NASCIMENTO_CONJUGE,'
      '  PAI_CONJUGE,'
      '  APELIDO_PAI_CONJUGE,'
      '  MAE_CONJUGE,'
      '  APELIDO_MAE_CONJUGE,'
      '  LOCAL_TRABALHO_CONJUGE,'
      '  FUNCAO_CONJUGE,'
      '  TEMPO_SERVICO_CONJUGE,'
      '  SALARIO_CONJUGE,'
      '  ENDERECO_TRABALHO_CONJUGE,'
      '  TELEFONE_TRABALHO_CONJUGE,'
      '  NUMERO_CONTRATO,'
      '  NUMERO_SIS_COB,'
      '  TIPO_VENDA,'
      '  FORMA_VENDA,'
      '  OBS_CLIENTE,'
      '  RECEBE_DIA,'
      '  DATA_MOVIDO,'
      '  MOVIDO_USUARIO,'
      '  RAZAO_MOVIDO'
      'from INATIVOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from INATIVOS'
      'order by DATA_MOVIDO')
    ModifySQL.Strings = (
      'update INATIVOS'
      'set'
      '  COD_CLIE = :COD_CLIE,'
      '  CODIGO = :CODIGO,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  NOME = :NOME,'
      '  APELIDO = :APELIDO,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  PAI = :PAI,'
      '  APELIDO_PAI = :APELIDO_PAI,'
      '  MAE = :MAE,'
      '  APELIDO_MAE = :APELIDO_MAE,'
      '  ENDERECO_CLIENTE = :ENDERECO_CLIENTE,'
      '  TELEFONE_CLIENTE = :TELEFONE_CLIENTE,'
      '  CIDADE = :CIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  ESTADO_UF = :ESTADO_UF,'
      '  CASA = :CASA,'
      '  TEMPO_MORADIA = :TEMPO_MORADIA,'
      '  PONTO_REFERENCIA = :PONTO_REFERENCIA,'
      '  VIZINHOS = :VIZINHOS,'
      '  LOCAL_TRABALHO = :LOCAL_TRABALHO,'
      '  FUNCAO = :FUNCAO,'
      '  SALARIO = :SALARIO,'
      '  TEMPO_SERVICO = :TEMPO_SERVICO,'
      '  TELEFONE_TRABALHO = :TELEFONE_TRABALHO,'
      '  ENDERECO_TRABALHO = :ENDERECO_TRABALHO,'
      '  EMPREGO_ANTERIOR = :EMPREGO_ANTERIOR,'
      '  ENDERECO_EMPREG_ANT = :ENDERECO_EMPREG_ANT,'
      '  TELEFONE_EMPREG_ANT = :TELEFONE_EMPREG_ANT,'
      '  APOSENTADO = :APOSENTADO,'
      '  BANCO_APOSENTADO = :BANCO_APOSENTADO,'
      '  VALOR_PAGAMENTO_APOS = :VALOR_PAGAMENTO_APOS,'
      '  ESTADO_CIVIL = :ESTADO_CIVIL,'
      '  CONJUGE = :CONJUGE,'
      '  APELIDO_CONJUGE = :APELIDO_CONJUGE,'
      '  RG_CONJUGE = :RG_CONJUGE,'
      '  CPF_CONJUGE = :CPF_CONJUGE,'
      '  DATA_NASCIMENTO_CONJUGE = :DATA_NASCIMENTO_CONJUGE,'
      '  PAI_CONJUGE = :PAI_CONJUGE,'
      '  APELIDO_PAI_CONJUGE = :APELIDO_PAI_CONJUGE,'
      '  MAE_CONJUGE = :MAE_CONJUGE,'
      '  APELIDO_MAE_CONJUGE = :APELIDO_MAE_CONJUGE,'
      '  LOCAL_TRABALHO_CONJUGE = :LOCAL_TRABALHO_CONJUGE,'
      '  FUNCAO_CONJUGE = :FUNCAO_CONJUGE,'
      '  TEMPO_SERVICO_CONJUGE = :TEMPO_SERVICO_CONJUGE,'
      '  SALARIO_CONJUGE = :SALARIO_CONJUGE,'
      '  ENDERECO_TRABALHO_CONJUGE = :ENDERECO_TRABALHO_CONJUGE,'
      '  TELEFONE_TRABALHO_CONJUGE = :TELEFONE_TRABALHO_CONJUGE,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NUMERO_SIS_COB = :NUMERO_SIS_COB,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  FORMA_VENDA = :FORMA_VENDA,'
      '  OBS_CLIENTE = :OBS_CLIENTE,'
      '  RECEBE_DIA = :RECEBE_DIA,'
      '  DATA_MOVIDO = :DATA_MOVIDO,'
      '  MOVIDO_USUARIO = :MOVIDO_USUARIO,'
      '  RAZAO_MOVIDO = :RAZAO_MOVIDO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 396
    Top = 76
    object IBDS_INATIVOSCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"INATIVOS"."COD_CLIE"'
    end
    object IBDS_INATIVOSCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"INATIVOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object IBDS_INATIVOSDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Origin = '"INATIVOS"."DATA_CADASTRO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_INATIVOSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"INATIVOS"."NOME"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = '"INATIVOS"."APELIDO"'
      Size = 25
    end
    object IBDS_INATIVOSNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"INATIVOS"."NATURALIDADE"'
      Size = 30
    end
    object IBDS_INATIVOSRG: TIBStringField
      FieldName = 'RG'
      Origin = '"INATIVOS"."RG"'
    end
    object IBDS_INATIVOSCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"INATIVOS"."CPF"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"INATIVOS"."DATA_NASCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_INATIVOSPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"INATIVOS"."PAI"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO_PAI: TIBStringField
      FieldName = 'APELIDO_PAI'
      Origin = '"INATIVOS"."APELIDO_PAI"'
      Size = 25
    end
    object IBDS_INATIVOSMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"INATIVOS"."MAE"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO_MAE: TIBStringField
      FieldName = 'APELIDO_MAE'
      Origin = '"INATIVOS"."APELIDO_MAE"'
      Size = 25
    end
    object IBDS_INATIVOSENDERECO_CLIENTE: TIBStringField
      FieldName = 'ENDERECO_CLIENTE'
      Origin = '"INATIVOS"."ENDERECO_CLIENTE"'
      Size = 50
    end
    object IBDS_INATIVOSTELEFONE_CLIENTE: TIBStringField
      FieldName = 'TELEFONE_CLIENTE'
      Origin = '"INATIVOS"."TELEFONE_CLIENTE"'
    end
    object IBDS_INATIVOSCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"INATIVOS"."CIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"INATIVOS"."BAIRRO"'
      Size = 30
    end
    object IBDS_INATIVOSCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"INATIVOS"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_INATIVOSESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"INATIVOS"."ESTADO_UF"'
      Size = 25
    end
    object IBDS_INATIVOSCASA: TIBStringField
      FieldName = 'CASA'
      Origin = '"INATIVOS"."CASA"'
      FixedChar = True
      Size = 7
    end
    object IBDS_INATIVOSTEMPO_MORADIA: TIBStringField
      FieldName = 'TEMPO_MORADIA'
      Origin = '"INATIVOS"."TEMPO_MORADIA"'
      FixedChar = True
      Size = 10
    end
    object IBDS_INATIVOSPONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"INATIVOS"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBDS_INATIVOSVIZINHOS: TIBStringField
      FieldName = 'VIZINHOS'
      Origin = '"INATIVOS"."VIZINHOS"'
      Size = 51
    end
    object IBDS_INATIVOSLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"INATIVOS"."LOCAL_TRABALHO"'
      Size = 35
    end
    object IBDS_INATIVOSFUNCAO: TIBStringField
      FieldName = 'FUNCAO'
      Origin = '"INATIVOS"."FUNCAO"'
      Size = 25
    end
    object IBDS_INATIVOSSALARIO: TIBBCDField
      FieldName = 'SALARIO'
      Origin = '"INATIVOS"."SALARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"INATIVOS"."TEMPO_SERVICO"'
      FixedChar = True
      Size = 10
    end
    object IBDS_INATIVOSTELEFONE_TRABALHO: TIBStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = '"INATIVOS"."TELEFONE_TRABALHO"'
    end
    object IBDS_INATIVOSENDERECO_TRABALHO: TIBStringField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"INATIVOS"."ENDERECO_TRABALHO"'
      Size = 50
    end
    object IBDS_INATIVOSEMPREGO_ANTERIOR: TIBStringField
      FieldName = 'EMPREGO_ANTERIOR'
      Origin = '"INATIVOS"."EMPREGO_ANTERIOR"'
      Size = 35
    end
    object IBDS_INATIVOSENDERECO_EMPREG_ANT: TIBStringField
      FieldName = 'ENDERECO_EMPREG_ANT'
      Origin = '"INATIVOS"."ENDERECO_EMPREG_ANT"'
      Size = 50
    end
    object IBDS_INATIVOSTELEFONE_EMPREG_ANT: TIBStringField
      FieldName = 'TELEFONE_EMPREG_ANT'
      Origin = '"INATIVOS"."TELEFONE_EMPREG_ANT"'
    end
    object IBDS_INATIVOSAPOSENTADO: TIBStringField
      FieldName = 'APOSENTADO'
      Origin = '"INATIVOS"."APOSENTADO"'
      FixedChar = True
      Size = 3
    end
    object IBDS_INATIVOSBANCO_APOSENTADO: TIBStringField
      FieldName = 'BANCO_APOSENTADO'
      Origin = '"INATIVOS"."BANCO_APOSENTADO"'
      Size = 30
    end
    object IBDS_INATIVOSRECEBE_DIA: TIBStringField
      FieldName = 'RECEBE_DIA'
      Origin = '"INATIVOS"."RECEBE_DIA"'
      Size = 2
    end
    object IBDS_INATIVOSVALOR_PAGAMENTO_APOS: TIBBCDField
      FieldName = 'VALOR_PAGAMENTO_APOS'
      Origin = '"INATIVOS"."VALOR_PAGAMENTO_APOS"'
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = '"INATIVOS"."ESTADO_CIVIL"'
      Size = 25
    end
    object IBDS_INATIVOSCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"INATIVOS"."CONJUGE"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO_CONJUGE: TIBStringField
      FieldName = 'APELIDO_CONJUGE'
      Origin = '"INATIVOS"."APELIDO_CONJUGE"'
      Size = 25
    end
    object IBDS_INATIVOSRG_CONJUGE: TIBStringField
      FieldName = 'RG_CONJUGE'
      Origin = '"INATIVOS"."RG_CONJUGE"'
    end
    object IBDS_INATIVOSCPF_CONJUGE: TIBStringField
      FieldName = 'CPF_CONJUGE'
      Origin = '"INATIVOS"."CPF_CONJUGE"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object IBDS_INATIVOSDATA_NASCIMENTO_CONJUGE: TDateTimeField
      FieldName = 'DATA_NASCIMENTO_CONJUGE'
      Origin = '"INATIVOS"."DATA_NASCIMENTO_CONJUGE"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_INATIVOSPAI_CONJUGE: TIBStringField
      FieldName = 'PAI_CONJUGE'
      Origin = '"INATIVOS"."PAI_CONJUGE"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO_PAI_CONJUGE: TIBStringField
      FieldName = 'APELIDO_PAI_CONJUGE'
      Origin = '"INATIVOS"."APELIDO_PAI_CONJUGE"'
      Size = 25
    end
    object IBDS_INATIVOSMAE_CONJUGE: TIBStringField
      FieldName = 'MAE_CONJUGE'
      Origin = '"INATIVOS"."MAE_CONJUGE"'
      Size = 51
    end
    object IBDS_INATIVOSAPELIDO_MAE_CONJUGE: TIBStringField
      FieldName = 'APELIDO_MAE_CONJUGE'
      Origin = '"INATIVOS"."APELIDO_MAE_CONJUGE"'
      Size = 25
    end
    object IBDS_INATIVOSLOCAL_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'LOCAL_TRABALHO_CONJUGE'
      Origin = '"INATIVOS"."LOCAL_TRABALHO_CONJUGE"'
      Size = 35
    end
    object IBDS_INATIVOSFUNCAO_CONJUGE: TIBStringField
      FieldName = 'FUNCAO_CONJUGE'
      Origin = '"INATIVOS"."FUNCAO_CONJUGE"'
      Size = 25
    end
    object IBDS_INATIVOSTEMPO_SERVICO_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERVICO_CONJUGE'
      Origin = '"INATIVOS"."TEMPO_SERVICO_CONJUGE"'
      FixedChar = True
      Size = 10
    end
    object IBDS_INATIVOSSALARIO_CONJUGE: TIBBCDField
      FieldName = 'SALARIO_CONJUGE'
      Origin = '"INATIVOS"."SALARIO_CONJUGE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSENDERECO_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'ENDERECO_TRABALHO_CONJUGE'
      Origin = '"INATIVOS"."ENDERECO_TRABALHO_CONJUGE"'
      Size = 50
    end
    object IBDS_INATIVOSTELEFONE_TRABALHO_CONJUGE: TIBStringField
      FieldName = 'TELEFONE_TRABALHO_CONJUGE'
      Origin = '"INATIVOS"."TELEFONE_TRABALHO_CONJUGE"'
    end
    object IBDS_INATIVOSNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"INATIVOS"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_INATIVOSNUMERO_SIS_COB: TIBStringField
      FieldName = 'NUMERO_SIS_COB'
      Origin = '"INATIVOS"."NUMERO_SIS_COB"'
      Size = 10
    end
    object IBDS_INATIVOSTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"INATIVOS"."TIPO_VENDA"'
    end
    object IBDS_INATIVOSFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"INATIVOS"."FORMA_VENDA"'
    end
    object IBDS_INATIVOSOBS_CLIENTE: TMemoField
      FieldName = 'OBS_CLIENTE'
      Origin = '"INATIVOS"."OBS_CLIENTE"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_INATIVOSDATA_MOVIDO: TDateTimeField
      FieldName = 'DATA_MOVIDO'
      Origin = '"INATIVOS"."DATA_MOVIDO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_INATIVOSMOVIDO_USUARIO: TIBStringField
      FieldName = 'MOVIDO_USUARIO'
      Origin = '"INATIVOS"."MOVIDO_USUARIO"'
    end
    object IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField
      FieldName = 'RAZAO_MOVIDO'
      Origin = '"INATIVOS"."RAZAO_MOVIDO"'
    end
  end
  object Ds_INATIVOS: TDataSource
    DataSet = IBDS_INATIVOS
    Left = 400
    Top = 128
  end
  object IBDS_VENDAS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_VENDASAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from VENDAS'
      'where'
      '  NUMERO_CONTRATO = :OLD_NUMERO_CONTRATO')
    InsertSQL.Strings = (
      'insert into VENDAS'
      
        '  (COD_VEND, NUMERO_CONTRATO, DATA_VENDA, NOME_CLIENTE, NOME_VEN' +
        'DEDOR, '
      
        '   NOME_MEDICO, CODIGO, CPF, TIPO_VENDA, FORMA_VENDA, SUB_TOTAL,' +
        ' ACRESCIMO, '
      
        '   DESCONTO, VALOR_TOTAL, ARMACAO_COD, ARMACAO_TAMANHO, ARMACAO_' +
        'COR, LONGE_OD_ESF, '
      
        '   LONGE_OD_CIL, LONGE_OD_EIXO, LONGE_OD_DNP, LONGE_OE_ESF, LONG' +
        'E_OE_CIL, '
      
        '   LONGE_OE_EIXO, LONGE_OE_DNP, LONGE_ALTURA_OD, LONGE_ALTURA_OD' +
        '_LENTES, '
      
        '   LONGE_ALTURA_OE, LONGE_ALTURA_OE_LENTES, LONGE_ADICAO, LONGE_' +
        'DP, PERTO_OD_ESF, '
      
        '   PERTO_OD_CIL, PERTO_OD_EIXO, PERTO_OD_DNP, PERTO_OE_ESF, PERT' +
        'O_OE_CIL, '
      
        '   PERTO_OE_EIXO, PERTO_OE_DNP, PERTO_DP, PERTO_LENTES, OBS, OPC' +
        'AO_VENDA)'
      'values'
      
        '  (:COD_VEND, :NUMERO_CONTRATO, :DATA_VENDA, :NOME_CLIENTE, :NOM' +
        'E_VENDEDOR, '
      
        '   :NOME_MEDICO, :CODIGO, :CPF, :TIPO_VENDA, :FORMA_VENDA, :SUB_' +
        'TOTAL, '
      
        '   :ACRESCIMO, :DESCONTO, :VALOR_TOTAL, :ARMACAO_COD, :ARMACAO_T' +
        'AMANHO, '
      
        '   :ARMACAO_COR, :LONGE_OD_ESF, :LONGE_OD_CIL, :LONGE_OD_EIXO, :' +
        'LONGE_OD_DNP, '
      
        '   :LONGE_OE_ESF, :LONGE_OE_CIL, :LONGE_OE_EIXO, :LONGE_OE_DNP, ' +
        ':LONGE_ALTURA_OD, '
      
        '   :LONGE_ALTURA_OD_LENTES, :LONGE_ALTURA_OE, :LONGE_ALTURA_OE_L' +
        'ENTES, '
      
        '   :LONGE_ADICAO, :LONGE_DP, :PERTO_OD_ESF, :PERTO_OD_CIL, :PERT' +
        'O_OD_EIXO, '
      
        '   :PERTO_OD_DNP, :PERTO_OE_ESF, :PERTO_OE_CIL, :PERTO_OE_EIXO, ' +
        ':PERTO_OE_DNP, '
      '   :PERTO_DP, :PERTO_LENTES, :OBS, :OPCAO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_VEND,'
      '  NUMERO_CONTRATO,'
      '  DATA_VENDA,'
      '  NOME_CLIENTE,'
      '  NOME_VENDEDOR,'
      '  NOME_MEDICO,'
      '  CODIGO,'
      '  CPF,'
      '  TIPO_VENDA,'
      '  FORMA_VENDA,'
      '  SUB_TOTAL,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  VALOR_TOTAL,'
      '  ARMACAO_COD,'
      '  ARMACAO_TAMANHO,'
      '  ARMACAO_COR,'
      '  LONGE_OD_ESF,'
      '  LONGE_OD_CIL,'
      '  LONGE_OD_EIXO,'
      '  LONGE_OD_DNP,'
      '  LONGE_OE_ESF,'
      '  LONGE_OE_CIL,'
      '  LONGE_OE_EIXO,'
      '  LONGE_OE_DNP,'
      '  LONGE_ALTURA_OD,'
      '  LONGE_ALTURA_OD_LENTES,'
      '  LONGE_ALTURA_OE,'
      '  LONGE_ALTURA_OE_LENTES,'
      '  LONGE_ADICAO,'
      '  LONGE_DP,'
      '  PERTO_OD_ESF,'
      '  PERTO_OD_CIL,'
      '  PERTO_OD_EIXO,'
      '  PERTO_OD_DNP,'
      '  PERTO_OE_ESF,'
      '  PERTO_OE_CIL,'
      '  PERTO_OE_EIXO,'
      '  PERTO_OE_DNP,'
      '  PERTO_DP,'
      '  PERTO_LENTES,'
      '  OBS,'
      '  OPCAO_VENDA'
      'from VENDAS '
      'where'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO')
    SelectSQL.Strings = (
      'select * from VENDAS')
    ModifySQL.Strings = (
      'update VENDAS'
      'set'
      '  COD_VEND = :COD_VEND,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  DATA_VENDA = :DATA_VENDA,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  NOME_MEDICO = :NOME_MEDICO,'
      '  CODIGO = :CODIGO,'
      '  CPF = :CPF,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  FORMA_VENDA = :FORMA_VENDA,'
      '  SUB_TOTAL = :SUB_TOTAL,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_TOTAL = :VALOR_TOTAL,'
      '  ARMACAO_COD = :ARMACAO_COD,'
      '  ARMACAO_TAMANHO = :ARMACAO_TAMANHO,'
      '  ARMACAO_COR = :ARMACAO_COR,'
      '  LONGE_OD_ESF = :LONGE_OD_ESF,'
      '  LONGE_OD_CIL = :LONGE_OD_CIL,'
      '  LONGE_OD_EIXO = :LONGE_OD_EIXO,'
      '  LONGE_OD_DNP = :LONGE_OD_DNP,'
      '  LONGE_OE_ESF = :LONGE_OE_ESF,'
      '  LONGE_OE_CIL = :LONGE_OE_CIL,'
      '  LONGE_OE_EIXO = :LONGE_OE_EIXO,'
      '  LONGE_OE_DNP = :LONGE_OE_DNP,'
      '  LONGE_ALTURA_OD = :LONGE_ALTURA_OD,'
      '  LONGE_ALTURA_OD_LENTES = :LONGE_ALTURA_OD_LENTES,'
      '  LONGE_ALTURA_OE = :LONGE_ALTURA_OE,'
      '  LONGE_ALTURA_OE_LENTES = :LONGE_ALTURA_OE_LENTES,'
      '  LONGE_ADICAO = :LONGE_ADICAO,'
      '  LONGE_DP = :LONGE_DP,'
      '  PERTO_OD_ESF = :PERTO_OD_ESF,'
      '  PERTO_OD_CIL = :PERTO_OD_CIL,'
      '  PERTO_OD_EIXO = :PERTO_OD_EIXO,'
      '  PERTO_OD_DNP = :PERTO_OD_DNP,'
      '  PERTO_OE_ESF = :PERTO_OE_ESF,'
      '  PERTO_OE_CIL = :PERTO_OE_CIL,'
      '  PERTO_OE_EIXO = :PERTO_OE_EIXO,'
      '  PERTO_OE_DNP = :PERTO_OE_DNP,'
      '  PERTO_DP = :PERTO_DP,'
      '  PERTO_LENTES = :PERTO_LENTES,'
      '  OBS = :OBS,'
      '  OPCAO_VENDA = :OPCAO_VENDA'
      'where'
      '  NUMERO_CONTRATO = :OLD_NUMERO_CONTRATO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 484
    Top = 76
    object IBDS_VENDASCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"VENDAS"."COD_VEND"'
    end
    object IBDS_VENDASNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"VENDAS"."NUMERO_CONTRATO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object IBDS_VENDASDATA_VENDA: TDateTimeField
      FieldName = 'DATA_VENDA'
      Origin = '"VENDAS"."DATA_VENDA"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_VENDASNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDAS"."NOME_VENDEDOR"'
      Size = 25
    end
    object IBDS_VENDASNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"VENDAS"."NOME_CLIENTE"'
      Size = 51
    end
    object IBDS_VENDASCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VENDAS"."CODIGO"'
      Size = 14
    end
    object IBDS_VENDASCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VENDAS"."CPF"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object IBDS_VENDASTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VENDAS"."TIPO_VENDA"'
    end
    object IBDS_VENDASFORMA_VENDA: TIBStringField
      FieldName = 'FORMA_VENDA'
      Origin = '"VENDAS"."FORMA_VENDA"'
    end
    object IBDS_VENDASACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"VENDAS"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_VENDASDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VENDAS"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_VENDASSUB_TOTAL: TIBBCDField
      FieldName = 'SUB_TOTAL'
      Origin = '"VENDAS"."SUB_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_VENDASVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"VENDAS"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_VENDASARMACAO_COD: TIBStringField
      FieldName = 'ARMACAO_COD'
      Origin = '"VENDAS"."ARMACAO_COD"'
      Size = 14
    end
    object IBDS_VENDASARMACAO_TAMANHO: TIBStringField
      FieldName = 'ARMACAO_TAMANHO'
      Origin = '"VENDAS"."ARMACAO_TAMANHO"'
      Size = 14
    end
    object IBDS_VENDASARMACAO_COR: TIBStringField
      FieldName = 'ARMACAO_COR'
      Origin = '"VENDAS"."ARMACAO_COR"'
      Size = 14
    end
    object IBDS_VENDASLONGE_OD_ESF: TIBStringField
      FieldName = 'LONGE_OD_ESF'
      Origin = '"VENDAS"."LONGE_OD_ESF"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OD_CIL: TIBStringField
      FieldName = 'LONGE_OD_CIL'
      Origin = '"VENDAS"."LONGE_OD_CIL"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OD_EIXO: TIBStringField
      FieldName = 'LONGE_OD_EIXO'
      Origin = '"VENDAS"."LONGE_OD_EIXO"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OD_DNP: TIBStringField
      FieldName = 'LONGE_OD_DNP'
      Origin = '"VENDAS"."LONGE_OD_DNP"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OE_ESF: TIBStringField
      FieldName = 'LONGE_OE_ESF'
      Origin = '"VENDAS"."LONGE_OE_ESF"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OE_CIL: TIBStringField
      FieldName = 'LONGE_OE_CIL'
      Origin = '"VENDAS"."LONGE_OE_CIL"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OE_EIXO: TIBStringField
      FieldName = 'LONGE_OE_EIXO'
      Origin = '"VENDAS"."LONGE_OE_EIXO"'
      Size = 10
    end
    object IBDS_VENDASLONGE_OE_DNP: TIBStringField
      FieldName = 'LONGE_OE_DNP'
      Origin = '"VENDAS"."LONGE_OE_DNP"'
      Size = 10
    end
    object IBDS_VENDASLONGE_ALTURA_OD: TIBStringField
      FieldName = 'LONGE_ALTURA_OD'
      Origin = '"VENDAS"."LONGE_ALTURA_OD"'
      Size = 10
    end
    object IBDS_VENDASLONGE_ALTURA_OD_LENTES: TIBStringField
      FieldName = 'LONGE_ALTURA_OD_LENTES'
      Origin = '"VENDAS"."LONGE_ALTURA_OD_LENTES"'
      Size = 10
    end
    object IBDS_VENDASLONGE_ALTURA_OE: TIBStringField
      FieldName = 'LONGE_ALTURA_OE'
      Origin = '"VENDAS"."LONGE_ALTURA_OE"'
      Size = 10
    end
    object IBDS_VENDASLONGE_ALTURA_OE_LENTES: TIBStringField
      FieldName = 'LONGE_ALTURA_OE_LENTES'
      Origin = '"VENDAS"."LONGE_ALTURA_OE_LENTES"'
      Size = 10
    end
    object IBDS_VENDASLONGE_ADICAO: TIBStringField
      FieldName = 'LONGE_ADICAO'
      Origin = '"VENDAS"."LONGE_ADICAO"'
      Size = 10
    end
    object IBDS_VENDASLONGE_DP: TIBStringField
      FieldName = 'LONGE_DP'
      Origin = '"VENDAS"."LONGE_DP"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OD_ESF: TIBStringField
      FieldName = 'PERTO_OD_ESF'
      Origin = '"VENDAS"."PERTO_OD_ESF"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OD_CIL: TIBStringField
      FieldName = 'PERTO_OD_CIL'
      Origin = '"VENDAS"."PERTO_OD_CIL"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OD_EIXO: TIBStringField
      FieldName = 'PERTO_OD_EIXO'
      Origin = '"VENDAS"."PERTO_OD_EIXO"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OD_DNP: TIBStringField
      FieldName = 'PERTO_OD_DNP'
      Origin = '"VENDAS"."PERTO_OD_DNP"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OE_ESF: TIBStringField
      FieldName = 'PERTO_OE_ESF'
      Origin = '"VENDAS"."PERTO_OE_ESF"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OE_CIL: TIBStringField
      FieldName = 'PERTO_OE_CIL'
      Origin = '"VENDAS"."PERTO_OE_CIL"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OE_EIXO: TIBStringField
      FieldName = 'PERTO_OE_EIXO'
      Origin = '"VENDAS"."PERTO_OE_EIXO"'
      Size = 10
    end
    object IBDS_VENDASPERTO_OE_DNP: TIBStringField
      FieldName = 'PERTO_OE_DNP'
      Origin = '"VENDAS"."PERTO_OE_DNP"'
      Size = 10
    end
    object IBDS_VENDASPERTO_DP: TIBStringField
      FieldName = 'PERTO_DP'
      Origin = '"VENDAS"."PERTO_DP"'
      Size = 10
    end
    object IBDS_VENDASPERTO_LENTES: TIBStringField
      FieldName = 'PERTO_LENTES'
      Origin = '"VENDAS"."PERTO_LENTES"'
      Size = 10
    end
    object IBDS_VENDASOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"VENDAS"."OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_VENDASNOME_MEDICO: TIBStringField
      FieldName = 'NOME_MEDICO'
      Origin = '"VENDAS"."NOME_MEDICO"'
      Size = 25
    end
    object IBDS_VENDASOPCAO_VENDA: TIBStringField
      FieldName = 'OPCAO_VENDA'
      Origin = '"VENDAS"."OPCAO_VENDA"'
      Size = 11
    end
  end
  object Ds_VENDAS: TDataSource
    DataSet = IBDS_VENDAS
    Left = 488
    Top = 128
  end
  object Ds_ITEM: TDataSource
    DataSet = IBDS_ITEM
    Left = 560
    Top = 128
  end
  object IBDS_ITEM: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_ITEMAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ITEM'
      'where'
      '  COD_ITEM = :OLD_COD_ITEM')
    InsertSQL.Strings = (
      'insert into ITEM'
      
        '  (COD_ITEM, NUMERO_CONTRATO, COD_PROD, NOME_PRODUTO, DESCRICAO,' +
        ' QUANTIDADE, '
      '   VALOR_UNITARIO, VALOR_TOTAL)'
      'values'
      
        '  (:COD_ITEM, :NUMERO_CONTRATO, :COD_PROD, :NOME_PRODUTO, :DESCR' +
        'ICAO, :QUANTIDADE, '
      '   :VALOR_UNITARIO, :VALOR_TOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITEM,'
      '  NUMERO_CONTRATO,'
      '  COD_PROD,'
      '  NOME_PRODUTO,'
      '  DESCRICAO,'
      '  QUANTIDADE,'
      '  VALOR_UNITARIO,'
      '  VALOR_TOTAL'
      'from ITEM '
      'where'
      '  COD_ITEM = :COD_ITEM')
    SelectSQL.Strings = (
      'select * from ITEM')
    ModifySQL.Strings = (
      'update ITEM'
      'set'
      '  COD_ITEM = :COD_ITEM,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  COD_PROD = :COD_PROD,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALOR_UNITARIO = :VALOR_UNITARIO,'
      '  VALOR_TOTAL = :VALOR_TOTAL'
      'where'
      '  COD_ITEM = :OLD_COD_ITEM')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 556
    Top = 76
    object IBDS_ITEMCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"ITEM"."COD_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_ITEMNUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"ITEM"."NUMERO_CONTRATO"'
      Required = True
      Size = 10
    end
    object IBDS_ITEMCOD_PROD: TIBStringField
      FieldName = 'COD_PROD'
      Origin = '"ITEM"."COD_PROD"'
      Required = True
      Size = 14
    end
    object IBDS_ITEMNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"ITEM"."NOME_PRODUTO"'
      Size = 30
    end
    object IBDS_ITEMDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ITEM"."DESCRICAO"'
      Size = 45
    end
    object IBDS_ITEMQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ITEM"."QUANTIDADE"'
    end
    object IBDS_ITEMVALOR_UNITARIO: TIBBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = '"ITEM"."VALOR_UNITARIO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ITEMVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = '"ITEM"."VALOR_TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object IBQ_CODVEND: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_VEND) from VENDAS')
    Left = 488
    Top = 192
  end
  object IBQ_CODITEM: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_ITEM) from ITEM')
    Left = 560
    Top = 192
  end
  object IBDS_CARNE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CARNEAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CARNE'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    InsertSQL.Strings = (
      'insert into CARNE'
      
        '  (COD_CARN, NUMERO_DOC, NUMERO_CONTRATO, NOME_CLIENTE, CODIGO, ' +
        'DATA_VENCIMENTO, '
      
        '   QUANT_PARCELAS, NUMERO_PARCELA, SITUACAO_PARCELA, DATA_PAGAME' +
        'NTO, VALOR_PARCELA, '
      
        '   ACRESCIMO, DESCONTO, VALOR_APAGAR, VALOR_PAGO, VALOR_PENDENTE' +
        ', TOTAL_PAGO)'
      'values'
      
        '  (:COD_CARN, :NUMERO_DOC, :NUMERO_CONTRATO, :NOME_CLIENTE, :COD' +
        'IGO, :DATA_VENCIMENTO, '
      
        '   :QUANT_PARCELAS, :NUMERO_PARCELA, :SITUACAO_PARCELA, :DATA_PA' +
        'GAMENTO, '
      
        '   :VALOR_PARCELA, :ACRESCIMO, :DESCONTO, :VALOR_APAGAR, :VALOR_' +
        'PAGO, :VALOR_PENDENTE, '
      '   :TOTAL_PAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CARN,'
      '  NUMERO_DOC,'
      '  NUMERO_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  DATA_VENCIMENTO,'
      '  QUANT_PARCELAS,'
      '  NUMERO_PARCELA,'
      '  SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO,'
      '  VALOR_PARCELA,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  VALOR_APAGAR,'
      '  VALOR_PAGO,'
      '  VALOR_PENDENTE,'
      '  TOTAL_PAGO'
      'from CARNE '
      'where'
      '  COD_CARN = :COD_CARN')
    SelectSQL.Strings = (
      'select * from CARNE')
    ModifySQL.Strings = (
      'update CARNE'
      'set'
      '  COD_CARN = :COD_CARN,'
      '  NUMERO_DOC = :NUMERO_DOC,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  QUANT_PARCELAS = :QUANT_PARCELAS,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  SITUACAO_PARCELA = :SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_PARCELA = :VALOR_PARCELA,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VALOR_PENDENTE = :VALOR_PENDENTE,'
      '  TOTAL_PAGO = :TOTAL_PAGO'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 244
    Top = 300
    object IBDS_CARNECOD_CARN: TIntegerField
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CARNENUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBDS_CARNENUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARNE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_CARNENOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBDS_CARNECODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 14
    end
    object IBDS_CARNEACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CARNE"."ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CARNE"."DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARNE"."VALOR_PARCELA"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBDS_CARNEQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARNE"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBDS_CARNENUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_CARNESITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBDS_CARNEDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBDS_CARNETOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_APAGAR: TIBBCDField
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_CARNE: TDataSource
    DataSet = IBDS_CARNE
    Left = 248
    Top = 360
  end
  object IBQ_CODCARN: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CARN) from CARNE')
    Left = 256
    Top = 408
  end
  object Ds_AENTRADA: TDataSource
    DataSet = IBDS_AENTRADA
    Left = 656
    Top = 128
  end
  object IBDS_AENTRADA: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_AENTRADAAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from AENTRADA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AENTRADA'
      
        '  (ID, DATA, HISTORICO, NUMERO_CONTRATO, NUMERO_PARCELA, ND_SEU_' +
        'NUMERO, '
      '   NOSSO_NUMERO, VALOR)'
      'values'
      
        '  (:ID, :DATA, :HISTORICO, :NUMERO_CONTRATO, :NUMERO_PARCELA, :N' +
        'D_SEU_NUMERO, '
      '   :NOSSO_NUMERO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  HISTORICO,'
      '  NUMERO_CONTRATO,'
      '  NUMERO_PARCELA,'
      '  ND_SEU_NUMERO,'
      '  NOSSO_NUMERO,'
      '  VALOR'
      'from AENTRADA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from AENTRADA'
      'order by DATA')
    ModifySQL.Strings = (
      'update AENTRADA'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  ND_SEU_NUMERO = :ND_SEU_NUMERO,'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  VALOR = :VALOR'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 652
    Top = 76
    object IBDS_AENTRADAID: TIntegerField
      FieldName = 'ID'
      Origin = '"AENTRADA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_AENTRADADATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"AENTRADA"."DATA"'
      Required = True
    end
    object IBDS_AENTRADAHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"AENTRADA"."HISTORICO"'
      Size = 50
    end
    object IBDS_AENTRADANUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"AENTRADA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_AENTRADANUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"AENTRADA"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_AENTRADAND_SEU_NUMERO: TIBStringField
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"AENTRADA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object IBDS_AENTRADANOSSO_NUMERO: TIBStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"AENTRADA"."NOSSO_NUMERO"'
      Size = 17
    end
    object IBDS_AENTRADAVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"AENTRADA"."VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_IDAEntrada: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from AENTRADA')
    Left = 656
    Top = 184
  end
  object IBDS_VENDEDOR: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_VENDEDORAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from VENDEDOR'
      'where'
      '  COD_VEDR = :OLD_COD_VEDR')
    InsertSQL.Strings = (
      'insert into VENDEDOR'
      '  (COD_VEDR, COD_VENDEDOR, NOME_VENDEDOR)'
      'values'
      '  (:COD_VEDR, :COD_VENDEDOR, :NOME_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_VEDR,'
      '  COD_VENDEDOR,'
      '  NOME_VENDEDOR'
      'from VENDEDOR '
      'where'
      '  COD_VEDR = :COD_VEDR')
    SelectSQL.Strings = (
      'select * from VENDEDOR')
    ModifySQL.Strings = (
      'update VENDEDOR'
      'set'
      '  COD_VEDR = :COD_VEDR,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR'
      'where'
      '  COD_VEDR = :OLD_COD_VEDR')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 44
    Top = 300
    object IBDS_VENDEDORCOD_VEDR: TIntegerField
      FieldName = 'COD_VEDR'
      Origin = '"VENDEDOR"."COD_VEDR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_VENDEDORCOD_VENDEDOR: TIBStringField
      FieldName = 'COD_VENDEDOR'
      Origin = '"VENDEDOR"."COD_VENDEDOR"'
      Size = 10
    end
    object IBDS_VENDEDORNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VENDEDOR"."NOME_VENDEDOR"'
      Size = 25
    end
  end
  object Ds_VENDEDOR: TDataSource
    DataSet = IBDS_VENDEDOR
    Left = 48
    Top = 352
  end
  object IBQuery_CODVEDR: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_VEDR) from VENDEDOR')
    Left = 40
    Top = 408
  end
  object IBDS_MEDICO: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_MEDICOAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from MEDICO'
      'where'
      '  COD_MEDI = :OLD_COD_MEDI')
    InsertSQL.Strings = (
      'insert into MEDICO'
      '  (COD_MEDI, NOME_MEDICO, TELEFONE_MEDICO, EMAIL_MEDIGO)'
      'values'
      '  (:COD_MEDI, :NOME_MEDICO, :TELEFONE_MEDICO, :EMAIL_MEDIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_MEDI,'
      '  NOME_MEDICO,'
      '  TELEFONE_MEDICO,'
      '  EMAIL_MEDIGO'
      'from MEDICO '
      'where'
      '  COD_MEDI = :COD_MEDI')
    SelectSQL.Strings = (
      'select * from MEDICO')
    ModifySQL.Strings = (
      'update MEDICO'
      'set'
      '  COD_MEDI = :COD_MEDI,'
      '  NOME_MEDICO = :NOME_MEDICO,'
      '  TELEFONE_MEDICO = :TELEFONE_MEDICO,'
      '  EMAIL_MEDIGO = :EMAIL_MEDIGO'
      'where'
      '  COD_MEDI = :OLD_COD_MEDI')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 148
    Top = 300
    object IBDS_MEDICOCOD_MEDI: TIntegerField
      FieldName = 'COD_MEDI'
      Origin = '"MEDICO"."COD_MEDI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_MEDICONOME_MEDICO: TIBStringField
      FieldName = 'NOME_MEDICO'
      Origin = '"MEDICO"."NOME_MEDICO"'
      Size = 25
    end
    object IBDS_MEDICOTELEFONE_MEDICO: TIBStringField
      FieldName = 'TELEFONE_MEDICO'
      Origin = '"MEDICO"."TELEFONE_MEDICO"'
    end
    object IBDS_MEDICOEMAIL_MEDIGO: TIBStringField
      FieldName = 'EMAIL_MEDIGO'
      Origin = '"MEDICO"."EMAIL_MEDIGO"'
      Size = 50
    end
  end
  object Ds_MEDICO: TDataSource
    DataSet = IBDS_MEDICO
    Left = 144
    Top = 352
  end
  object IBQuery_CODMEDI: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_MEDI) from MEDICO')
    Left = 144
    Top = 408
  end
  object IBDS_CHEQUE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CHEQUEAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CHEQUE'
      'where'
      '  COD_CHEQ = :OLD_COD_CHEQ')
    InsertSQL.Strings = (
      'insert into CHEQUE'
      
        '  (COD_CHEQ, NUMERO_CONTRATO, NOME_CLIENTE, CODIGO, DATA_VENCIME' +
        'NTO, QUANT_PARCELAS, '
      
        '   NUMERO_PARCELA, SITUACAO_PARCELA, DATA_PAGAMENTO, VALOR_PARCE' +
        'LA, ACRESCIMO, '
      
        '   DESCONTO, VALOR_APAGAR, VALOR_PAGO, VALOR_PENDENTE, TOTAL_PAG' +
        'O)'
      'values'
      
        '  (:COD_CHEQ, :NUMERO_CONTRATO, :NOME_CLIENTE, :CODIGO, :DATA_VE' +
        'NCIMENTO, '
      
        '   :QUANT_PARCELAS, :NUMERO_PARCELA, :SITUACAO_PARCELA, :DATA_PA' +
        'GAMENTO, '
      
        '   :VALOR_PARCELA, :ACRESCIMO, :DESCONTO, :VALOR_APAGAR, :VALOR_' +
        'PAGO, :VALOR_PENDENTE, '
      '   :TOTAL_PAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CHEQ,'
      '  NUMERO_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  DATA_VENCIMENTO,'
      '  QUANT_PARCELAS,'
      '  NUMERO_PARCELA,'
      '  SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO,'
      '  VALOR_PARCELA,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  VALOR_APAGAR,'
      '  VALOR_PAGO,'
      '  VALOR_PENDENTE,'
      '  TOTAL_PAGO'
      'from CHEQUE '
      'where'
      '  COD_CHEQ = :COD_CHEQ')
    SelectSQL.Strings = (
      'select * from CHEQUE')
    ModifySQL.Strings = (
      'update CHEQUE'
      'set'
      '  COD_CHEQ = :COD_CHEQ,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  QUANT_PARCELAS = :QUANT_PARCELAS,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  SITUACAO_PARCELA = :SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_PARCELA = :VALOR_PARCELA,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VALOR_PENDENTE = :VALOR_PENDENTE,'
      '  TOTAL_PAGO = :TOTAL_PAGO'
      'where'
      '  COD_CHEQ = :OLD_COD_CHEQ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 356
    Top = 300
    object IBDS_CHEQUECOD_CHEQ: TIntegerField
      FieldName = 'COD_CHEQ'
      Origin = '"CHEQUE"."COD_CHEQ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CHEQUENUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CHEQUE"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_CHEQUENOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CHEQUE"."NOME_CLIENTE"'
      Size = 51
    end
    object IBDS_CHEQUECODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CHEQUE"."CODIGO"'
      Size = 14
    end
    object IBDS_CHEQUEVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CHEQUE"."VALOR_PARCELA"'
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUEDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CHEQUE"."DATA_VENCIMENTO"'
    end
    object IBDS_CHEQUEQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CHEQUE"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBDS_CHEQUENUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CHEQUE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_CHEQUESITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CHEQUE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBDS_CHEQUEDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CHEQUE"."DATA_PAGAMENTO"'
    end
    object IBDS_CHEQUEACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CHEQUE"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUEDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CHEQUE"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUEVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CHEQUE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUEVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CHEQUE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUETOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CHEQUE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CHEQUEVALOR_APAGAR: TIBBCDField
      FieldName = 'VALOR_APAGAR'
      Origin = '"CHEQUE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_CHEQUE: TDataSource
    DataSet = IBDS_CHEQUE
    Left = 360
    Top = 352
  end
  object IBQuery_CODCHEQ: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CHEQ) from CHEQUE')
    Left = 360
    Top = 408
  end
  object IBDS_CARTAO: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CARTAOAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CARTAO'
      'where'
      '  COD_CART = :OLD_COD_CART')
    InsertSQL.Strings = (
      'insert into CARTAO'
      
        '  (COD_CART, NUMERO_CONTRATO, NOME_CLIENTE, CODIGO, DATA_VENCIME' +
        'NTO, QUANT_PARCELAS, '
      
        '   NUMERO_PARCELA, SITUACAO_PARCELA, DATA_PAGAMENTO, VALOR_PARCE' +
        'LA, ACRESCIMO, '
      
        '   DESCONTO, VALOR_APAGAR, VALOR_PAGO, VALOR_PENDENTE, TOTAL_PAG' +
        'O)'
      'values'
      
        '  (:COD_CART, :NUMERO_CONTRATO, :NOME_CLIENTE, :CODIGO, :DATA_VE' +
        'NCIMENTO, '
      
        '   :QUANT_PARCELAS, :NUMERO_PARCELA, :SITUACAO_PARCELA, :DATA_PA' +
        'GAMENTO, '
      
        '   :VALOR_PARCELA, :ACRESCIMO, :DESCONTO, :VALOR_APAGAR, :VALOR_' +
        'PAGO, :VALOR_PENDENTE, '
      '   :TOTAL_PAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CART,'
      '  NUMERO_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  DATA_VENCIMENTO,'
      '  QUANT_PARCELAS,'
      '  NUMERO_PARCELA,'
      '  SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO,'
      '  VALOR_PARCELA,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  VALOR_APAGAR,'
      '  VALOR_PAGO,'
      '  VALOR_PENDENTE,'
      '  TOTAL_PAGO'
      'from CARTAO '
      'where'
      '  COD_CART = :COD_CART')
    SelectSQL.Strings = (
      'select * from CARTAO')
    ModifySQL.Strings = (
      'update CARTAO'
      'set'
      '  COD_CART = :COD_CART,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  QUANT_PARCELAS = :QUANT_PARCELAS,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  SITUACAO_PARCELA = :SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_PARCELA = :VALOR_PARCELA,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VALOR_PENDENTE = :VALOR_PENDENTE,'
      '  TOTAL_PAGO = :TOTAL_PAGO'
      'where'
      '  COD_CART = :OLD_COD_CART')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 452
    Top = 300
    object IBDS_CARTAOCOD_CART: TIntegerField
      FieldName = 'COD_CART'
      Origin = '"CARTAO"."COD_CART"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CARTAONUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"CARTAO"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_CARTAONOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARTAO"."NOME_CLIENTE"'
      Size = 51
    end
    object IBDS_CARTAOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARTAO"."CODIGO"'
      Size = 14
    end
    object IBDS_CARTAOVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"CARTAO"."VALOR_PARCELA"'
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAODATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARTAO"."DATA_VENCIMENTO"'
    end
    object IBDS_CARTAOQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"CARTAO"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBDS_CARTAONUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARTAO"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_CARTAOSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARTAO"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBDS_CARTAODATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARTAO"."DATA_PAGAMENTO"'
    end
    object IBDS_CARTAOACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"CARTAO"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAODESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CARTAO"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAOVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARTAO"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAOVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARTAO"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAOTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARTAO"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARTAOVALOR_APAGAR: TIBBCDField
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARTAO"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_CARTAO: TDataSource
    DataSet = IBDS_CARTAO
    Left = 456
    Top = 352
  end
  object IBQuery_CODCART: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CART) from CARTAO')
    Left = 464
    Top = 408
  end
  object IBDS_BOLETO: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_BOLETOAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from BOLETO'
      'where'
      '  COD_BOLE = :OLD_COD_BOLE')
    InsertSQL.Strings = (
      'insert into BOLETO'
      
        '  (COD_BOLE, NUMERO_CONTRATO, NOME_CLIENTE, CODIGO, DATA_VENCIME' +
        'NTO, QUANT_PARCELAS, '
      
        '   NUMERO_PARCELA, SITUACAO_PARCELA, DATA_PAGAMENTO, VALOR_PARCE' +
        'LA, ACRESCIMO, '
      
        '   DESCONTO, VALOR_APAGAR, VALOR_PAGO, VALOR_PENDENTE, TOTAL_PAG' +
        'O)'
      'values'
      
        '  (:COD_BOLE, :NUMERO_CONTRATO, :NOME_CLIENTE, :CODIGO, :DATA_VE' +
        'NCIMENTO, '
      
        '   :QUANT_PARCELAS, :NUMERO_PARCELA, :SITUACAO_PARCELA, :DATA_PA' +
        'GAMENTO, '
      
        '   :VALOR_PARCELA, :ACRESCIMO, :DESCONTO, :VALOR_APAGAR, :VALOR_' +
        'PAGO, :VALOR_PENDENTE, '
      '   :TOTAL_PAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_BOLE,'
      '  NUMERO_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  DATA_VENCIMENTO,'
      '  QUANT_PARCELAS,'
      '  NUMERO_PARCELA,'
      '  SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO,'
      '  VALOR_PARCELA,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  VALOR_APAGAR,'
      '  VALOR_PAGO,'
      '  VALOR_PENDENTE,'
      '  TOTAL_PAGO'
      'from BOLETO '
      'where'
      '  COD_BOLE = :COD_BOLE')
    SelectSQL.Strings = (
      'select * from BOLETO')
    ModifySQL.Strings = (
      'update BOLETO'
      'set'
      '  COD_BOLE = :COD_BOLE,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  QUANT_PARCELAS = :QUANT_PARCELAS,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  SITUACAO_PARCELA = :SITUACAO_PARCELA,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_PARCELA = :VALOR_PARCELA,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  DESCONTO = :DESCONTO,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VALOR_PENDENTE = :VALOR_PENDENTE,'
      '  TOTAL_PAGO = :TOTAL_PAGO'
      'where'
      '  COD_BOLE = :OLD_COD_BOLE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 556
    Top = 300
    object IBDS_BOLETOCOD_BOLE: TIntegerField
      FieldName = 'COD_BOLE'
      Origin = '"BOLETO"."COD_BOLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_BOLETONUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"BOLETO"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_BOLETONOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"BOLETO"."NOME_CLIENTE"'
      Size = 51
    end
    object IBDS_BOLETOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"BOLETO"."CODIGO"'
      Size = 14
    end
    object IBDS_BOLETOVALOR_PARCELA: TIBBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = '"BOLETO"."VALOR_PARCELA"'
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETODATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"BOLETO"."DATA_VENCIMENTO"'
    end
    object IBDS_BOLETOQUANT_PARCELAS: TIBStringField
      FieldName = 'QUANT_PARCELAS'
      Origin = '"BOLETO"."QUANT_PARCELAS"'
      Size = 5
    end
    object IBDS_BOLETONUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"BOLETO"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_BOLETOSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"BOLETO"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBDS_BOLETODATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"BOLETO"."DATA_PAGAMENTO"'
    end
    object IBDS_BOLETOACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = '"BOLETO"."ACRESCIMO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETODESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BOLETO"."DESCONTO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETOVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BOLETO"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETOVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"BOLETO"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETOTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"BOLETO"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_BOLETOVALOR_APAGAR: TIBBCDField
      FieldName = 'VALOR_APAGAR'
      Origin = '"BOLETO"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_BOLETO: TDataSource
    DataSet = IBDS_BOLETO
    Left = 560
    Top = 352
  end
  object IBQuery_CODBOLE: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_BOLE) from BOLETO')
    Left = 568
    Top = 408
  end
  object IBDS_CIDADES: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CIDADES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CIDADES'
      '  (CODIGO, NOME_CID, CEP_CID, ESTADO_UF, TIPO)'
      'values'
      '  (:CODIGO, :NOME_CID, :CEP_CID, :ESTADO_UF, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME_CID,'
      '  CEP_CID,'
      '  ESTADO_UF,'
      '  TIPO'
      'from CIDADES '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from CIDADES')
    ModifySQL.Strings = (
      'update CIDADES'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME_CID = :NOME_CID,'
      '  CEP_CID = :CEP_CID,'
      '  ESTADO_UF = :ESTADO_UF,'
      '  TIPO = :TIPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 660
    Top = 300
    object IBDS_CIDADESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CIDADESNOME_CID: TIBStringField
      FieldName = 'NOME_CID'
      Origin = '"CIDADES"."NOME_CID"'
      Size = 25
    end
    object IBDS_CIDADESCEP_CID: TIBStringField
      FieldName = 'CEP_CID'
      Origin = '"CIDADES"."CEP_CID"'
      Size = 10
    end
    object IBDS_CIDADESESTADO_UF: TIBStringField
      FieldName = 'ESTADO_UF'
      Origin = '"CIDADES"."ESTADO_UF"'
      Size = 24
    end
    object IBDS_CIDADESTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CIDADES"."TIPO"'
      Size = 1
    end
  end
  object Ds_CIDADES: TDataSource
    DataSet = IBDS_CIDADES
    Left = 664
    Top = 352
  end
  object IBDS_PRODUTO: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      '  (CODIGO, DESCRICAO, GRUPO, FORNECEDOR)'
      'values'
      '  (:CODIGO, :DESCRICAO, :GRUPO, :FORNECEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  GRUPO,'
      '  FORNECEDOR'
      'from PRODUTO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from PRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  GRUPO = :GRUPO,'
      '  FORNECEDOR = :FORNECEDOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 740
    Top = 300
    object IBDS_PRODUTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_PRODUTODESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 45
    end
    object IBDS_PRODUTOGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"PRODUTO"."GRUPO"'
    end
    object IBDS_PRODUTOFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"PRODUTO"."FORNECEDOR"'
    end
  end
  object Ds_PRODUTO: TDataSource
    DataSet = IBDS_PRODUTO
    Left = 744
    Top = 352
  end
  object Ds_BENTRADA: TDataSource
    DataSet = IBDS_BENTRADA
    Left = 752
    Top = 128
  end
  object IBDS_BENTRADA: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_BENTRADAAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from BENTRADA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into BENTRADA'
      
        '  (ID, DATA, HISTORICO, NUMERO_CONTRATO, NUMERO_PARCELA, ND_SEU_' +
        'NUMERO, '
      '   NOSSO_NUMERO, VALOR)'
      'values'
      
        '  (:ID, :DATA, :HISTORICO, :NUMERO_CONTRATO, :NUMERO_PARCELA, :N' +
        'D_SEU_NUMERO, '
      '   :NOSSO_NUMERO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  HISTORICO,'
      '  NUMERO_CONTRATO,'
      '  NUMERO_PARCELA,'
      '  ND_SEU_NUMERO,'
      '  NOSSO_NUMERO,'
      '  VALOR'
      'from BENTRADA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from BENTRADA'
      'order by DATA')
    ModifySQL.Strings = (
      'update BENTRADA'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  ND_SEU_NUMERO = :ND_SEU_NUMERO,'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  VALOR = :VALOR'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 748
    Top = 76
    object IBDS_BENTRADAID: TIntegerField
      FieldName = 'ID'
      Origin = '"BENTRADA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_BENTRADADATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"BENTRADA"."DATA"'
      Required = True
    end
    object IBDS_BENTRADAHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"BENTRADA"."HISTORICO"'
      Size = 50
    end
    object IBDS_BENTRADANUMERO_CONTRATO: TIBStringField
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"BENTRADA"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_BENTRADANUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"BENTRADA"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_BENTRADAND_SEU_NUMERO: TIBStringField
      FieldName = 'ND_SEU_NUMERO'
      Origin = '"BENTRADA"."ND_SEU_NUMERO"'
      Size = 17
    end
    object IBDS_BENTRADANOSSO_NUMERO: TIBStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BENTRADA"."NOSSO_NUMERO"'
      Size = 17
    end
    object IBDS_BENTRADAVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BENTRADA"."VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_IDBEntrada: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (ID) from BENTRADA')
    Left = 752
    Top = 184
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIE,'
      '  CODIGO,'
      '  DATA_CADASTRO,'
      '  NOME,'
      '  APELIDO,'
      '  NATURALIDADE,'
      '  RG,'
      '  CPF,'
      '  DATA_NASCIMENTO,'
      '  PAI,'
      '  APELIDO_PAI,'
      '  MAE,'
      '  APELIDO_MAE,'
      '  ENDERECO_CLIENTE,'
      '  TELEFONE_CLIENTE,'
      '  CIDADE,'
      '  BAIRRO,'
      '  CEP,'
      '  ESTADO_UF,'
      '  CASA,'
      '  TEMPO_MORADIA,'
      '  PONTO_REFERENCIA,'
      '  VIZINHOS,'
      '  LOCAL_TRABALHO,'
      '  FUNCAO,'
      '  SALARIO,'
      '  TEMPO_SERVICO,'
      '  TELEFONE_TRABALHO,'
      '  ENDERECO_TRABALHO,'
      '  EMPREGO_ANTERIOR,'
      '  ENDERECO_EMPREG_ANT,'
      '  TELEFONE_EMPREG_ANT,'
      '  APOSENTADO,'
      '  BANCO_APOSENTADO,'
      '  VALOR_PAGAMENTO_APOS,'
      '  ESTADO_CIVIL,'
      '  CONJUGE,'
      '  APELIDO_CONJUGE,'
      '  RG_CONJUGE,'
      '  CPF_CONJUGE,'
      '  DATA_NASCIMENTO_CONJUGE,'
      '  PAI_CONJUGE,'
      '  APELIDO_PAI_CONJUGE,'
      '  MAE_CONJUGE,'
      '  APELIDO_MAE_CONJUGE,'
      '  LOCAL_TRABALHO_CONJUGE,'
      '  FUNCAO_CONJUGE,'
      '  TEMPO_SERVICO_CONJUGE,'
      '  SALARIO_CONJUGE,'
      '  ENDERECO_TRABALHO_CONJUGE,'
      '  TELEFONE_TRABALHO_CONJUGE,'
      '  NUMERO_CONTRATO,'
      '  NUMERO_SIS_COB,'
      '  TIPO_VENDA,'
      '  FORMA_VENDA,'
      '  OBS_CLIENTE,'
      '  RECEBE_DIA'
      'from CLIENTES '
      'where'
      '  MAX = :MAX')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  MAX = :MAX'
      'where'
      '  MAX = :OLD_MAX')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      '  (MAX)'
      'values'
      '  (:MAX)')
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  MAX = :OLD_MAX')
    Left = 216
    Top = 240
  end
  object IBConfigService: TIBConfigService
    LoginPrompt = False
    TraceFlags = []
    Left = 216
    Top = 8
  end
  object IBDS_SPC: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_SPCAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SPC'
      'where'
      '  COD_SPC = :OLD_COD_SPC')
    InsertSQL.Strings = (
      'insert into SPC'
      '  (COD_SPC, CODIGO, NUMERO_CONTRATO, NOME, CPF)'
      'values'
      '  (:COD_SPC, :CODIGO, :NUMERO_CONTRATO, :NOME, :CPF)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_SPC,'
      '  CODIGO,'
      '  NUMERO_CONTRATO,'
      '  NOME,'
      '  CPF'
      'from SPC '
      'where'
      '  COD_SPC = :COD_SPC')
    SelectSQL.Strings = (
      'select * from SPC')
    ModifySQL.Strings = (
      'update SPC'
      'set'
      '  COD_SPC = :COD_SPC,'
      '  CODIGO = :CODIGO,'
      '  NUMERO_CONTRATO = :NUMERO_CONTRATO,'
      '  NOME = :NOME,'
      '  CPF = :CPF'
      'where'
      '  COD_SPC = :OLD_COD_SPC')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 44
    Top = 196
    object IBDS_SPCCOD_SPC: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_SPC'
      Origin = '"SPC"."COD_SPC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDS_SPCCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'CODIGO'
      Origin = '"SPC"."CODIGO"'
      Size = 14
    end
    object IBDS_SPCNUMERO_CONTRATO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      DisplayWidth = 12
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"SPC"."NUMERO_CONTRATO"'
      Size = 10
    end
    object IBDS_SPCNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 107
      FieldName = 'NOME'
      Origin = '"SPC"."NOME"'
      Size = 51
    end
    object IBDS_SPCCPF: TIBStringField
      Alignment = taCenter
      DisplayWidth = 18
      FieldName = 'CPF'
      Origin = '"SPC"."CPF"'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
  end
  object Ds_SPC: TDataSource
    DataSet = IBDS_SPC
    Left = 112
    Top = 200
  end
  object IBQuery_CODSPC: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_SPC) from SPC')
    Left = 80
    Top = 248
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=104CAIXA;Persist Security Info=True;' +
      'User ID=admin;Data Source=Banco de dados MS Access;Mode=Read;Ext' +
      'ended Properties="DSN=cobcaixa;DBQ=c:\CAIXA\CobCAIXA\BDCOBCAIXA.' +
      'MDB;DriverId=281;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;' +
      'PWD=104CAIXA;UID=admin;"'
    LoginPrompt = False
    Mode = cmRead
    Left = 360
    Top = 8
  end
end
