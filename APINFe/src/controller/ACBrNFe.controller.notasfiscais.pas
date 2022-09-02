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
  ACBrNFe.entity.ResponseNFe,
  ACBrNFe.entity.pedidos,
  ACBrNFe.usecase.ActionNFe;

type
  [SwagPath('nfe','NFe')]
  TControllerNotaFiscal = class(THorseGBSwagger)
  private
  public
    [SwagPOST('Emitir NFe')]
    [SwagParamBody('body', TPedido)]
    [SwagResponse(201, TResponseNFe)]
    [SwagResponse(400)]
    procedure EmitirNFe;
  end;

implementation

{ TControllerNotaFiscal }

procedure TControllerNotaFiscal.EmitirNFe;
var
  lPedido: TPedido;
  lResponse: TResponseNFe;
begin
  lPedido := TGBJSONDefault.Serializer<TPedido>.JsonStringToObject(FRequest.Body);
  try
    lResponse := TActionNFe.New.Gerar(lPedido);
    FResponse.Send<TJSONObject>(TGBJSONDefault.Deserializer.ObjectToJsonObject(lResponse)).Status(201);
//    FResponse.Send('Nota Gerada e armazenada').Status(201);
  finally
    lPedido.Free;
  end;
end;

end.
