unit ACBrNFe.controller.notasfiscais;

interface

uses
  System.JSON,
  Horse,
  Horse.GBSwagger.Controller,
  Horse.GBSwagger.Register,
  GBJSON.Interfaces,
  GBSwagger.Path.Attributes,
  GBSwagger.JSON.Interfaces,
  ACBrNFe.adapter.pedidos;

type
  [SwagPath('nfe','NFe')]
  TControllerNotaFiscal = class(THorseGBSwagger)
  private
  public
    [SwagPOST('Emitir NFe')]
    [SwagParamBody('body', TPedido)]
    [SwagResponse(201, nil, 'Nota Gerada e armazenada')]
    [SwagResponse(400)]
    procedure EmitirNFe;
  end;

implementation

{ TControllerNotaFiscal }

procedure TControllerNotaFiscal.EmitirNFe;
var
  lPedido: TPedido;
begin
  lPedido := TGBJSONDefault.Serializer<TPedido>.JsonStringToObject(FRequest.Body);
  try
    FResponse.Send('Nota Gerada e armazenada').Status(201);
  finally
    lPedido.Free;
  end;
end;

end.
