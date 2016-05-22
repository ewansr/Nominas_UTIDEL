inherited FrmDatosRoles: TFrmDatosRoles
  Caption = 'Datos del Rol'
  ClientHeight = 343
  ClientWidth = 315
  ExplicitWidth = 331
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 306
    ExplicitTop = 306
    ExplicitWidth = 315
    Width = 315
    inherited BtnRec: TcxButton
      Left = 133
      ExplicitLeft = 133
    end
    inherited BtnAddNew: TcxButton
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = 3
    end
    inherited BtnCancel: TcxButton
      Left = 224
      ExplicitLeft = 224
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 315
    ExplicitHeight = 306
    Height = 306
    Width = 315
    object Label1: TcxLabel
      Left = 9
      Top = 19
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 9
      Top = 42
      Caption = 'T'#237'tulo:'
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 9
      Top = 65
      Caption = 'Descripci'#243'n:'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 9
      Top = 185
      Caption = 'Comentarios'
      Transparent = True
    end
    object DBEditCodigo: TDBEdit
      Left = 78
      Top = 16
      Width = 228
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'codigorol'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 78
      Top = 39
      Width = 228
      Height = 19
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'titulorol'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBMemoDescripcion: TDBMemo
      Left = 9
      Top = 80
      Width = 297
      Height = 89
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'descripcion'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBMemoComentarios: TDBMemo
      Left = 9
      Top = 199
      Width = 297
      Height = 82
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'comentarios'
      DataSource = dsDatos
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  inherited dsDatos: TDataSource
    Left = 152
    Top = 304
  end
  inherited Timer1: TTimer
    Left = 104
    Top = 296
  end
  inherited Timer2: TTimer
    Left = 64
    Top = 288
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 16
    Top = 296
  end
end
