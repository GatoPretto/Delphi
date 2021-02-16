unit Controller.Item;

interface

uses
  Controller.Interfaces;
  type
    TControllerItem = class(TInterfacedObject, iControllerItem)
      private
         //[WEAK] - Dizendo ao compilador para n�o incrementar o contador de ref�rencia
         // ou seja, a partir do momento que esse objeto entrar em uma lista, o compilador
         // vai apontar para primeira ref�ncia desse objeto novamente,
         // garantindo assim que n�o haja vazamento de mem�ria
         // um exemplo cl�ssico � uma lista de objetos.
        [weak]
        FParent: IControllerVenda;
        FCodigo: Integer;
      public
        constructor Create(_AParent: IControllerVenda);
        destructor Destroy; override;
        class function New(_AParent: IControllerVenda): iControllerItem;
        function Codigo(_Acodigo: Integer): IControllerItem;
        function Vender: IControllerItem;
        function &End: IControllerItem;
    end;

implementation

{ TControllerItem }

function TControllerItem.Codigo(_Acodigo: Integer): IControllerItem;
begin
   FCodigo := _Acodigo;
   Result := self;
end;

function TControllerItem.&End: IControllerItem;
begin
  Result := FParent;

end;

constructor TControllerItem.Create(_AParent: IControllerVenda);
begin
  //02 - Inje��o de depend�ncia.
  FParent := _AParent;
end;

destructor TControllerItem.Destroy;
begin

  inherited;
end;

class function TControllerItem.New(_AParent: IControllerVenda): iControllerItem;
begin
  //01 - Inje��o de depend�ncia.
  Result := Self.Create(_AParent);
end;

function TControllerItem.Vender: IControllerItem;
begin
   Result := Self;
end;

end.
