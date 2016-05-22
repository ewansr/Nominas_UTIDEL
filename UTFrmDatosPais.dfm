inherited FrmDatosPais: TFrmDatosPais
  Caption = 'Datos del pais'
  ClientHeight = 300
  ClientWidth = 348
  ExplicitWidth = 364
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 263
    ExplicitTop = 263
    ExplicitWidth = 348
    Width = 348
    inherited BtnRec: TcxButton
      Left = 166
      ExplicitLeft = 166
    end
    inherited BtnAddNew: TcxButton
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = 3
    end
    inherited BtnCancel: TcxButton
      Left = 257
      ExplicitLeft = 257
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 348
    ExplicitHeight = 263
    Height = 263
    Width = 348
    object Label1: TcxLabel
      Left = 9
      Top = 23
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 9
      Top = 48
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 9
      Top = 76
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object DBEditCodigo: TDBEdit
      Left = 81
      Top = 21
      Width = 256
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigopais'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 81
      Top = 45
      Width = 256
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'titulopais'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBMemoComentarios: TDBRichEdit
      Left = 9
      Top = 91
      Width = 328
      Height = 150
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'comentario'
      DataSource = dsDatos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PlainText = True
      TabOrder = 2
    end
  end
  inherited Timer2: TTimer
    Left = 48
    Top = 176
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 16
    Top = 176
  end
end
