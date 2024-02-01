object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Banco de dados'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object MemoSql: TMemo
    Left = 0
    Top = 113
    Width = 624
    Height = 177
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 620
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 290
    Width = 624
    Height = 151
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 113
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 620
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 91
      Height = 15
      Caption = 'Bancop de dados'
    end
    object EdtCaminho: TEdit
      Left = 8
      Top = 32
      Width = 489
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 512
      Top = 31
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 104
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Exec'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=SYSDBA'
      'Port=3050'
      'Password=masterkey')
    LoginPrompt = False
    Left = 392
    Top = 120
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 336
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 280
    Top = 120
  end
end
