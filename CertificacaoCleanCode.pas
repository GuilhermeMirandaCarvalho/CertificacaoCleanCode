unit CertificacaoCleanCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type

  TArquivo = class
    procedure GerarArquivo; virtual; abstract;
  end;

  TArquivoWord = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TArquivoPDF = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TArquivoTXT = class(TArquivo)
    procedure GerarArquivo; override;
  end;



  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TArquivoWord }
procedure TArquivoWord.GerarArquivo;
begin
//
end;

{ TArquivoPDF }
procedure TArquivoPDF.GerarArquivo;
begin
//
end;

{ TArquivoTXT }
procedure TArquivoTXT.GerarArquivo;
begin
//
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  Arquivo: TArquivoWord;
begin
  Arquivo:=TArquivoWord.Create;
  try
    Arquivo.GerarArquivo;
  finally
    Arquivo.Free;
  end;
end;

end.
