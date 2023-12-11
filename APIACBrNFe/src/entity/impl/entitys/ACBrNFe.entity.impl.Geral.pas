unit ACBrNFe.entity.impl.Geral;

interface

uses
  ACBrNFe.entity.interfaces;

type
  TGeral<T : IInterface> = class(TInterfacedObject, iGeral<T>)
    private
      [weak]
      FParent : T;

      FIdCSC: String;
      FCSC: String;
      FSalvar: Boolean;
      FVersaoDF: String;
      FVersaoQRCode: String;
      FFormaEmissao: String;
      FSSLLib: String;
      FExibirErroSchema: Boolean;
      FFormatoAlerta: String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iGeral<T>;
      function IdCSC(Value: String): iGeral<T>; overload;
      function IdCSC: String; overload;
      function CSC(Value: String): iGeral<T>; overload;
      function CSC: String; overload;
      function Salvar(Value: Boolean): iGeral<T>; overload;
      function Salvar: Boolean; overload;
      function VersaoDF(Value: String): iGeral<T>; overload;
      function VersaoDF: String; overload;
      function VersaoQRCode(Value: String): iGeral<T>; overload;
      function VersaoQRCode: String; overload;
      function FormaEmissao(Value: String): iGeral<T>; overload;
      function FormaEmissao: String; overload;
      function SSLLib(Value: String): iGeral<T>; overload;
      function SSLLib: String; overload;
      function ExibirErroSchema(Value: Boolean): iGeral<T>; overload;
      function ExibirErroSchema: Boolean; overload;
      function FormatoAlerta(Value: String): iGeral<T>; overload;
      function FormatoAlerta: String; overload;
      function Build: T;
  end;

implementation

function TGeral<T>.Build: T;
begin
  Result := FParent;
end;

constructor TGeral<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TGeral<T>.CSC(Value: String): iGeral<T>;
begin
  Result := Self;
  FCSC := Value;
end;

function TGeral<T>.CSC: String;
begin
  Result := FCSC;
end;

destructor TGeral<T>.Destroy;
begin

  inherited;
end;

function TGeral<T>.ExibirErroSchema: Boolean;
begin
  Result := FExibirErroSchema;
end;

function TGeral<T>.ExibirErroSchema(Value: Boolean): iGeral<T>;
begin
  Result := Self;
  FExibirErroSchema := Value;
end;

function TGeral<T>.FormaEmissao: String;
begin
  Result := FFormaEmissao;
end;

function TGeral<T>.FormaEmissao(Value: String): iGeral<T>;
begin
  Result := Self;
  FFormaEmissao := Value;
end;

function TGeral<T>.FormatoAlerta: String;
begin
  Result := FFormatoAlerta;
end;

function TGeral<T>.FormatoAlerta(Value: String): iGeral<T>;
begin
  Result := Self;
  FFormatoAlerta := Value;
end;

function TGeral<T>.IdCSC: String;
begin
  Result := FIdCSC;
end;

function TGeral<T>.IdCSC(Value: String): iGeral<T>;
begin
  Result := Self;
  FIdCSC := Value;
end;

class function TGeral<T>.New(Parent : T) : iGeral<T>;
begin
  Result := Self.Create(Parent);
end;

function TGeral<T>.Salvar(Value: Boolean): iGeral<T>;
begin
  Result := Self;
  FSalvar := Value;
end;

function TGeral<T>.Salvar: Boolean;
begin
  Result := FSalvar;
end;

function TGeral<T>.SSLLib: String;
begin
  Result := FSSLLib;
end;

function TGeral<T>.SSLLib(Value: String): iGeral<T>;
begin
  Result := Self;
  FSSLLib := Value;
end;

function TGeral<T>.VersaoDF: String;
begin
  Result := FVersaoDF;
end;

function TGeral<T>.VersaoDF(Value: String): iGeral<T>;
begin
  Result := Self;
  FVersaoDF := Value;
end;

function TGeral<T>.VersaoQRCode(Value: String): iGeral<T>;
begin
  Result := Self;
  FVersaoQRCode := Value;
end;

function TGeral<T>.VersaoQRCode: String;
begin
  Result := FVersaoQRCode;
end;

end.
