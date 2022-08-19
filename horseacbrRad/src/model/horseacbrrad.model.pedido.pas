unit horseacbrrad.model.pedido;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections;

type
//  TPedidoItens = class
//  private
//    FDescricao: String;
//    FValor: Currency;
//  public
//    property Descricao: String read FDescricao write FDescricao;
//    property Valor: Currency read FValor write FValor;
//  end;


  TPedido = class
  private
    FNumero: Integer;
    FSerie: Integer;
    FCpf: String;
    FNome: String;
//    FItens: TObjectList<TPedidoItens>;
  public
    function AsJsonToString: String;

    property Numero: Integer read FNumero write FNumero;
    property Serie: Integer read FSerie write FSerie;
    property Cpf: String read FCpf write FCpf;
    property Nome: String read FNome write FNome;
//    property Itens: TObjectList<TPedidoItens> read FItens write FItens;
  end;

implementation

{ TPedido }

function TPedido.AsJsonToString: String;
begin

end;

end.
