unit horseacbrrad.controller.notasfiscais;

interface

uses
  System.Classes,
  System.JSON,
  System.SysUtils,
  Horse,
  Horse.GBSwagger.Controller,
  Horse.GBSwagger.Register,
  GBJSON.Interfaces,
  GBSwagger.Path.Attributes,
  GBSwagger.JSON.Interfaces,
  dmnfce,
  horseacbrrad.model.pedido;

type
  [SwagPath('nfe','NFe')]
  TControllerNotaFiscal = class(THorseGBSwagger)
  private
  public
    [SwagPOST('Emitir NFe')]
    [SwagParamBody('body', TPedido)]
    [SwagResponse(201, TPedido)]
    [SwagResponse(400)]
    procedure EmitirNFCe;
  end;

implementation

{ TControllerNotaFiscal }

procedure TControllerNotaFiscal.EmitirNFCe;
var
  lDtmNfce: Tdmnfe;
  lPedido: TPedido;
  lRetorno: TPedido;
begin
  lPedido := TGBJSONDefault.Serializer<TPedido>.JsonStringToObject(FRequest.Body);
  try
    lDtmNfce := Tdmnfe.Create(nil);
    try
      lRetorno := lDtmNfce.Emitir(lPedido);
      FResponse.Send<TJSONObject>(TGBJSONDefault.Deserializer.ObjectToJsonObject(lRetorno)).Status(201);
    finally
      lDtmNfce.Free;
    end;
  finally
    lPedido.Free;
  end;
end;

end.
