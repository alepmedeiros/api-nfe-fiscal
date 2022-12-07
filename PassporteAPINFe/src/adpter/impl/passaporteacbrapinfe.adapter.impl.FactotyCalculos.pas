unit passaporteacbrapinfe.adapter.impl.FactotyCalculos;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  passaporteacbrapinfe.adapter.interfaces,
  passaporteacbrapinfe.adapter.impl.CalculosICMS00,
  passaporteacbrapinfe.adapter.impl.CalculosICMS20;

type
  TFactoryCalculosos = class(TInterfacedObject, iFactoryCalculos)
    private
      FMap: TDictionary<String, iCalculosFiscais>;
    public
      constructor Create(Elementos: iElementos);
      destructor Destroy; override;
      class function New(Elementos: iElementos) : iFactoryCalculos;
      function Execute(Value: String): iCalculosFiscais;
  end;

implementation

constructor TFactoryCalculosos.Create(Elementos: iElementos);
begin
  FMap:= TDictionary<String, iCalculosFiscais>.Create;

  FMap.Add('00', TCalculosICMS00.New(Elementos));
  FMap.Add('20', TCalculosICMS20.New(Elementos));
end;

destructor TFactoryCalculosos.Destroy;
begin

  inherited;
end;

function TFactoryCalculosos.Execute(Value: String): iCalculosFiscais;
begin
  if not FMap.TryGetValue(Value, Result) then
    raise Exception.Create('Não existe tipo para a tributação solicitada');
end;

class function TFactoryCalculosos.New (Elementos: iElementos) : iFactoryCalculos;
begin
  Result := Self.Create(Elementos);
end;

end.
