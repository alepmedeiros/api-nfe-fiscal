unit ACBrNFe.Component.impl.FactoryNFe;

interface

uses
  ACBrNFe,
  ACBrNFe.Component.interfaces,
  ACBrNFe.Component.impl.NFe, ACBrNFe.Component.impl.AWSS3;

type
  TComponentFactory = class(TInterfacedObject, iComponentFactory)
  private
    FACBr: iComponent<TACbrNFe>;
    FAWSS3: iAWSS3;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponentFactory;
    function ACBr: iComponent<TACbrNFe>;
    function AWS: iAWSS3;
  end;

implementation

function TComponentFactory.ACBr: iComponent<TACbrNFe>;
begin
  Result := FACBr;
end;

function TComponentFactory.AWS: iAWSS3;
begin
  Result := FAWSS3;
end;

constructor TComponentFactory.Create;
begin
  FACBr := TComponentACBrNFe.New;
  FAWSS3 := TAWSS3.New;
end;

destructor TComponentFactory.Destroy;
begin

  inherited;
end;

class function TComponentFactory.New: iComponentFactory;
begin
  Result := Self.Create;
end;

end.
