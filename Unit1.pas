unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    MemoSql: TMemo;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    EdtCaminho: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.Connected :=false;
  try
    FDConnection1.Params.Database := EdtCaminho.Text;
    FDConnection1.Connected :=true;
    ShowMessage('Conectado!');
  except
    ShowMessage('Erro ao Conectar!');

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
    FDQuery1.close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add(MemoSql.Lines.Text);
    FDQuery1.open;
  except
    showmessage('Erro ao abrir o sql.');
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
    FDQuery1.close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add(MemoSql.Lines.Text);
    FDQuery1.ExecSQL;
    showmessage('Sql executado com sucesso.');

  except
    showmessage('Erro ao executar sql.');
  end;

end;

end.
