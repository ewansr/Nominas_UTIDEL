object FrmModificacionSalario: TFrmModificacionSalario
  Left = 0
  Top = 0
  Caption = '   Modificaci'#242'n de Salario'
  ClientHeight = 337
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 562
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Btn_Guardar: TAdvShapeButton
      Left = 372
      Top = 6
      Width = 80
      Height = 22
      Appearance.Shape = bsRectangle
      Appearance.BorderColorHot = clBlack
      Appearance.BorderColorDown = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Guardar'
      Version = '5.0.1.4'
      OnClick = Btn_GuardarClick
    end
    object Btn_Cancelar: TAdvShapeButton
      Left = 458
      Top = 6
      Width = 80
      Height = 22
      Appearance.Shape = bsRectangle
      Appearance.BorderColorHot = clBlack
      Appearance.BorderColorDown = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Cancelar'
      Version = '5.0.1.4'
      OnClick = Btn_CancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object JvLabel3: TJvLabel
      Left = 38
      Top = 137
      Width = 72
      Height = 13
      Caption = 'Nuevo Salario:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 5
      Top = 165
      Width = 100
      Height = 13
      Caption = 'Fecha de Aplicaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel
      Left = 52
      Top = 189
      Width = 58
      Height = 13
      Caption = 'Referencia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel
      Left = 44
      Top = 249
      Width = 66
      Height = 13
      Caption = 'Comentarios:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object edSalario: TJvDBCalcEdit
      Left = 111
      Top = 135
      Width = 121
      Height = 21
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      DataField = 'Salario'
      DataSource = dsNuevoSalario
    end
    object dtAplicacion: TJvDBDateTimePicker
      Left = 111
      Top = 162
      Width = 105
      Height = 21
      Date = 41236.480218553240000000
      Time = 41236.480218553240000000
      TabOrder = 1
      DropDownDate = 41236.000000000000000000
      DataField = 'FechaAplicacion'
      DataSource = dsNuevoSalario
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 562
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Memo1: TMemo
        Left = 57
        Top = 9
        Width = 490
        Height = 40
        TabStop = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Este proceso le permite dar de alta la informaci'#243'n de un nuevo s' +
            'alario el cual quedar'#225' '
          
            'automaticamente disponible dentro del cat'#225'logo correspondiente p' +
            'ara ser asignado a '
          'uno o varios Cargos de personal dentro del sistema.')
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 56
      Width = 562
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 3
      object JvLabel1: TJvLabel
        Left = 35
        Top = 6
        Width = 74
        Height = 13
        Caption = 'C'#243'digo Salario:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 77
        Top = 25
        Width = 32
        Height = 13
        Caption = 'T'#237'tulo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 38
        Top = 44
        Width = 71
        Height = 13
        Caption = 'Salario Actual:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 357
        Top = 6
        Width = 53
        Height = 13
        Caption = 'Aplicaci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit2: TDBEdit
        Left = 111
        Top = 25
        Width = 432
        Height = 21
        BorderStyle = bsNone
        DataField = 'TituloSalario'
        DataSource = dsSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 111
        Top = 6
        Width = 218
        Height = 21
        BorderStyle = bsNone
        DataField = 'CodigoSalario'
        DataSource = dsSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 239
        Top = 44
        Width = 304
        Height = 21
        BorderStyle = bsNone
        DataField = 'TituloMoneda'
        DataSource = dsSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
      end
      object JvDBMaskEdit1: TJvDBMaskEdit
        Left = 111
        Top = 44
        Width = 121
        Height = 21
        BorderStyle = bsNone
        DataField = 'Salario'
        DataSource = dsSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 416
        Top = 6
        Width = 82
        Height = 21
        BorderStyle = bsNone
        DataField = 'FechaAplicacion'
        DataSource = dsSalario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 4
      end
    end
    object DBMemo1: TDBMemo
      Left = 111
      Top = 189
      Width = 436
      Height = 52
      DataField = 'Referencia'
      DataSource = dsModificacionSalario
      TabOrder = 4
    end
    object DBMemo2: TDBMemo
      Left = 111
      Top = 247
      Width = 436
      Height = 52
      DataField = 'Comentarios'
      DataSource = dsModificacionSalario
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 238
      Top = 165
      Width = 304
      Height = 13
      BorderStyle = bsNone
      DataField = 'TipoSalario'
      DataSource = dsSalario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 6
    end
  end
  object cdModificarSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 112
  end
  object dsModificacionSalario: TDataSource
    DataSet = cdModificarSalario
    Left = 368
    Top = 104
  end
  object dsSalario: TDataSource
    Left = 480
    Top = 144
  end
  object cdNuevoSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 88
  end
  object dsNuevoSalario: TDataSource
    DataSet = cdNuevoSalario
    Left = 480
    Top = 88
  end
end
