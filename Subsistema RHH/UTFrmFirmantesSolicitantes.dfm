object FrmFirmantesSolicitantes: TFrmFirmantesSolicitantes
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 423
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridAutorizacion: TDBGrid
    Left = 0
    Top = 41
    Width = 1020
    Height = 136
    Align = alTop
    DataSource = dsAutorizaciones
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TipoFirma'
        Title.Caption = 'Donde'
        Width = 154
        Visible = True
      end>
  end
  object GridCargo: TDBGrid
    Left = 0
    Top = 183
    Width = 1014
    Height = 193
    Align = alClient
    DataSource = dsAutorizacionesxCargo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = pmExcepcionPersonal
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridCargoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'LeyendaCargo'
        Width = 493
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 41
    Align = alTop
    TabOrder = 2
    object lblAplica: TLabel
      Left = 24
      Top = 11
      Width = 60
      Height = 13
      Caption = ' Aplica Para:'
    end
    object cbModo: TComboBox
      Left = 96
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbModoChange
      Items.Strings = (
        'PLAZAS VACANTES'
        'REQUISICION INSUMOS'
        'SALIDAS DE ALMAC'#201'N')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 1020
    Height = 47
    Align = alBottom
    Padding.Left = 7
    Padding.Top = 7
    Padding.Right = 7
    Padding.Bottom = 7
    TabOrder = 3
    object btn_Nuevo: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 31
      Align = alLeft
      Caption = '&Nuevo'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ClientModule1.PngImageList1
      TabOrder = 0
      OnClick = btn_NuevoClick
    end
    object btn_Editar: TcxButton
      Left = 83
      Top = 8
      Width = 75
      Height = 31
      Align = alLeft
      Caption = '&Editar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = ClientModule1.PngImageList1
      TabOrder = 1
      OnClick = btn_EditarClick
    end
    object btn_Borrar: TcxButton
      Left = 158
      Top = 8
      Width = 75
      Height = 31
      Align = alLeft
      Caption = '&Borrar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = ClientModule1.PngImageList1
      TabOrder = 2
      OnClick = btn_BorrarClick
    end
    object btn_AgregarEmpleado: TcxButton
      Left = 265
      Top = 8
      Width = 144
      Height = 31
      Hint = 'Agregar un solo Empleado sin importar su Puesto de Trabajo'
      Align = alLeft
      Caption = '&Agregar 1 Empleado'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = ClientModule1.PngImageList1
      TabOrder = 3
      OnClick = btn_AgregarEmpleadoClick
    end
    object btn_QuitarEmpleado: TcxButton
      Left = 409
      Top = 8
      Width = 144
      Height = 31
      Hint = 
        'Eliminar un Empleado solamente de los Puestos de Trabajo que han' +
        ' sido permitidos'
      Align = alLeft
      Caption = '&Quitar 1 Empleado'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = ClientModule1.PngImageList1
      TabOrder = 4
      OnClick = btn_QuitarEmpleadoClick
    end
    object Panel3: TPanel
      Left = 233
      Top = 8
      Width = 32
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 177
    Width = 1020
    Height = 6
    AlignSplitter = salTop
  end
  object cxSplitter2: TcxSplitter
    Left = 1014
    Top = 183
    Width = 6
    Height = 193
    AlignSplitter = salRight
  end
  object dsAutorizaciones: TDataSource
    AutoEdit = False
    DataSet = cdAutorizaciones
    Left = 64
    Top = 104
  end
  object dsAutorizacionesxCargo: TDataSource
    DataSet = cdAutorizacionesxCargo
    Left = 48
    Top = 216
  end
  object cdAutorizaciones: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdAutorizacionesAfterScroll
    Left = 160
    Top = 104
  end
  object cdCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 80
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 80
  end
  object cdAutorizacionesxCargoUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdAutorizacionesxCargoUptBeforePost
    Left = 56
    Top = 296
  end
  object cdAutorizacionesxCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 216
  end
  object dsCargo: TDataSource
    DataSet = cdCargos
    Left = 568
    Top = 24
  end
  object pmExcepcionPersonal: TPopupMenu
    Left = 312
    Top = 216
    object AgregarExcepcion1: TMenuItem
      Caption = 'Agregar Excepcion'
    end
  end
end
