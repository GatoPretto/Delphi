unit model.endereco;

interface

uses
  model.interfaces;

type
  // restrinjo meu endere�o para ser apenas do tipo interface
  // porque preciso tipificar para conseguir utilizar o WEAK
  TEndereco<T: iInterface> = class(TInterfacedObject, iEndereco<T>)
    private
      // ref�rencia fraca, n�o agrega na contagem de inje��o de depend�ncia dessa classe para
      // posteriormente ser limpo da mem�ria.
      [Weak]
      FParent: T;
      FRua: String;
    public
      function Rua(_ANomeRua: String): iEndereco<T>; overload;
      function Rua: String; overload;
      function &End: T; // ao terminar de usar essa classe, posso utilizar os m�todos da classe pai (d� classe que est� implementado o endere�o)
      constructor Create(_AParent: T);
      destructor Destroy; override;
      class function New(_AParent: T): iEndereco<T>;
  end;

implementation

{ TEndereco<T> }

constructor TEndereco<T>.Create(_AParent: T);
begin
  FParent := _AParent;
end;

destructor TEndereco<T>.Destroy;
begin

  inherited;
end;

function TEndereco<T>.&End: T;
begin
   Result := FParent;
end;

class function TEndereco<T>.New(_AParent: T): iEndereco<T>;
begin
  Result := Self.Create(_AParent);
end;

function TEndereco<T>.Rua(_ANomeRua: String): iEndereco<T>;
begin
  Result := Self;
  FRua := _ANomeRua;
end;

function TEndereco<T>.Rua: String;
begin
  Result := FRua;
end;

end.
