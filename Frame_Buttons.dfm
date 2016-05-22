object FrameButtons: TFrameButtons
  Left = 0
  Top = 0
  Width = 622
  Height = 44
  Align = alTop
  AutoSize = True
  Padding.Left = 4
  Padding.Top = 4
  Padding.Right = 4
  Padding.Bottom = 4
  TabOrder = 0
  ExplicitWidth = 451
  object BtnRefresh: TAdvToolButton
    Left = 247
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Volver a leer el conjunto de registros'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Recargar'
    ImageIndex = 3
    Images = ClientModule1.PngImageList1
    Version = '1.6.1.0'
    ExplicitLeft = 237
    ExplicitTop = -6
    ExplicitHeight = 44
  end
  object BtnDelete: TAdvToolButton
    Left = 166
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Eliminar registro actual'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Eliminar'
    ImageIndex = 5
    Images = ClientModule1.PngImageList1
    Version = '1.6.1.0'
    ExplicitLeft = 156
    ExplicitTop = 0
    ExplicitHeight = 44
  end
  object BtnEdit: TAdvToolButton
    Left = 85
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Editar registro actual'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Editar'
    ImageIndex = 4
    Images = ClientModule1.PngImageList1
    Version = '1.6.1.0'
    ExplicitLeft = 87
    ExplicitTop = -6
    ExplicitHeight = 44
  end
  object BtnAdd: TAdvToolButton
    Left = 4
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Agregar un nuevo registro'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Agregar'
    ImageIndex = 0
    Images = ClientModule1.PngImageList1
    Version = '1.6.1.0'
    ExplicitLeft = 1
    ExplicitTop = -6
    ExplicitHeight = 44
  end
  object BtnBuscar: TAdvToolButton
    Left = 328
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Volver a leer el conjunto de registros'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Importar'
    ImageIndex = 21
    Images = ClientModule1.PngImageList1
    Visible = False
    Version = '1.6.1.0'
    ExplicitLeft = 255
    ExplicitTop = 8
  end
  object BtnFiltrar: TAdvToolButton
    Left = 490
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Volver a leer el conjunto de registros'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Filtrar'
    ImageIndex = 20
    Images = ClientModule1.PngImageList1
    Visible = False
    Version = '1.6.1.0'
    ExplicitLeft = 336
    ExplicitTop = 8
  end
  object AdvToolButton1: TAdvToolButton
    Left = 409
    Top = 4
    Width = 81
    Height = 36
    Hint = 'Volver a leer el conjunto de registros'
    Align = alLeft
    AutoThemeAdapt = False
    ColorDown = 14210002
    ColorHot = 13289415
    Caption = 'Buscar'
    ImageIndex = 19
    Images = ClientModule1.PngImageList1
    Visible = False
    Version = '1.6.1.0'
    ExplicitLeft = 334
    ExplicitTop = 1
  end
end
