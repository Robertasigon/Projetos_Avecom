unit uProduto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,Dialogs;
type

  { TProduto }

  TProduto=class
    private
      FNome:string;
      FPreco:Double;
      procedure SetNome(v:string);
      procedure SetPreco(v:double);
    public
      constructor Create(nome:string;preco:Double);
      function GetNome:string;
      function GetPreco:Double;
      procedure calcularDesconto;
  end;

implementation

{ TProduto }

procedure TProduto.SetNome(v: string);
begin
 FNome:=v;
end;

procedure TProduto.SetPreco(v: double);
begin
 FPreco:=v;
end;

constructor TProduto.Create(nome: string; preco: Double);
begin
  FNome:=nome;
  FPreco:=preco;
end;

function TProduto.GetNome: string;
begin
 Result:=FNome;
end;

function TProduto.GetPreco: Double;
begin
 Result:=FPreco;
end;

procedure TProduto.calcularDesconto;
begin
  if FPreco > 5 then
  showmessage('Produto: '+FNome+' - Preço com desconto: '+FormatFloat('#0.00',FPreco-(FPreco*0.1)))
  else
    showmessage('Produto: '+FNome+' - Preço: '+FloatToStr(FPreco));
end;

end.

