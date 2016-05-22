object FrmAnalisisPostulantes: TFrmAnalisisPostulantes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'An'#225'lisis de Postulantes'
  ClientHeight = 375
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel1: TJvLabel
    Left = 16
    Top = 79
    Width = 147
    Height = 13
    Caption = #191'Qu'#233' personal se debe incluir?'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel2: TJvLabel
    Left = 16
    Top = 106
    Width = 128
    Height = 13
    Caption = 'Criterio de Documentaci'#243'n'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel3: TJvLabel
    Left = 16
    Top = 133
    Width = 115
    Height = 13
    Caption = 'Estado de Contrataci'#243'n'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel4: TJvLabel
    Left = 16
    Top = 8
    Width = 529
    Height = 14
    Caption = 
      'Seleccione el criterio de Personal que desea analizar en base al' +
      ' perfil especificado para el puesto:'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel5: TJvLabel
    Left = 32
    Top = 27
    Width = 52
    Height = 13
    Caption = 'JvLabel5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel6: TJvLabel
    Left = 16
    Top = 207
    Width = 182
    Height = 13
    Caption = 'Forzar la inclusi'#243'n de estas Personas:'
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object JvLabel7: TJvLabel
    Left = 32
    Top = 46
    Width = 52
    Height = 13
    Caption = 'JvLabel7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object cbModo: TComboBox
    Left = 166
    Top = 79
    Width = 283
    Height = 21
    Style = csDropDownList
    ItemIndex = 2
    TabOrder = 0
    Text = '< Todo el personal >'
    OnChange = cbModoChange
    Items.Strings = (
      'Solo Postulantes asignados'
      'Todo el personal excepto los postulantes asignados'
      '< Todo el personal >')
  end
  object cbCuales: TComboBox
    Left = 166
    Top = 106
    Width = 395
    Height = 21
    Style = csDropDownList
    ItemIndex = 4
    TabOrder = 1
    Text = '< Sin criterio de documentaci'#243'n >'
    OnChange = cbCualesChange
    Items.Strings = (
      'Que cumplan con la documentaci'#243'n exacta'
      'Que pueden tener menos documentos de los requeridos'
      
        'Que pueden tener menos documentos e incluso ninguno de los reque' +
        'ridos'
      'Que tenga extrictamente m'#225's documentos de los requeridos'
      '< Sin criterio de documentaci'#243'n >')
  end
  object cbEstado: TComboBox
    Left = 166
    Top = 133
    Width = 283
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = '< Sin criterio de contrataci'#243'n >'
    OnChange = cbEstadoChange
    Items.Strings = (
      '< Sin criterio de contrataci'#243'n >'
      'Personal nunca contrado'
      'Personal que ya ha sido contratado con anterioridad'
      'Personal que actualmente est'#225' contratado'
      'Personal que no est'#225' contratado actualmente')
  end
  object btnAceptar: TcxButton
    Left = 405
    Top = 342
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    TabOrder = 3
    OnClick = btnAceptarClick
  end
  object btnCancelar: TcxButton
    Left = 486
    Top = 342
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object GridListaPersonal: TStringGrid
    Left = 16
    Top = 226
    Width = 545
    Height = 110
    ColCount = 3
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 100
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    PopupMenu = PopPersonal
    ScrollBars = ssVertical
    TabOrder = 5
    OnSelectCell = GridListaPersonalSelectCell
  end
  object cbDocumentos: TCheckBox
    Left = 16
    Top = 168
    Width = 193
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Mostrar documentos por personal'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object cbpersonal: TComboBox
    Left = 328
    Top = 199
    Width = 233
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    Text = 'Incluir todo el personal'
    Items.Strings = (
      'Incluir todo el personal'
      'Todo el personal mas los de esta lista.')
  end
  object pnlListaPersonal: TPanel
    Left = 70
    Top = 299
    Width = 241
    Height = 84
    TabOrder = 8
    Visible = False
    object lblCodigoPersonal: TLabel
      Left = 12
      Top = 19
      Width = 81
      Height = 13
      Caption = 'C'#243'digo Personal:'
    end
    object txtCodigoPersonal: TcxTextEdit
      Left = 99
      Top = 16
      TabOrder = 0
      Text = 'Codigo Personal'
      Width = 121
    end
    object btnAceptar1: TcxButton
      Left = 66
      Top = 43
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnAceptar1Click
    end
    object btnCancelar1: TcxButton
      Left = 147
      Top = 43
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      OnClick = btnCancelar1Click
    end
  end
  object dsPlazaDetalleGpo: TDataSource
    Left = 448
    Top = 72
  end
  object dsPostulante: TDataSource
    Left = 536
    Top = 72
  end
  object PopPersonal: TPopupMenu
    Left = 544
    Top = 8
    object btnAgregar: TMenuItem
      Caption = 'Agregar'
      OnClick = btnAgregarClick
    end
    object BtnQuitar: TMenuItem
      Caption = 'Quitar'
      OnClick = BtnQuitarClick
    end
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 144
  end
  object dsPersonal: TDataSource
    Left = 544
    Top = 136
  end
  object dsPersonalLista: TDataSource
    DataSet = cdPersonalLista
    Left = 264
    Top = 160
  end
  object cdPersonalLista: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 160
  end
end
