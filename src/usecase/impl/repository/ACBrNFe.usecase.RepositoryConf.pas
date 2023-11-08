unit ACBrNFe.usecase.RepositoryConf;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  System.SysUtils,
  pcnConversaoNFe,
  pcnConversao,
  ACBrNFe.utils.acbrhelper,
  ACBrNFe.entity.pedidos;

type
  TRepositoryConf = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;

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
    constructor Create(Conf: iActionNFe);
    destructor Destroy; override;
    class function New(Conf: iActionNFe): iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryConf.Create(Conf: iActionNFe);
begin
  FConf := Conf;
end;

destructor TRepositoryConf.Destroy;
begin

  inherited;
end;

function TRepositoryConf.Execute: iCommand;
begin
  Result := Self;

  SetPath;
  ConfArquivos;
  ConfGeral;
  ConfWebService;
  ConfDanfe;
  ConfIde;
end;

procedure TRepositoryConf.ConfDanfe;
begin
  FConf.Component.ACBr.this.DANFE.PathPDF := FPathPDF;
  FConf.Component.ACBr.this.DANFE.Logo := '';
  FConf.Component.ACBr.this.DANFE.Sistema := '';
  FConf.Component.ACBr.this.DANFE.Site := '';
  FConf.Component.ACBr.this.DANFE.Email := '';
end;

procedure TRepositoryConf.ConfWebService;
begin
  FConf.Component.ACBr.this.Configuracoes.WebServices.UF := 'AM';
  FConf.Component.ACBr.this.Configuracoes.WebServices.Salvar := True;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Visualizar := False;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Ambiente :=
    TAcbrUtils.StrToEnumTipoAmbiente('Homologacao');
  FConf.Component.ACBr.this.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao
    := TAcbrUtils.StrToEnumTimeZone('Sistema');
  FConf.Component.ACBr.this.Configuracoes.WebServices.TimeOut := 18000;
  FConf.Component.ACBr.this.Configuracoes.WebServices.
    AguardarConsultaRet := 5000;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Tentativas := 10;
  FConf.Component.ACBr.this.Configuracoes.WebServices.
    IntervaloTentativas := 3000;
  FConf.Component.ACBr.this.Configuracoes.WebServices.
    AjustaAguardaConsultaRet := True;
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyHost := '';
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyPort := '';
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyUser := '';
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyPass := '';
end;

procedure TRepositoryConf.ConfGeral;
begin
  FConf.Component.ACBr.this.Configuracoes.Geral.ModeloDF :=
    TAcbrUtils.StrToEnumModeloDF('NFe');
  FConf.Component.ACBr.this.Configuracoes.Geral.IdCSC := '1';
  FConf.Component.ACBr.this.Configuracoes.Geral.CSC := '0123456789';
  FConf.Component.ACBr.this.Configuracoes.Geral.Salvar := True;
  FConf.Component.ACBr.this.Configuracoes.Geral.VersaoDF :=
    TAcbrUtils.StrToEnumVersaoDF('200');
  FConf.Component.ACBr.this.Configuracoes.Geral.VersaoQRCode :=
    TAcbrUtils.StrToEnumVersaoQrCode('200');
  FConf.Component.ACBr.this.Configuracoes.Geral.FormaEmissao :=
    TAcbrUtils.StrToEnumEmissao('Normal');
  FConf.Component.ACBr.this.Configuracoes.Geral.ExibirErroSchema := False;
  FConf.Component.ACBr.this.Configuracoes.Geral.FormatoAlerta :=
    '[%TAGNIVEL% %TAG%] %DESCRICAO% - %MSG%';
end;

procedure TRepositoryConf.ConfIde;
begin
  FConf.Component.ACBr.AddNotaFiscal;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpAmb :=
    FConf.Component.ACBr.this.Configuracoes.WebServices.Ambiente;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.verProc := '1.0.0.0';
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpEmis :=
    FConf.Component.ACBr.this.Configuracoes.Geral.FormaEmissao;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.tpImp :=
    FConf.Component.ACBr.this.DANFE.TipoDANFE;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.nNF := 1 + Random(100);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cNF :=
    TAcbrUtils.GerarCodigoDanfe(FConf.Component.ACBr.NotaFiscal.NFe.Ide.nNF);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.dEmi := Date;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.dSaiEnt := Date;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.hSaiEnt := Now;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cUF :=
    UFtoCUF(FConf.Component.ACBr.this.Configuracoes.WebServices.UF);
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.cMunFG := 1302603;
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.finNFe :=
    TAcbrUtils.StrToEnumFinalidadeNFe('Normal');
  FConf.Component.ACBr.NotaFiscal.NFe.Ide.indIntermed :=
    TAcbrUtils.StrToEnumIndIntermed('SemOperacao');
end;

procedure TRepositoryConf.ConfArquivos;
begin
  FConf.Component.ACBr.this.Configuracoes.Arquivos.AdicionarLiteral := False;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.EmissaoPathNFe := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorMes := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorModelo := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorCNPJ := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.Salvar := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SalvarEvento := True;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathNFe := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathInu := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathEvento := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathSalvar := FPathTmp;
end;

class function TRepositoryConf.New(Conf: iActionNFe): iCommand;
begin
  Result := Self.Create(Conf);
end;

procedure TRepositoryConf.SetPath;
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
