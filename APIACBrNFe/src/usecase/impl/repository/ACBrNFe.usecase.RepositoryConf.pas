unit ACBrNFe.usecase.RepositoryConf;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.Component.interfaces,
  ACBrNFe.entity.interfaces,
  System.SysUtils,
  pcnConversaoNFe,
  pcnConversao,
  ACBrNFe.utils.acbrhelper;

type
  TRepositoryConf = class(TInterfacedObject, iCommand)
  private
    FConf: iActionNFe;
    FEntity: iFactoryEntity;

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
  public
    constructor Create(Conf: iActionNFe; Entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryConf.Create(Conf: iActionNFe; Entity: iFactoryEntity);
begin
  FConf := Conf;
  FEntity := entity;
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
  FConf.Component.ACBr.this.Configuracoes.WebServices.UF := FEntity.Configuracao.WebService.UF;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Salvar := FEntity.Configuracao.WebService.Salvar;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Visualizar := FEntity.Configuracao.WebService.Visualizar;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Ambiente := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Configuracao.WebService.Ambiente);
  FConf.Component.ACBr.this.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao := TAcbrUtils.StrToEnumTimeZone(FEntity.Configuracao.WebService.TimeZoneModoDeteccao);
  FConf.Component.ACBr.this.Configuracoes.WebServices.TimeOut := FEntity.Configuracao.WebService.TimeOut;
  FConf.Component.ACBr.this.Configuracoes.WebServices.AguardarConsultaRet := FEntity.Configuracao.WebService.AguardarConsultaRet;
  FConf.Component.ACBr.this.Configuracoes.WebServices.Tentativas := FEntity.Configuracao.WebService.Tentativas;
  FConf.Component.ACBr.this.Configuracoes.WebServices.IntervaloTentativas := FEntity.Configuracao.WebService.IntervaloTentativas;
  FConf.Component.ACBr.this.Configuracoes.WebServices.AjustaAguardaConsultaRet := FEntity.Configuracao.WebService.AjustaAguardaConsultaRet;
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyHost := FEntity.Configuracao.WebService.ProxyHost;
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyPort := FEntity.Configuracao.WebService.ProxyPort;
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyUser := FEntity.Configuracao.WebService.ProxyUser;
  FConf.Component.ACBr.this.Configuracoes.WebServices.ProxyPass := FEntity.Configuracao.WebService.ProxyPass;
end;

procedure TRepositoryConf.ConfGeral;
begin
  FConf.Component.ACBr.this.Configuracoes.Geral.ModeloDF := TAcbrUtils.StrToEnumModeloDF(FEntity.Configuracao.ModeloDF);
  FConf.Component.ACBr.this.Configuracoes.Geral.IdCSC := FEntity.Configuracao.Geral.IdCSC;
  FConf.Component.ACBr.this.Configuracoes.Geral.CSC := FEntity.Configuracao.Geral.CSC;
  FConf.Component.ACBr.this.Configuracoes.Geral.Salvar := FEntity.Configuracao.Geral.Salvar;
  FConf.Component.ACBr.this.Configuracoes.Geral.VersaoDF := TAcbrUtils.StrToEnumVersaoDF(FEntity.Configuracao.Geral.VersaoDF);
  FConf.Component.ACBr.this.Configuracoes.Geral.VersaoQRCode := TAcbrUtils.StrToEnumVersaoQrCode(FEntity.Configuracao.Geral.VersaoQRCode);
  FConf.Component.ACBr.this.Configuracoes.Geral.FormaEmissao := TAcbrUtils.StrToEnumEmissao(FEntity.Configuracao.Geral.FormaEmissao);
  FConf.Component.ACBr.this.Configuracoes.Geral.ExibirErroSchema := FEntity.Configuracao.Geral.ExibirErroSchema;
  FConf.Component.ACBr.this.Configuracoes.Geral.FormatoAlerta := FEntity.Configuracao.Geral.FormatoAlerta;
end;

procedure TRepositoryConf.ConfArquivos;
begin
  FConf.Component.ACBr.this.Configuracoes.Arquivos.AdicionarLiteral := FEntity.Configuracao.AdicionarLiteral;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.EmissaoPathNFe := FEntity.Configuracao.EmissaoPathNFe;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorMes := FEntity.Configuracao.SepararPorMes;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorModelo := FEntity.Configuracao.SepararPorModelo;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SepararPorCNPJ := FEntity.Configuracao.SepararPorCNPJ;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.Salvar := FEntity.Configuracao.Salvar;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.SalvarEvento := FEntity.Configuracao.SalvarEvento;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathNFe := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathInu := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathEvento := FPathArquivos;
  FConf.Component.ACBr.this.Configuracoes.Arquivos.PathSalvar := FPathTmp;
end;

class function TRepositoryConf.New(Conf: iActionNFe; Entity: iFactoryEntity)
      : iCommand;
begin
  Result := Self.Create(Conf, entity);
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
