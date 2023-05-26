unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uCliente, Contnrs;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnExibir: TButton;
    procedure btnExibirClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnExibirClick(Sender: TObject);
var
  Cliente:TObjectList;
  i:Integer;
begin
  Cliente:=TObjectList.Create(True);
  try
  Cliente.Add(TCliente.Create('Pedro', 'Rua Rio Preto, 102'));
  Cliente.Add(TCliente.Create('Ana', 'Rua Paqueta, 35'));
  Cliente.Add(TCliente.Create('Luiz', 'Rua Pequi, 528'));
  Cliente.Add(TCliente.Create('Márcia', 'Rua Girassol, 1203'));

  for i:=0 to Cliente.Count -1 do
  TCliente(Cliente[i]).exibirEnderecos;
  finally
    FreeAndNil(Cliente);
  end;

end;

end.

