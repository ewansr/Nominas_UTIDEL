object FrmContratacionPersonalDX: TFrmContratacionPersonalDX
  Left = 0
  Top = 0
  Caption = 'Contrataci'#243'n de Personal'
  ClientHeight = 371
  ClientWidth = 447
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
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 371
    ActivePage = tabPostulantes
    Align = alClient
    TabOrder = 0
    TabWidth = 80
    object tabPostulantes: TTabSheet
      Caption = 'Postulantes'
      ExplicitHeight = 343
    end
    object tabDirecta: TTabSheet
      Caption = 'Directa'
      ImageIndex = 1
      ExplicitHeight = 343
    end
  end
end
