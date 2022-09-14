unit passaporteacbrapinfe.controller.nfe;

interface

uses
  System.JSON,
  Horse,
  Horse.GBSwagger.Controller,
  Horse.GBSwagger.Register,
  GBJSON.Interfaces,
  GBSwagger.Path.Attributes,
  GBSwagger.JSON.Interfaces,
  ACBrNFe.entity.pedidos;

type
  [SwagPath('nfe', 'NFe')]
  TControllerNFe = class(THorseGBSwagger)
  private
  public
    [SwagPOST('Emitir NFe')]
    [SwagParamBody('body', TNfe)]
    [SwagResponse(201, TNfe)]
    [SwagResponse(400)]
    procedure EmitirNFe;
  end;

implementation

{ TControllerNFe }

procedure TControllerNFe.EmitirNFe;
var
  lNFe, lResp: TNFe;
begin
  lNFe := TGBJSONDefault.Serializer<TNFe>.JsonStringToObject(FRequest.Body);
  try
    FResponse.Send<TJSONObject>(TGBJSONDefault.Deserializer.ObjectToJsonObject(lResp)).Status(201);
  finally
    lNFe.DisposeOf;
  end;
end;

end.
