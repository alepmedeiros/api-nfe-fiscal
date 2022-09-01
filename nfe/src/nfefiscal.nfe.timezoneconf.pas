unit nfefiscal.nfe.timezoneconf;

interface

uses
  nfefiscal.nfeDefault.interfaces;

type
  TTimeZoneConf = class(TInterfacedObject, iTimeZoneConf)
    private
      FwebService: iWebService;
    public
      constructor Create(webService: iWebService);
      destructor Destroy; override;
      class function New(webService: iWebService) : iTimeZoneConf;
      function ModoDeteccao(Value: String): iTimeZoneConf; overload;
      function ModoDeteccao: String; overload;
      function &End: iWebService;
  end;

implementation

function TTimeZoneConf.&End: iWebService;
begin
  Result := FwebService;
end;

constructor TTimeZoneConf.Create(webService: iWebService);
begin
  FwebService := webService;
end;

destructor TTimeZoneConf.Destroy;
begin

  inherited;
end;

function TTimeZoneConf.ModoDeteccao(Value: String): iTimeZoneConf;
begin
  Result := Self;
end;

function TTimeZoneConf.ModoDeteccao: String;
begin

end;

class function TTimeZoneConf.New (webService: iWebService) : iTimeZoneConf;
begin
  Result := Self.Create(webService);
end;

end.
