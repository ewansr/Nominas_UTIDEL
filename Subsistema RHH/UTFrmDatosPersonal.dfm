inherited FrmDatosPersonal: TFrmDatosPersonal
  Caption = 'FrmDatosPersonal'
  ClientHeight = 441
  ClientWidth = 793
  ExplicitWidth = 809
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 392
    Width = 793
    ExplicitTop = 392
    ExplicitWidth = 793
  end
  inherited PanelDatosLugares: TPanel
    Width = 793
    Height = 392
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ExplicitWidth = 793
    ExplicitHeight = 392
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 781
      Height = 380
      Align = alClient
      Caption = 'GroupBox1'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 19
        Top = 30
        Width = 83
        Height = 13
        Caption = 'C'#243'digo Personal:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 19
        Top = 249
        Width = 60
        Height = 13
        Caption = 'Descripci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 19
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Nombres:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 19
        Top = 83
        Width = 48
        Height = 13
        Caption = 'Apellidos:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 19
        Top = 142
        Width = 29
        Height = 13
        Caption = 'Curp:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel7: TJvLabel
        Left = 19
        Top = 110
        Width = 91
        Height = 13
        Caption = 'No. de seg. social:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel11: TJvLabel
        Left = 19
        Top = 164
        Width = 48
        Height = 13
        Caption = 'Telefono:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 19
        Top = 191
        Width = 91
        Height = 13
        Caption = 'Id. departamento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel10: TJvLabel
        Left = 19
        Top = 218
        Width = 56
        Height = 13
        Caption = 'Id. Puesto:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 378
        Top = 183
        Width = 101
        Height = 13
        Caption = 'Imagen de Personal:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit8: TDBEdit
        Left = 118
        Top = 138
        Width = 553
        Height = 21
        DataField = 'curp'
        DataSource = dsDatos
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 118
        Top = 110
        Width = 553
        Height = 21
        DataField = 'numerosegurosocial'
        DataSource = dsDatos
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 118
        Top = 83
        Width = 553
        Height = 21
        DataField = 'apellidos'
        DataSource = dsDatos
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 118
        Top = 56
        Width = 553
        Height = 21
        DataField = 'Nombres'
        DataSource = dsDatos
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 30
        Width = 553
        Height = 21
        DataField = 'codigopersonal'
        DataSource = dsDatos
        TabOrder = 4
      end
      object DBEdit11: TDBEdit
        Left = 116
        Top = 164
        Width = 244
        Height = 21
        DataField = 'telefono'
        DataSource = dsDatos
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 116
        Top = 191
        Width = 244
        Height = 21
        DataField = 'iddepartamento'
        DataSource = dsDatos
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 116
        Top = 218
        Width = 244
        Height = 21
        DataField = 'idpuesto'
        DataSource = dsDatos
        TabOrder = 7
      end
      object DBImage1: TDBImage
        Left = 479
        Top = 183
        Width = 192
        Height = 148
        DataField = 'imagenpersonal'
        DataSource = dsDatos
        TabOrder = 8
      end
      object DBMemo1: TDBMemo
        Left = 116
        Top = 245
        Width = 244
        Height = 89
        DataField = 'descripcion'
        DataSource = dsDatos
        TabOrder = 9
      end
      object NxImagePathEdit1: TNxImagePathEdit
        Left = 479
        Top = 337
        Width = 192
        Height = 21
        TabOrder = 10
        Text = 'NxImagePathEdit1'
        OnChange = NxImagePathEdit1Change
        OnEnter = NxImagePathEdit1Enter
        OnExit = NxImagePathEdit1Exit
        OnButtonClick = NxImagePathEdit1ButtonClick
        TransparentColor = clNone
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 728
    Top = 32
  end
end
