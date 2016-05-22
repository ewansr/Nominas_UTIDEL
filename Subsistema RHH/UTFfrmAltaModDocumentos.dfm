object FFrmAltaModDocumentos: TFFrmAltaModDocumentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Agregar Documentos'
  ClientHeight = 379
  ClientWidth = 632
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
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 632
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object NxButton2: TNxButton
      Left = 526
      Top = 0
      Width = 101
      Height = 42
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 430
      Top = 0
      Width = 96
      Height = 42
      Align = alRight
      Caption = 'Guardar'
      TabOrder = 1
      OnClick = NxButton3Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 332
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 363
      Height = 322
      Align = alLeft
      Caption = 'Alta/Renovacion de Documento'
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 16
        Top = 71
        Width = 92
        Height = 13
        Caption = 'Fecha Expedicion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 27
        Top = 111
        Width = 77
        Height = 13
        Caption = 'Fecha Vigencia:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 19
        Top = 152
        Width = 85
        Height = 13
        Caption = 'Fecha Aplicacion:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 45
        Top = 32
        Width = 60
        Height = 13
        Caption = 'Documento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBDateEdit1: TDBDateEdit
        Left = 110
        Top = 68
        Width = 219
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechaexpedicion'
        DataSource = dsdocxpersonal
        NumGlyphs = 2
        TabOrder = 0
      end
      object DBDateEdit2: TDBDateEdit
        Left = 110
        Top = 111
        Width = 219
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechavigencia'
        DataSource = dsdocxpersonal
        NumGlyphs = 2
        TabOrder = 1
      end
      object DBDateEdit3: TDBDateEdit
        Left = 110
        Top = 151
        Width = 219
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechaaplicacion'
        DataSource = dsdocxpersonal
        NumGlyphs = 2
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 111
        Top = 28
        Width = 183
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object NxButton1: TNxButton
        Left = 303
        Top = 28
        Width = 26
        Caption = '...'
        TabOrder = 4
        OnClick = NxButton1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 368
      Top = 5
      Width = 259
      Height = 322
      Align = alClient
      Caption = 'Anexar Documento escaneado'
      TabOrder = 1
      object Panel1: TPanel
        Left = 2
        Top = 279
        Width = 255
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 20
        Padding.Top = 10
        Padding.Right = 20
        Padding.Bottom = 10
        TabOrder = 0
        object Button1: TButton
          Left = 20
          Top = 10
          Width = 215
          Height = 21
          Align = alClient
          Caption = 'Cargar Imagen'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 255
        Height = 264
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 25
        Padding.Top = 15
        Padding.Right = 25
        Padding.Bottom = 10
        TabOrder = 1
        object JvDBImage1: TJvDBImage
          Left = 25
          Top = 15
          Width = 205
          Height = 239
          Align = alClient
          DataField = 'documento'
          DataSource = dsdocxpersonal
          Stretch = True
          TabOrder = 0
        end
      end
    end
  end
  object dsdocxpersonal: TDataSource
    DataSet = cddocxpersonal
    Left = 96
    Top = 208
  end
  object cddocxpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 192
  end
  object cddocumentospersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 232
  end
  object dsdocumentospersonal: TDataSource
    DataSet = cddocumentospersonal
    Left = 216
    Top = 208
  end
end
