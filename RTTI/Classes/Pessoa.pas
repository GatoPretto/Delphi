unit Pessoa;

interface

uses
  RttiUteis;

type
  TPessoa = class
    private
    FIdade: Integer;
    FNome: String;
    FEndereco: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetEndereco(const Value: String);
    public
      constructor Create;
      [NotNull('O nome n�o pode ser nulo')]
      [MininoLength(5,'O nome n�o pode ser menor que 5 caracteres')]
      property Nome: String read FNome write SetNome;
      property Idade: Integer read FIdade write SetIdade;
      [NotNull('O endere�o n�o pode ser nulo')]
      [MininoLength(3,'O endere�o n�o pode ser menor que 3 caracteres')]
      property Endereco: String read FEndereco write SetEndereco;
  end;

implementation

constructor TPessoa.Create;
begin
   FNome := 'AULA 01';
   FIdade := 29;
   FEndereco := 'Rua Delphi';
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
