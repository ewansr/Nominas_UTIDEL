object FrmSeleccionarDepartamento: TFrmSeleccionarDepartamento
  Left = 0
  Top = 0
  Caption = 'Seleccionar Departamento'
  ClientHeight = 258
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlDepto: TcxTreeList
    Left = 0
    Top = 0
    Width = 527
    Height = 217
    Align = alClient
    Bands = <
      item
        Caption.Text = 'C'#243'digo'
      end>
    Navigator.Buttons.CustomButtons = <>
    OptionsData.CancelOnExit = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    TabOrder = 0
    OnKeyDown = tlDeptoKeyDown
    OnSelectionChanged = tlDeptoSelectionChanged
    ExplicitLeft = 8
    ExplicitTop = 32
    ExplicitWidth = 335
    ExplicitHeight = 178
  end
  object Panel1: TPanel
    Left = 0
    Top = 217
    Width = 527
    Height = 41
    Align = alBottom
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 216
    object btn_Ok: TcxButton
      Left = 369
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      TabOrder = 0
      ExplicitLeft = 224
    end
    object btn_Cancelar: TcxButton
      Left = 444
      Top = 8
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      ExplicitLeft = 344
      ExplicitTop = -1
    end
  end
end
