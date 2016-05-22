object FrmCalculoSalario: TFrmCalculoSalario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo de Salario'
  ClientHeight = 551
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageCalculoAutomatico: TcxPageControl
    Left = 0
    Top = 0
    Width = 467
    Height = 551
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    ExplicitWidth = 474
    ClientRectBottom = 545
    ClientRectLeft = 2
    ClientRectRight = 461
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'C'#225'lculo Manual'
      ImageIndex = 0
      ExplicitWidth = 466
      object CxLCbbOrganizacion: TcxLookupComboBox
        Left = 136
        Top = 88
        Properties.KeyFieldNames = 'idOrganizacion'
        Properties.ListColumns = <
          item
            FieldName = 'nombreorganizacion'
          end>
        Properties.ListSource = dsOrganizacion
        Properties.OnChange = CxLCbbOrganizacionPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.Color = 16701617
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 2
        Width = 321
      end
      object CxLCbbTipoNomina: TcxLookupComboBox
        Left = 136
        Top = 196
        Properties.KeyFieldNames = 'IdTipoNomina'
        Properties.ListColumns = <
          item
            FieldName = 'Titulo'
          end>
        Properties.ListSource = dsTipoNomina
        Properties.OnChange = CxLCbbTipoNominaPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 3
        Width = 321
      end
      object CxTextEdtSalMinDF: TcxTextEdit
        Left = 136
        Top = 61
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.Color = 16701617
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 1
        TextHint = 'Ingresa el Salario M'#237'nimo del D.F.'
        Width = 193
      end
      object CxTextEdtFactorPrimaDom: TcxTextEdit
        Left = 136
        Top = 115
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 7
        TextHint = 'Factor Prima Dominical'
        Width = 100
      end
      object CxTextEdtFactorPrimaVacacional: TcxTextEdit
        Left = 357
        Top = 115
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 8
        TextHint = 'Factor Prima Vacacional'
        Width = 100
      end
      object CxTextEdtSalMinGenZona: TcxTextEdit
        Left = 136
        Top = 142
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 9
        TextHint = 'Salario M'#237'nino de la Zona'
        Width = 100
      end
      object CxTextEdtSeguroVidaInfonavit: TcxTextEdit
        Left = 357
        Top = 142
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 10
        TextHint = 'Seguro de Vida Infonavit'
        Width = 100
      end
      object CxTextEdtDiasExcentoPrimaVac: TcxTextEdit
        Left = 136
        Top = 169
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 11
        TextHint = 'Dias Excento Prima Vacacional'
        Width = 100
      end
      object CxTextEdtDiasExcentoAguinaldo: TcxTextEdit
        Left = 357
        Top = 169
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 12
        TextHint = 'D'#237'as Excento Aguinaldo'
        Width = 100
      end
      object CxTextEdtDiasTrabajados: TcxTextEdit
        Left = 136
        Top = 223
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 13
        TextHint = 'D'#237'as Trabajados'
        Width = 100
      end
      object CxTextEdtDiaSDescanso: TcxTextEdit
        Left = 357
        Top = 223
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 14
        TextHint = 'D'#237'as Descanso'
        Width = 100
      end
      object CxTextEdtFestivos: TcxTextEdit
        Left = 136
        Top = 304
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 4
        Text = '0'
        TextHint = 'N'#250'm. Dias Festivos'
        Width = 100
      end
      object CxTextEdtDomingos: TcxTextEdit
        Left = 357
        Top = 304
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 5
        Text = '2'
        TextHint = 'N'#250'm. Domingos'
        Width = 100
      end
      object CxTextEdtInicioSemana: TcxTextEdit
        Left = 136
        Top = 250
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 15
        TextHint = 'D'#237'a Inicio Semana'
        Width = 321
      end
      object CxTextEdtPeriodicidad: TcxTextEdit
        Left = 136
        Top = 277
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 16
        TextHint = 'Periodicidad de Tipo N'#243'mina'
        Width = 321
      end
      object CxBtnCalcularSalario: TcxButton
        Left = 344
        Top = 369
        Width = 113
        Height = 25
        Caption = '&Calcular Salario'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 6
        OnClick = CxBtnCalcularSalarioClick
      end
      object CxTextEdtNeto: TcxTextEdit
        Left = 136
        Top = 17
        StyleFocused.Color = 16701617
        TabOrder = 0
        TextHint = 'Introduce el neto'
        Width = 273
      end
      object CxLbl2: TcxLabel
        Left = 12
        Top = 66
        Caption = 'Sal. Min. D.F.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl1: TcxLabel
        Left = 12
        Top = 18
        Caption = 'Sueldo a Obtener:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl3: TcxLabel
        Left = 12
        Top = 89
        Caption = 'Organizacion:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl4: TcxLabel
        Left = 12
        Top = 116
        Caption = 'Factor Prima Dom.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl5: TcxLabel
        Left = 242
        Top = 115
        Caption = 'Factor Prima Vac.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl6: TcxLabel
        Left = 12
        Top = 143
        Caption = 'Sal. Min. Gen. Zona:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl7: TcxLabel
        Left = 242
        Top = 143
        Caption = 'Seguro Vida Infonavit:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl8: TcxLabel
        Left = 12
        Top = 170
        Caption = 'D'#237'as Exc. Prima Vac.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl9: TcxLabel
        Left = 242
        Top = 170
        Caption = 'D'#237'as Exc. Aguinaldo:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl10: TcxLabel
        Left = 12
        Top = 201
        Caption = 'Tipo N'#243'mina:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl11: TcxLabel
        Left = 12
        Top = 224
        Caption = 'Dias Trabajados:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl12: TcxLabel
        Left = 242
        Top = 224
        Caption = 'D'#237'as Descanso:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl13: TcxLabel
        Left = 12
        Top = 251
        Caption = 'Inicio Semana:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl14: TcxLabel
        Left = 12
        Top = 278
        Caption = 'Periodicidad:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl15: TcxLabel
        Left = 12
        Top = 305
        Caption = 'No. D'#237'as Festivos:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl16: TcxLabel
        Left = 256
        Top = 304
        Caption = 'No. Domingos:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object cxRichEditCalculos: TcxRichEdit
        Left = 12
        Top = 400
        Properties.HideScrollBars = False
        Properties.ScrollBars = ssVertical
        Properties.StreamModes = [resmSelection]
        Lines.Strings = (
          'cxRichEditCalculos')
        TabOrder = 33
        Height = 105
        Width = 445
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 332
        Caption = 'Jornada'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxTextJornada: TcxTextEdit
        Left = 136
        Top = 331
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 35
        Text = '8'
        TextHint = 'N'#250'm. Dias Festivos'
        Width = 100
      end
      object cxLabel2: TcxLabel
        Left = 262
        Top = 331
        Caption = 'A'#241'os Antig'#252'edad:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxTextAntiguedad: TcxTextEdit
        Left = 357
        Top = 331
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 37
        Text = '1'
        TextHint = 'N'#250'm. Domingos'
        Width = 100
      end
    end
  end
  object CdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 65528
  end
  object CdSalMinDf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 65528
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 65528
  end
  object CdDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 65528
  end
  object CdPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 65528
  end
  object CdGrupoSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 65528
  end
  object dsTipoNomina: TDataSource
    DataSet = CdTipoNomina
    Left = 56
    Top = 16
  end
  object dsOrganizacion: TDataSource
    DataSet = CdOrganizacion
    Left = 48
    Top = 48
  end
  object CdSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 65528
  end
  object dsPercepciones: TDataSource
    DataSet = CdPercepciones
    Left = 464
    Top = 208
  end
  object dsDeducciones: TDataSource
    DataSet = CdDeducciones
    Left = 464
    Top = 160
  end
end
