unit unI2BString;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, StdCtrls;

function i2bSplit(strOriginal:String; corteEm:string):TStringList;

implementation

function i2bSplit(strOriginal:String; corteEm:string):TStringList;
var strlRetorno:TStringList;
var aux:string;
var i, tamCorte:integer;
var ultCorte, ultTamanho:integer;
var toAdd:String;
begin
  tamCorte := length(corteEm);
  strlRetorno := TStringList.Create;
  ultCorte := 1;
  ultTamanho := 0;
  for i:=1 to length(strOriginal)-tamCorte+1 do
  begin
    aux := copy(strOriginal,i,tamCorte);
    if uppercase(aux) = uppercase(corteEm) then
    begin
      toAdd := copy(strOriginal,ultCorte,ultTamanho);
      if toAdd <> '' then
        strlRetorno.Add(toAdd);
      ultTamanho := 0;
      ultCorte := i+tamCorte;
    end
    else
      inc(ultTamanho)
  end;
  strlRetorno.Add(copy(strOriginal,ultCorte,ultTamanho+tamCorte));
  result := strlRetorno;
end;

end.
