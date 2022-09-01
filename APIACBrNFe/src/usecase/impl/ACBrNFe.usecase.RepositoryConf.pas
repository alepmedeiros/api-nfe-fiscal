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
    FConf: iComponentFactory;
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
    constructor Create(Conf: iComponentFactory; entity: iFactoryEntity);
    destructor Destroy; override;
    class function New(Conf: iComponentFactory; entity: iFactoryEntity)
      : iCommand;
    function Execute: iCommand;
  end;

implementation

constructor TRepositoryConf.Create(Conf: iComponentFactory;
  entity: iFactoryEntity);
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
  FConf.ACBr.this.DANFE.PathPDF := FPathPDF;
  FConf.ACBr.this.DANFE.Logo := '';
  FConf.ACBr.this.DANFE.Sistema := '';
  FConf.ACBr.this.DANFE.Site := '';
  FConf.ACBr.this.DANFE.Email := '';
end;

procedure TRepositoryConf.ConfWebService;
begin
  FConf.ACBr.this.Configuracoes.WebServices.UF := FEntity.Configuracao.WebService.UF;
  FConf.ACBr.this.Configuracoes.WebServices.Salvar := FEntity.Configuracao.WebService.Salvar;
  FConf.ACBr.this.Configuracoes.WebServices.Visualizar := FEntity.Configuracao.WebService.Visualizar;
  FConf.ACBr.this.Configuracoes.WebServices.Ambiente := TAcbrUtils.StrToEnumTipoAmbiente(FEntity.Configuracao.WebService.Ambiente);
  FConf.ACBr.this.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao := TAcbrUtils.StrToEnumTimeZone(FEntity.Configuracao.WebService.TimeZoneModoDeteccao);
  FConf.ACBr.this.Configuracoes.WebServices.TimeOut := FEntity.Configuracao.WebService.TimeOut;
  FConf.ACBr.this.Configuracoes.WebServices.AguardarConsultaRet := FEntity.Configuracao.WebService.AguardarConsultaRet;
  FConf.ACBr.this.Configuracoes.WebServices.Tentativas := FEntity.Configuracao.WebService.Tentativas;
  FConf.ACBr.this.Configuracoes.WebServices.IntervaloTentativas := FEntity.Configuracao.WebService.IntervaloTentativas;
  FConf.ACBr.this.Configuracoes.WebServices.AjustaAguardaConsultaRet := FEntity.Configuracao.WebService.AjustaAguardaConsultaRet;
  FConf.ACBr.this.Configuracoes.WebServices.ProxyHost := FEntity.Configuracao.WebService.ProxyHost;
  FConf.ACBr.this.Configuracoes.WebServices.ProxyPort := FEntity.Configuracao.WebService.ProxyPort;
  FConf.ACBr.this.Configuracoes.WebServices.ProxyUser := FEntity.Configuracao.WebService.ProxyUser;
  FConf.ACBr.this.Configuracoes.WebServices.ProxyPass := FEntity.Configuracao.WebService.ProxyPass;
end;

procedure TRepositoryConf.ConfGeral;
begin
  FConf.ACBr.this.Configuracoes.Geral.ModeloDF := TAcbrUtils.StrToEnumModeloDF(FEntity.Configuracao.ModeloDF);
  FConf.ACBr.this.Configuracoes.Geral.IdCSC := FEntity.Configuracao.Geral.IdCSC;
  FConf.ACBr.this.Configuracoes.Geral.CSC := FEntity.Configuracao.Geral.CSC;
  FConf.ACBr.this.Configuracoes.Geral.Salvar := FEntity.Configuracao.Geral.Salvar;
  FConf.ACBr.this.Configuracoes.Geral.VersaoDF := TAcbrUtils.StrToEnumVersaoDF(FEntity.Configuracao.Geral.VersaoDF);
  FConf.ACBr.this.Configuracoes.Geral.VersaoQRCode := TAcbrUtils.StrToEnumVersaoQrCode(FEntity.Configuracao.Geral.VersaoQRCode);
  FConf.ACBr.this.Configuracoes.Geral.FormaEmissao := TAcbrUtils.StrToEnumEmissao(FEntity.Configuracao.Geral.FormaEmissao);
  FConf.ACBr.this.Configuracoes.Geral.ExibirErroSchema := FEntity.Configuracao.Geral.ExibirErroSchema;
  FConf.ACBr.this.Configuracoes.Geral.FormatoAlerta := FEntity.Configuracao.Geral.FormatoAlerta;
end;

procedure TRepositoryConf.ConfArquivos;
begin
  FConf.ACBr.this.Configuracoes.Arquivos.AdicionarLiteral := FEntity.Configuracao.AdicionarLiteral;
  FConf.ACBr.this.Configuracoes.Arquivos.EmissaoPathNFe := FEntity.Configuracao.EmissaoPathNFe;
  FConf.ACBr.this.Configuracoes.Arquivos.SepararPorMes := FEntity.Configuracao.SepararPorMes;
  FConf.ACBr.this.Configuracoes.Arquivos.SepararPorModelo := FEntity.Configuracao.SepararPorModelo;
  FConf.ACBr.this.Configuracoes.Arquivos.SepararPorCNPJ := FEntity.Configuracao.SepararPorCNPJ;
  FConf.ACBr.this.Configuracoes.Arquivos.Salvar := FEntity.Configuracao.Salvar;
  FConf.ACBr.this.Configuracoes.Arquivos.SalvarEvento := FEntity.Configuracao.SalvarEvento;
  FConf.ACBr.this.Configuracoes.Arquivos.PathNFe := FPathArquivos;
  FConf.ACBr.this.Configuracoes.Arquivos.PathInu := FPathArquivos;
  FConf.ACBr.this.Configuracoes.Arquivos.PathEvento := FPathArquivos;
  FConf.ACBr.this.Configuracoes.Arquivos.PathSalvar := FPathTmp;
end;

class function TRepositoryConf.New(Conf: iComponentFactory;
  entity: iFactoryEntity): iCommand;
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
