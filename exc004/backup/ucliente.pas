unit uCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,Dialogs;
type

  { TCliente }

  TCliente=class
    private
      FNome:string;
      FEndereco:string;
      procedure SetNome(v:string);
      procedure SetEndereco(v:string);
    public
      constructor Create(Nome:string;Endereco:string);
      function GetNome:string;
      function GetEndereco:string;
      procedure exibirEnderecos;

  end;

implementation

{ TCliente }

procedure TCliente.SetNome(v: string);
begin
 FNome:=v;
end;

procedure TCliente.SetEndereco(v: string);
begin
 FEndereco:=v;
end;

constructor TCliente.Create(Nome: string; Endereco: string);
begin
 FNome:=Nome;
 FEndereco:=Endereco;
end;

function TCliente.GetNome: string;
begin
  Result:=FNome;
end;

function TCliente.GetEndereco: string;
begin
 Result:=FEndereco;
end;

procedure TCliente.exibirEnderecos;
begin
 showmessage('Nome cliente: '+FNome+' Endereço cliente: '+FEndereco);
end;

end.

