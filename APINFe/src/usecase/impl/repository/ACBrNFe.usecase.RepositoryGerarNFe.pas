unit ACBrNFe.usecase.RepositoryGerarNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.entity.ResponseNFe, System.SysUtils;

type
  TRespositoryGerarNFe = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
      FResponse: TResponseNFe;
    public
      constructor Create(Conf: iActionNFe; var Resp: TResponseNFe);
      destructor Destroy; override;
      class function New(Conf: iActionNFe; var Resp: TResponseNFe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRespositoryGerarNFe.Create(Conf: iActionNFe; var Resp: TResponseNFe);
begin
  FConf := Conf;
  FResponse := Resp;
end;

destructor TRespositoryGerarNFe.Destroy;
begin

  inherited;
end;

function TRespositoryGerarNFe.Execute: iCommand;
var
  lResp: TResponseNFe;
begin
  Result := Self;
  lResp := TResponseNFe.Create;

  FConf.Component.ACBr.this.NotasFiscais.GerarNFe;
  FConf.Component.ACBr.this.NotasFiscais.ImprimirPDF;

  lResp.Nome := FConf.Component.ACBr.this.DANFE.ArquivoPDF;
  lResp.Data := Now;
  lResp.URL := FConf.Component.AWS.Push(FConf.Component.ACBr.this.DANFE.ArquivoPDF);

  FResponse := lResp;
end;

class function TRespositoryGerarNFe.New (Conf: iActionNFe; var Resp: TResponseNFe) : iCommand;
begin
  Result := Self.Create(Conf, Resp);
end;

end.
