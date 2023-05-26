unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Contnrs;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnCalcular: TButton;
    procedure BtnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

uses
  uProduto;

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtnCalcularClick(Sender: TObject);
var
  Produto:TObjectList;
  i:Integer;
begin

  Produto:=TObjectList.Create(True);
  try
    Produto.Add(TProduto.Create('Detergente', 4.60));
    Produto.Add(TProduto.Create('Arroz', 9.50));
    Produto.Add(TProduto.Create('Feijão', 8.69));
    Produto.Add(TProduto.Create('Macarrão', 13.10));

    for i:=0 to Produto.Count -1 do
    TProduto(Produto[i]).calcularDesconto;
  finally
    FreeAndNil(Produto);
  end;

end;

end.

