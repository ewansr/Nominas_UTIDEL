object FrmContratarPersonal: TFrmContratarPersonal
  Left = 0
  Top = 0
  Caption = 'Contrataci'#243'n de Personal'
  ClientHeight = 437
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 501
    Height = 437
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 88
    ExplicitTop = 72
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 431
    ClientRectLeft = 2
    ClientRectRight = 495
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 30
      object pnlDatos1: TPanel
        Left = 0
        Top = 0
        Width = 493
        Height = 171
        Align = alTop
        TabOrder = 0
        object CxLbl1: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Organizaci'#243'n:'
        end
        object CxLbl2: TcxLabel
          Left = 8
          Top = 31
          Caption = 'Convenio:'
        end
        object CxLCbbOrganizacion: TcxLookupComboBox
          Left = 84
          Top = 7
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 381
        end
        object CxLCbbConvenio: TcxLookupComboBox
          Left = 84
          Top = 31
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 381
        end
        object CxLbl3: TcxLabel
          Left = 8
          Top = 72
          Caption = 'Registro Patronal:'
        end
        object CxLbl4: TcxLabel
          Left = 8
          Top = 95
          Caption = 'Tipo de N'#243'mina:'
        end
        object CxLbl8: TcxLabel
          Left = 8
          Top = 118
          Caption = 'Departamento:'
        end
        object CxLbl9: TcxLabel
          Left = 8
          Top = 140
          Caption = 'Puesto:'
        end
      end
      object pnlDatos2: TPanel
        Left = 0
        Top = 171
        Width = 493
        Height = 56
        Align = alTop
        TabOrder = 1
        ExplicitTop = 121
        object CxLbl6: TcxLabel
          Left = 8
          Top = 29
          Caption = 'Periodo de Guardia'
        end
        object CxLbl5: TcxLabel
          Left = 8
          Top = 6
          Caption = 'Guardia:'
        end
      end
      object cxGBDatos3: TcxGroupBox
        Left = 0
        Top = 227
        Align = alTop
        Caption = 'Selecciona fecha de Contrato / Subida'
        Style.LookAndFeel.SkinName = 'Whiteprint'
        StyleDisabled.LookAndFeel.SkinName = 'Whiteprint'
        StyleFocused.LookAndFeel.SkinName = 'Whiteprint'
        StyleHot.LookAndFeel.SkinName = 'Whiteprint'
        TabOrder = 2
        ExplicitTop = 177
        Height = 64
        Width = 493
        object CxLbl7: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Fecha:'
        end
      end
    end
  end
end
