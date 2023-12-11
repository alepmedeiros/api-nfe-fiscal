unit passaporteacbrapinfe.usecase.impl.configuracao;

interface

uses
  passaporteacbrapinfe.usecase.interfaces,
  System.SysUtils,
  pcnConversaoNFe,
  pcnConversao,
  ACBrDFeSSL,
  pcnAuxiliar,
  blcksock,
  ACBrDFeUtil;

type
  TConfiguracao = class(TInterfacedObject, iCommand)
  private
    FAcoes: iAcoesNfe;

    FPathApp: String;
    FPathArqDFe: String;
    FPathPDF: String;
    FPathArquivos: String;
    FPathTmp: String;

    procedure SetPath;
    procedure ConfArquivos;
    procedure ConfGeral;
    procedure ConfWebService;
    procedure ConfDanfe;
    procedure ConfIde;
  public
    constructor Create(Acoes: iAcoesNfe);
    destructor Destroy; override;
    class function New(Acoes: iAcoesNfe): iCommand;
    function Execute: iCommand;
  end;

implementation

procedure TConfiguracao.ConfArquivos;
begin
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.AdicionarLiteral := False;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.EmissaoPathNFe := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.SepararPorMes := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.SepararPorModelo := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.SepararPorCNPJ := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.Salvar := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.SalvarEvento := true;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.PathNFe := FPathArquivos;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.PathInu := FPathArquivos;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.PathEvento := FPathArquivos;
  FAcoes.Component.ACBr.This.Configuracoes.Arquivos.PathSalvar := FPathTmp;
end;

procedure TConfiguracao.ConfDanfe;
begin
  FAcoes.Component.ACBr.This.DANFE.PathPDF := FPathPDF;
  FAcoes.Component.ACBr.This.DANFE.Logo := '';
  FAcoes.Component.ACBr.This.DANFE.Sistema := '';
  FAcoes.Component.ACBr.This.DANFE.Site := '';
  FAcoes.Component.ACBr.This.DANFE.Email := '';
end;

procedure TConfiguracao.ConfGeral;
begin
  FAcoes.Component.ACBr.This.Configuracoes.Geral.ModeloDF := moNFe;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.IdCSC := '1';
  FAcoes.Component.ACBr.This.Configuracoes.Geral.CSC := '0123456789';
  FAcoes.Component.ACBr.This.Configuracoes.Geral.Salvar := true;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.VersaoDF := TpcnVersaoDF.ve200;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.VersaoQRCode :=
    TpcnVersaoQrCode.veqr200;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.FormaEmissao :=
    TpcnTipoEmissao.teNormal;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.SSLLib := TSSLLib.libWinCrypt;
  FAcoes.Component.ACBr.This.SSL.SSLType := TSSLType.LT_TLSv1_2;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao
    := TTimeZoneModoDeteccao.tzSistema;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.ExibirErroSchema := False;
  FAcoes.Component.ACBr.This.Configuracoes.Geral.FormatoAlerta :=
    '[%TAGNIVEL% %TAG%] %DESCRICAO% - %MSG%';
end;

procedure TConfiguracao.ConfIde;
begin
  FAcoes.Component.ACBr.AddNotaFiscal;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.tpAmb :=
    FAcoes.Component.ACBr.This.Configuracoes.WebServices.Ambiente;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.verProc := '1.0.0.0';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.tpImp :=
    FAcoes.Component.ACBr.This.DANFE.TipoDANFE;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.natOp := 'VENDA PRODUCAO DO ESTAB.';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.indPag := ipVista;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.modelo := 55;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.Serie := 1;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.nNF := 123;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.cNF :=
    GerarCodigoDFe(FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.nNF);
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.dEmi := Date;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.dSaiEnt := Date;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.hSaiEnt := Now;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.tpNF := tnSaida;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.tpEmis := TpcnTipoEmissao.teNormal;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.tpAmb := taHomologacao;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.verProc := '1.0.0.0';
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.cUF := UFtoCUF('AM');
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.cMunFG := 1302603;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.finNFe := fnNormal;
  FAcoes.Component.ACBr.NotaFiscal.NFe.Ide.indIntermed := iiSemOperacao;
end;

procedure TConfiguracao.ConfWebService;
begin
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.UF := 'AM';
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.Salvar := true;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.Visualizar := False;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.Ambiente :=
    TpcnTipoAmbiente.taHomologacao;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.TimeOut := 18000;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.
    AguardarConsultaRet := 5000;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.Tentativas := 10;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.
    IntervaloTentativas := 3000;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.
    AjustaAguardaConsultaRet := true;
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.ProxyHost := '';
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.ProxyPort := '';
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.ProxyUser := '';
  FAcoes.Component.ACBr.This.Configuracoes.WebServices.ProxyPass := '';
end;

constructor TConfiguracao.Create(Acoes: iAcoesNfe);
begin
  FAcoes := Acoes;
end;

destructor TConfiguracao.Destroy;
begin

  inherited;
end;

function TConfiguracao.Execute: iCommand;
begin
  Result := Self;

  SetPath;
  ConfArquivos;
  ConfGeral;
  ConfWebService;
  ConfDanfe;
  ConfIde;
end;

class function TConfiguracao.New(Acoes: iAcoesNfe): iCommand;
begin
  Result := Self.Create(Acoes);
end;

procedure TConfiguracao.SetPath;
begin
  FPathApp := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  FPathArqDFe := IncludeTrailingPathDelimiter(FPathApp + 'DOCUMENTOS');
  FPathPDF := IncludeTrailingPathDelimiter(FPathArqDFe + 'PDF');
  FPathArquivos := IncludeTrailingPathDelimiter(FPathArqDFe + 'ARQUIVOS');
  FPathTmp := IncludeTrailingPathDelimiter(FPathArqDFe + 'TMP');

  ForceDirectories(FPathPDF);
  ForceDirectories(FPathArquivos);
  ForceDirectories(FPathTmp);
end;

end.
