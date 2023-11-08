unit apiacbrnfe.serializable.model.avulsa;

interface

uses
  GBJSON.Attributes;

type
  TAvulsa = class
  private
    FCnpj: String;
    FOrgaoEmitente: String;
    FMatriculaAgente: String;
    FNomeAgente: String;
    FTelefone: String;
    FEstado: String;
    FNumeroDocArrecFisco: String;
    FDataEmissao: TDateTime;
    FValorDocArrecFisco: Currency;
    FReparticaoFiscalEmitente: String;
    FDataPagamento: Currency;
  public
//      NotaF.NFe.Avulsa.CNPJ    := '';
//  NotaF.NFe.Avulsa.xOrgao  := '';
//  NotaF.NFe.Avulsa.matr    := '';
//  NotaF.NFe.Avulsa.xAgente := '';
//  NotaF.NFe.Avulsa.fone    := '';
//  NotaF.NFe.Avulsa.UF      := '';
//  NotaF.NFe.Avulsa.nDAR    := '';
//  NotaF.NFe.Avulsa.dEmi    := now;
//  NotaF.NFe.Avulsa.vDAR    := 0;
//  NotaF.NFe.Avulsa.repEmi  := '';
//  NotaF.NFe.Avulsa.dPag    := now;
    [JSONProp('cnpj')]
    property Cnpj: String read FCnpj write FCnpj;
    [JSONProp('orgaoemi')]
    property OrgaoEmitente: String read FOrgaoEmitente write FOrgaoEmitente;
    [JSONProp('matriculaag')]
    property MatriculaAgente: String read FMatriculaAgente write FMatriculaAgente;
    [JSONProp('agente')]
    property NomeAgente: String read FNomeAgente write FNomeAgente;
    [JSONProp('telefone')]
    property Telefone: String read FTelefone write FTelefone;
    [JSONProp('estado')]
    property Estado: String read FEstado write FEstado;
    [JSONProp('numerodar')]
    property NumeroDocArrecFisco: String read FNumeroDocArrecFisco write FNumeroDocArrecFisco;
    [JSONProp('dataemissao')]
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    [JSONProp('valordar')]
    property ValorDocArrecFisco: Currency read FValorDocArrecFisco write FValorDocArrecFisco;
    [JSONProp('repemi')]
    property ReparticaoFiscalEmitente: String read FReparticaoFiscalEmitente write FReparticaoFiscalEmitente;
    [JSONProp('datapag')]
    property DataPagamento: Currency read FDataPagamento write FDataPagamento;

    class function New: TAvulsa;
  end;

implementation

{ TAvulsa }

class function TAvulsa.New: TAvulsa;
begin
  Result := Self.Create;
end;

end.
