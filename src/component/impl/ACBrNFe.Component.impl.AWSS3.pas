unit ACBrNFe.Component.impl.AWSS3;

interface

uses
  AWS4D,
  ACBrNFe.Component.interfaces,
  Activex,
  System.SysUtils,
  System.Classes;

type
  TAWSS3 = class(TInterfacedObject, iAWSS3)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iAWSS3;
    function Push(Value: String): String;
  end;

implementation

const
  AccountKey = '7dYd2e2hyJ8SKqc8/d+td5PUNQJ8Dz8kfc6E+7Sh';
  AccountName = 'AKIAX6GPXNIQR72V2NMM';
  StorageEndPoint = 's3.sa-east-1.amazonaws.com';
  Bucket = 'acbrnfepdf';

constructor TAWSS3.Create;
begin
  CoInitialize(nil);
end;

destructor TAWSS3.Destroy;
begin

  inherited;
end;

class function TAWSS3.New: iAWSS3;
begin
  Result := Self.Create;
end;

function TAWSS3.Push(Value: String): String;
var
  lFileContent: TBytesStream;
  lReader: TBinaryReader;
begin
  lReader := TBinaryReader.Create(Value);
  try
    lFileContent := TBytesStream.Create
      (lReader.ReadBytes(lReader.BaseStream.Size));
  finally
    lReader.Free;
  end;

  Result := TAWS4D.New.Credential.AccountKey(AccountKey)
    .AccountName(AccountName).StorageEndPoint(StorageEndPoint).Bucket(Bucket)
    .&End.S3.SendFile.FileName(ExtractFileName(Value))
    .ContentType('application/pdf').FileStream(lFileContent).Send.ToString;
end;

end.
