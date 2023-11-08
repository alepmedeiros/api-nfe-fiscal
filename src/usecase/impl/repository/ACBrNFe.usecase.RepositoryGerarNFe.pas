unit ACBrNFe.usecase.RepositoryGerarNFe;

interface

uses
  ACBrNFe.usecase.interfaces,
  ACBrNFe.entity.ResponseNFe, System.SysUtils;

type
  TRespositoryGerarNFe = class(TInterfacedObject, iCommand)
    private
      FConf: iActionNFe;
    public
      constructor Create(Conf: iActionNFe);
      destructor Destroy; override;
      class function New(Conf: iActionNFe) : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRespositoryGerarNFe.Create(Conf: iActionNFe);
begin
  FConf := Conf;
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

  lResp.Nome := ExtractFileName(FConf.Component.ACBr.this.DANFE.ArquivoPDF);
  lResp.Data := Now;
  lResp.URL := FConf.Component.ACBr.this.DANFE.ArquivoPDF;

  FConf.Entity.ResponseNFE(lResp);
end;

class function TRespositoryGerarNFe.New (Conf: iActionNFe) : iCommand;
begin
  Result := Self.Create(Conf);
end;

end.
