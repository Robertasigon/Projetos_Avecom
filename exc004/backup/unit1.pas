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

  finally
  end;

end;

end.

