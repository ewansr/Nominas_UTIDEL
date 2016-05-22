object FrmEditUsuario: TFrmEditUsuario
  Left = 0
  Top = 0
  Caption = 'Usuario'
  ClientHeight = 272
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 11
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label2: TLabel
    Left = 24
    Top = 38
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 33
    Top = 65
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label4: TLabel
    Left = 28
    Top = 92
    Width = 42
    Height = 13
    Caption = 'Apellidos'
  end
  object Label5: TLabel
    Left = 37
    Top = 119
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object Label6: TLabel
    Left = 16
    Top = 146
    Width = 54
    Height = 13
    Caption = 'Descripcion'
  end
  object edtUsuario: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtPassword: TEdit
    Left = 80
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtNombre: TEdit
    Left = 80
    Top = 62
    Width = 337
    Height = 21
    TabOrder = 2
  end
  object EdtApellidos: TEdit
    Left = 80
    Top = 89
    Width = 337
    Height = 21
    TabOrder = 3
  end
  object EdtCargo: TEdit
    Left = 80
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object MComentarios: TMemo
    Left = 80
    Top = 143
    Width = 337
    Height = 89
    TabOrder = 5
  end
  object Button1: TButton
    Left = 144
    Top = 238
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
  end
  object Button2: TButton
    Left = 225
    Top = 238
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    ModalResult = 2
    TabOrder = 7
  end
end
