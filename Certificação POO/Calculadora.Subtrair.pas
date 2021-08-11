unit Calculadora.Subtrair;

interface

uses
  Calculadora.Interfaces;

type
    TSubtrair = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(const _ANum1, _ANum2: Double): Double; overload;
    function Operacao(const _ANum1, _ANum2: String): String; overload;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TSubtrair }

constructor TSubtrair.Create;
begin

end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

class function TSubtrair.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TSubtrair.Operacao(const _ANum1, _ANum2: Double): Double;
begin
  Result := _ANum1 - _ANum2;
end;

function TSubtrair.Operacao(const _ANum1, _ANum2: String): String;
begin
  Result := CurrToStr(_ANum1.ToCurrency - _ANum2.ToCurrency);
end;

end.
