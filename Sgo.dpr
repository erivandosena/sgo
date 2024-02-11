program Sgo;

uses
  Forms,
  Windows,
  Dialogs,
  UnPrincipal in 'UnPrincipal.pas' {FrmPrincipal},
  UnDm in 'UnDm.pas' {Dm: TDataModule},
  UnClientes in 'UnClientes.pas' {FrmClientes},
  UnBackup in 'UnBackup.pas' {FrmBackup},
  UnSenha in 'UnSenha.pas' {FrmSenha},
  UnUsuarios in 'UnUsuarios.pas' {FrmUsuarios},
  UnEmpresa in 'UnEmpresa.pas' {FrmEmpresa},
  UnProdutos in 'UnProdutos.pas' {FrmProdutos},
  UnLocalizar in 'UnLocalizar.pas' {FrmLocalizar},
  UnCaixa in 'UnCaixa.pas' {FrmCaixa},
  UnFaturas in 'UnFaturas.pas' {FrmFaturas},
  UnPreview in 'UnPreview.pas' {FrmPreview},
  UnFluxo in 'UnFluxo.pas' {FrmFluxo},
  UnDmFluxo in 'UnDmFluxo.pas' {DmFluxo: TDataModule},
  UnRelFluxo in 'UnRelFluxo.pas' {FrmRelFluxo},
  UnRelRecibo in 'UnRelRecibo.pas' {FrmRelRecibo},
  UnRelAltentica in 'UnRelAltentica.pas' {FrmRelAltentica},
  UnRelEtiquetaProd in 'UnRelEtiquetaProd.pas' {FrmRelEtiquetaProd},
  UnVendedor in 'UnVendedor.pas' {FrmVendedor},
  UnMedico in 'UnMedico.pas' {FrmMedico},
  UnRelComprovante in 'UnRelComprovante.pas' {FrmRelComprovante},
  UnRelCarne in 'UnRelCarne.pas' {FrmRelCarne},
  UnEncrypt in 'UnEncrypt.pas',
  UnRelProdutos in 'UnRelProdutos.pas' {FrmRelProdutos},
  UnReimpressao in 'UnReimpressao.pas' {FrmReimpressao},
  UnRelReimprimirCarne in 'UnRelReimprimirCarne.pas' {FrmRelReimprimirCarne},
  UnReimpComp in 'UnReimpComp.pas' {FrmReimpComp},
  UnRelReimpComp in 'UnRelReimpComp.pas' {FrmRelReimpComp},
  UnAniversariantes in 'UnAniversariantes.pas' {FrmAniversariantes},
  UnRelCartaAniv in 'UnRelCartaAniv.pas' {FrmRelCartaAniv},
  UnRelCartCob in 'UnRelCartCob.pas' {FrmRelCartCob},
  UnAbertura in 'UnAbertura.pas' {FrmAbertura},
  UnRelReciboVA in 'UnRelReciboVA.pas' {FrmRelReciboVA},
  UnCaixaOutrasEntradas in 'UnCaixaOutrasEntradas.pas' {FrmCaixaOutrasEntradas},
  UnCaixaEntrada in 'UnCaixaEntrada.pas' {FrmCaixaEntrada},
  UnCaixaSaida in 'UnCaixaSaida.pas' {FrmCaixaSaida},
  UnCaixaVenda in 'UnCaixaVenda.pas' {FrmCaixaVenda},
  UnFrmDataGeral in 'UnFrmDataGeral.pas' {FrmDataGeral},
  UnBaixa in 'UnBaixa.pas' {FrmBaixa},
  UnBaixaFinanciamento in 'UnBaixaFinanciamento.pas' {FrmBaixaFinanciamento},
  UnRelFluxoB in 'UnRelFluxoB.pas' {FrmRelFluxoB},
  UnFluxoB in 'UnFluxoB.pas' {FrmFluxoB},
  UnCaixaB in 'UnCaixaB.pas' {FrmCaixaB},
  UnCaixaOutrasEntradasB in 'UnCaixaOutrasEntradasB.pas' {FrmCaixaOutrasEntradasB},
  UnCaixaSaidaB in 'UnCaixaSaidaB.pas' {FrmCaixaSaidaB},
  UnSPC in 'UnSPC.pas' {FrmSPC},
  UnCobrancas in 'UnCobrancas.pas' {FrmCobrancas},
  UnRelCobrancas in 'UnRelCobrancas.pas' {FrmRelCobrancas},
  UnFaturasBole in 'UnFaturasBole.pas' {FrmFaturasBole},
  UnRelCartCobBole in 'UnRelCartCobBole.pas' {FrmRelCartCobBole},
  UnRelCobrancasBole in 'UnRelCobrancasBole.pas' {FrmRelCobrancasBole},
  UnCobrancasBole in 'UnCobrancasBole.pas' {FrmCobrancasBole};

{$R *.res}

Var HprevHist : HWND;

begin
  Application.Initialize;
HprevHist := FindWindow(Nil, PChar('SGO 1.0'));
if HprevHist = 0 then begin
 FrmAbertura:=TFrmAbertura.create(Application);
 FrmAbertura.Show;
 FrmAbertura.Refresh;
  Application.Title := 'SGO 1.0';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TDmFluxo, DmFluxo);
  FrmAbertura.Free;
  Application.Run;
end else
ShowMessage('Já existe uma cópia do "'+Application.Title+'" em execução.'+#13#13+
'Não será possível executar uma outra cópia deste aplicativo.');
end.
