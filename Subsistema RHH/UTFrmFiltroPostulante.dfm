object FrmFiltroPostulante: TFrmFiltroPostulante
  Left = 0
  Top = 0
  Caption = 'Filtro avanzado de Postulantes'
  ClientHeight = 301
  ClientWidth = 754
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 98
    Width = 754
    Height = 203
    Align = alClient
    Caption = 'Filtros existentes'
    TabOrder = 0
    object ListBox1: TListBox
      Left = 2
      Top = 15
      Width = 750
      Height = 145
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 160
      Width = 750
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Button2: TButton
        Left = 4
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 0
      end
      object Button3: TButton
        Left = 81
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 588
        Top = 12
        Width = 75
        Height = 25
        DoubleBuffered = True
        Kind = bkOK
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 669
        Top = 12
        Width = 75
        Height = 25
        DoubleBuffered = True
        Kind = bkCancel
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 98
    Align = alTop
    TabOrder = 1
    object Campo: TJvLabel
      Left = 107
      Top = 5
      Width = 35
      Height = 13
      Caption = 'Campo'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 290
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Operador'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 416
      Top = 5
      Width = 104
      Height = 13
      Caption = 'Valor de comparaci'#243'n'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 6
      Top = 5
      Width = 55
      Height = 13
      Caption = 'Conjunci'#243'n'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object ComboBox1: TComboBox
      Left = 107
      Top = 24
      Width = 177
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'AMaterno'
        'APaterno'
        'Calle'
        'Ciudad'
        'codigopostulante'
        'Colonia'
        'Contacto'
        'CP'
        'curp'
        'Estado'
        'fechaalta'
        'gruposanguineo'
        'Municipio'
        'Nombres'
        'Numero'
        'numerosegurosocial'
        'Pais'
        'rfc'
        'telefono'
        'TelefonoContacto'
        'CodigoPlazaDetalle'
        'CodigoPlaza'
        'TituloDepartamento'
        'TituloCargo'
        'CodigoPersonal')
    end
    object Button1: TButton
      Left = 8
      Top = 59
      Width = 145
      Height = 25
      Caption = 'Agregar nuevo Filtro'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ComboBox3: TComboBox
      Left = 290
      Top = 24
      Width = 120
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = ComboBox3Change
      Items.Strings = (
        'IGUAL A')
    end
    object Edit1: TEdit
      Left = 416
      Top = 24
      Width = 330
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
    end
    object ComboBox2: TComboBox
      Left = 6
      Top = 24
      Width = 95
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      OnChange = ComboBox2Change
      Items.Strings = (
        'Y')
    end
    object Button4: TButton
      Left = 159
      Top = 59
      Width = 145
      Height = 25
      Caption = 'Actualizar Filtro Modificado'
      Enabled = False
      TabOrder = 5
      OnClick = Button4Click
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 368
    Top = 152
  end
end
