unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,uFuncionario,Contnrs;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAplicarAumento: TButton;
    procedure btnAplicarAumentoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnAplicarAumentoClick(Sender: TObject);
var
  Funcionarios:TObjectList;
  i:Integer;
begin
  Funcionarios:=TObjectList.Create(True);
  try
    Funcionarios.Add(TFuncionario.Create('Ruth',5200));
    Funcionarios.Add(TFuncionario.Create('João',3800));
    Funcionarios.Add(TFuncionario.Create('Felipe',4900));
    Funcionarios.Add(TFuncionario.Create('Marina',7500));

    for i:=0 to Funcionarios.Count -1 do
    TFuncionario(Funcionarios[i]).aumentarSalario;
  finally
    FreeAndNil(Funcionarios);
  end;

end;

end.

