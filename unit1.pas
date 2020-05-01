unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure cbKotaChange(Sender: TObject);
    procedure cbxFotoChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  btnResetClick(sender);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.Lines.Add(Edit1.text);

  if (rgJenisKelamin.itemindex = 0) then
     begin
       Memo1.Lines.Add('Laki-laki');
     end
  else if (rgJenisKelamin.itemindex = 1) then
     begin
       Memo1.Lines.Add('Perempuan');
     end;

  Memo1.Lines.Add(cbKota.text);

  if (cbxFoto.checked) then
     begin
       memo1.lines.add('Foto ada');
     end;

  if (cbxKTP.checked) then
     begin
       memo1.lines.add('Fotokopi KTP ada');
     end;

  if (cbxIjazah.checked) then
     begin
       memo1.lines.add('Fotokopi Ijazah ada');
     end;

end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.text := '';
  Memo1.clear;
  rgJenisKelamin.itemindex := -1;
  cbKota.itemindex := -1;
  cbKota.text := '';
  cbxFoto.checked := false;
  cbxKTP.checked := false;
  cbxIjazah.checked := false;

end;

procedure TForm1.cbKotaChange(Sender: TObject);
begin

end;

procedure TForm1.cbxFotoChange(Sender: TObject);
begin

end;

end.

