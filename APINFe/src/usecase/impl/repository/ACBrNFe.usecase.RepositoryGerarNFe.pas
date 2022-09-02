unit ACBrNFe.usecase.RepositoryGerarNFe;

interface

uses
  ACBrNFe.usecase.interfaces;

type
  TRespositoryGerarNFe = class(TInterfacedObject, iCommand)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCommand;
      function Execute: iCommand;
  end;

implementation

constructor TRespositoryGerarNFe.Create;
begin

end;

destructor TRespositoryGerarNFe.Destroy;
begin

  inherited;
end;

function TRespositoryGerarNFe.Execute: iCommand;
begin
  Result := Self;
end;

class function TRespositoryGerarNFe.New : iCommand;
begin
  Result := Self.Create;
end;

end.
