unit Workshop.Model.Fiscal.Nfe.Command.Dest;

interface

uses
  Workshop.Model.Fiscal.Nfe.Interfaces;

Type
  TModelFiscalNfeCommandDest = class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNfe;
    public
      constructor Create(Parent : iModelFiscalNfe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNfe) : iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  pcnConversaoNFe, pcnConversao;

{ TModelFiscalNfeCommandDest }

constructor TModelFiscalNfeCommandDest.Create(Parent : iModelFiscalNfe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNfeCommandDest.Destroy;
begin

  inherited;
end;

function TModelFiscalNfeCommandDest.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Dest.CNPJCPF           := '05481336000137';
  FParent.Component.NotaFiscal.NFe.Dest.IE                := '687138770110';
  FParent.Component.NotaFiscal.NFe.Dest.ISUF              := '';
  FParent.Component.NotaFiscal.NFe.Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.Fone    := '1532599600';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.CEP     := 18270170;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.nro     := '973';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xCpl    := '';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xBairro := 'Centro';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.cMun    := 3554003;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xMun    := 'Tatui';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.UF      := 'SP';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.cPais   := 1058;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xPais   := 'BRASIL';
end;

class function TModelFiscalNfeCommandDest.New(Parent : iModelFiscalNfe) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
