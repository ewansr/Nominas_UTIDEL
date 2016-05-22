object FrmSeleccionarPlaza: TFrmSeleccionarPlaza
  Left = 0
  Top = 0
  Caption = 'Abrir Solicitud de Plazas Vacantes'
  ClientHeight = 210
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 181
    Top = 49
    Width = 2
    Height = 130
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
  end
  object tvEstructura: TcxTreeView
    Left = 0
    Top = 49
    Width = 181
    Height = 130
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alLeft
    TabOrder = 0
    OnChange = tvEstructuraChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 49
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 1
    object rgTipoPlazas: TRadioGroup
      Left = 240
      Top = 1
      Width = 340
      Height = 47
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = 'Mostrar Solicitudes de Plazas:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Pendientes'
        'Completas'
        'Todas')
      TabOrder = 0
      OnClick = rgTipoPlazasClick
    end
    object Button1: TButton
      Left = 64
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object lvPlazas: TJvListView
    Left = 183
    Top = 49
    Width = 398
    Height = 130
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Columns = <
      item
        Caption = 'C'#243'digo Plaza'
        Width = 80
      end
      item
        Caption = 'Fecha Docto'
      end
      item
        Caption = 'Fecha Reg.'
      end
      item
        Caption = 'Plazas'
      end
      item
        Caption = 'Observaciones'
      end>
    Groups = <
      item
        GroupID = 0
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        GroupID = 1
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end>
    LargeImages = ClientModule1.Lista64
    GroupView = True
    PopupMenu = PopupMenu1
    SmallImages = ClientModule1.Lista16
    TabOrder = 2
    OnDblClick = lvPlazasDblClick
    ColumnsOrder = '0=80,1=50,2=50,3=50,4=50'
    ExtendedColumns = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 179
    Width = 581
    Height = 31
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Padding.Top = 5
    Padding.Right = 8
    Padding.Bottom = 5
    TabOrder = 3
    object Btn_Abrir: TcxButton
      Left = 460
      Top = 6
      Width = 56
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = '&Abrir'
      TabOrder = 0
      OnClick = Btn_AbrirClick
    end
    object Btn_Cancelar: TcxButton
      Left = 516
      Top = 6
      Width = 56
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dsOrganizacion: TDataSource
    Left = 384
    Top = 152
  end
  object dsCatalogoPlazas: TDataSource
    Left = 496
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 128
    object Iconos1: TMenuItem
      Caption = 'Iconos'
      OnClick = EstiloVistaClick
    end
    object Lista1: TMenuItem
      Tag = 1
      Caption = 'Lista'
      OnClick = EstiloVistaClick
    end
    object Reporte1: TMenuItem
      Tag = 2
      Caption = 'Reporte'
      OnClick = EstiloVistaClick
    end
    object Iconospequeos1: TMenuItem
      Tag = 3
      Caption = 'Iconos peque'#241'os'
      OnClick = EstiloVistaClick
    end
    object Encuadrado1: TMenuItem
      Caption = 'Encuadrado'
      OnClick = EstiloVistaClick
    end
  end
end
