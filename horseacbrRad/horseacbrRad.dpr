program horseacbrRad;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  horse,
  horse.cors,
  horse.jhonson,
  horse.GBSwagger,
  System.SysUtils,
  dmnfce in 'src\dmnfce.pas' {dmnfe: TDataModule},
  horseacbrrad.controller.notasfiscais in 'src\controller\horseacbrrad.controller.notasfiscais.pas',
  horseacbrrad.model.pedido in 'src\model\horseacbrrad.model.pedido.pas';

procedure iniciarHorse;
begin
  THorse
    .use(cors)
    .use(jhonson)
    .use(HorseSwagger);
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
        .Description('API Emissora de NF-e com calculos automáticos validados por CST')
        .Contact
          .Name('Alessandro Medeiros')
          .Email('alemedeiros@bsd.com.br')
        .&End
      .&End
    .&End;
end;

begin
  iniciarHorse;
  InicializaSwagger;

  THorseGBSwaggerRegister.RegisterPath(TControllerNotaFiscal);

  THorse.Listen(9000,
  procedure (Horse:THorse)
  begin
    System.Writeln(Format('Servidor Horse com ACBr rodando, porta %d',[Horse.Port]));
    System.Readln;
  end);
end.
