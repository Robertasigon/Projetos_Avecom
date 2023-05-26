unit uFuncionario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;
type

  { TFuncionario }

  TFuncionario=class
    private
      FNome:string;
      FSalario:Double;
      procedure SetNome(v:string);
      procedure SetSalario(v:Double);
     public
       constructor Create(nome:string;salario:Double);
       function GetNome:string;
       function GetSalario:Double;
       procedure aumentarSalario;
  end;

implementation

{ TFuncionario }

procedure TFuncionario.SetNome(v: string);
begin
  FNome:=v;
end;

procedure TFuncionario.SetSalario(v: Double);
begin
 FSalario:=v;
end;

constructor TFuncionario.Create(nome: string; salario: Double);
begin
  FNome:=nome;
  FSalario:=salario
end;

function TFuncionario.GetNome: string;
begin
 Result:=FNome;
end;

function TFuncionario.GetSalario: Double;
begin
 Result:=FSalario;
end;

procedure TFuncionario.aumentarSalario;
begin
 if FSalario < 6000 then
 showmessage('Funcionario: '+FNome+' - Salário com aumento: '+FormatFloat('#0.00',FSalario+(FSalario*0.1)));
 end;


end.

