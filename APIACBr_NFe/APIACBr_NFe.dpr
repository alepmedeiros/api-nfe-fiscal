program APIACBr_NFe;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse,
  horse.cors,
  Horse.jhonson,
  Horse.GBSwagger,
  apiacbrnfe.utils in 'src\utils\apiacbrnfe.utils.pas',
  apiacbrnfe.serializable.model.identificador in 'src\serializable\model\apiacbrnfe.serializable.model.identificador.pas',
  apiacbrnfe.serializable.model.emitente in 'src\serializable\model\apiacbrnfe.serializable.model.emitente.pas',
  apiacbrnfe.serializable.model.endereco in 'src\serializable\model\apiacbrnfe.serializable.model.endereco.pas',
  apiacbrnfe.serializable.model.avulsa in 'src\serializable\model\apiacbrnfe.serializable.model.avulsa.pas',
  apiacbrnfe.serializable.model.destinatario in 'src\serializable\model\apiacbrnfe.serializable.model.destinatario.pas';

procedure IniciaHorse;
begin
  THorse
    .use(cors)
    .use(jhonson)
    .use(HorseSwagger);

  THorseGBSwaggerRegister.RegisterPath(TNFe);

  THorse.Listen(9000,
    procedure
    begin
      Writeln(Format('Server is runing on %s:%d', [THorse.Host, THorse.Port]));
      Readln;
    end);
end;

procedure InicializaSwagger;
begin
  Swagger
    .Version('2.0')
    .AddProtocol(TGBSwaggerProtocol.gbHttp)
      .Config
        .Language('pt-BR')
      .&End
      .Info
        .Title('API ACBr com Horse')
        .Description('API Emissora de NF-e')
        .Contact
          .Name('Alessandro Medeiros')
          .Email('alemedeiros@bsd.com.br')
        .&End
      .&End
    .&End;
end;

begin
  {$IFDEF MSWINDOWS}
  IsConsole := False;
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  IniciaHorse;
  InicializaSwagger;
end.
