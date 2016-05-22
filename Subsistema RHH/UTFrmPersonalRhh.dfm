object FrmPersonalRhh: TFrmPersonalRhh
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmPersonalRhh'
  ClientHeight = 680
  ClientWidth = 1303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel20: TJvLabel
    Left = 24
    Top = 141
    Width = 36
    Height = 13
    Caption = 'CURP: '
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 637
    Width = 1303
    Height = 43
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 991
      Top = 6
      Width = 152
      Height = 31
      Hint = 'Pulse aqu'#237' para guardar.'
      Align = alRight
      Caption = 'Grabar'
      Default = True
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 1143
      Top = 6
      Width = 154
      Height = 31
      Hint = 'Pulse aqu'#237' para cancelar.'
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 25
    Width = 1303
    Height = 612
    Align = alClient
    DragMode = dmAutomatic
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    OnDragDrop = Panel4DragDrop
    OnDragOver = Panel4DragOver
    object PageControl1: TPageControl
      Left = 6
      Top = 6
      Width = 1291
      Height = 600
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Ficha'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1283
          Height = 572
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 1283
            Height = 572
            Align = alClient
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 3
              Top = 1
              Width = 1246
              Height = 564
              Caption = 'Datos Informativos del Personal'
              DragMode = dmAutomatic
              TabOrder = 0
              object JvLabel27: TJvLabel
                Left = 3
                Top = 396
                Width = 49
                Height = 13
                Caption = 'Contrato:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object Button1: TButton
                Left = 810
                Top = 21
                Width = 75
                Height = 25
                Caption = 'Button1'
                TabOrder = 0
                Visible = False
                OnClick = Button1Click
              end
              object JvDBImage1: TJvDBImage
                Left = 7
                Top = 21
                Width = 115
                Height = 92
                DataField = 'imagen'
                DataSource = dspersonal
                Stretch = True
                TabOrder = 1
              end
              object GbDomicilio: TGroupBox
                Left = 199
                Top = 240
                Width = 962
                Height = 115
                Caption = 'Domicilio'
                TabOrder = 2
                object JvLabel40: TJvLabel
                  Tag = 13
                  Left = 19
                  Top = 27
                  Width = 29
                  Height = 13
                  Caption = 'Calle:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel41: TJvLabel
                  Tag = 17
                  Left = 556
                  Top = 27
                  Width = 43
                  Height = 13
                  Caption = 'N'#250'mero:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel42: TJvLabel
                  Tag = 14
                  Left = 7
                  Top = 49
                  Width = 41
                  Height = 13
                  Caption = 'Col'#243'nia:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel43: TJvLabel
                  Tag = 18
                  Left = 458
                  Top = 49
                  Width = 68
                  Height = 13
                  Caption = 'Del/Municipio:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel44: TJvLabel
                  Tag = 15
                  Left = 9
                  Top = 71
                  Width = 39
                  Height = 13
                  Caption = 'Ciudad:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel45: TJvLabel
                  Tag = 19
                  Left = 487
                  Top = 71
                  Width = 39
                  Height = 13
                  Caption = 'Estado:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel46: TJvLabel
                  Tag = 16
                  Left = 20
                  Top = 90
                  Width = 28
                  Height = 13
                  Caption = 'Pais: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel47: TJvLabel
                  Tag = 20
                  Left = 499
                  Top = 93
                  Width = 27
                  Height = 13
                  Caption = 'C.P.:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBEditCalle: TDBEdit
                  Tag = 13
                  Left = 55
                  Top = 24
                  Width = 474
                  Height = 21
                  Hint = 'Ingrese un nombre o numero de calle.'
                  DataField = 'Calle'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBEditNumero: TDBEdit
                  Tag = 17
                  Left = 603
                  Top = 24
                  Width = 342
                  Height = 21
                  Hint = 'Ingrese un n'#250'mero de vivienda.'
                  DataField = 'Numero'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBEditColonia: TDBEdit
                  Tag = 14
                  Left = 54
                  Top = 46
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese una colonia.'
                  DataField = 'Colonia'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object DBEditMunicipio: TDBEdit
                  Tag = 1
                  Left = 528
                  Top = 46
                  Width = 417
                  Height = 21
                  Hint = 'Ingrese un municipio.'
                  DataField = 'Municipio'
                  DataSource = dspersonal
                  MaxLength = 18
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
                object DBEditCiudad: TDBEdit
                  Tag = 15
                  Left = 54
                  Top = 68
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese una ciudad.'
                  DataField = 'Ciudad'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBEditEstado: TDBEdit
                  Tag = 19
                  Left = 527
                  Top = 68
                  Width = 418
                  Height = 21
                  Hint = 'Ingrese un estado.'
                  DataField = 'Estado'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                end
                object DBEditPais: TDBEdit
                  Tag = 16
                  Left = 54
                  Top = 90
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese un pais.'
                  DataField = 'Pais'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                end
                object DBEditCP: TDBEdit
                  Tag = 20
                  Left = 528
                  Top = 90
                  Width = 417
                  Height = 21
                  Hint = 'Ingrese un C.P.'
                  DataField = 'CP'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
                end
              end
              object GbNacimiento: TGroupBox
                Left = 199
                Top = 356
                Width = 962
                Height = 108
                Caption = 'Datos de Nacimiento'
                TabOrder = 3
                object JvLabel48: TJvLabel
                  Tag = 21
                  Left = 14
                  Top = 19
                  Width = 105
                  Height = 13
                  Caption = 'Fecha de Nacimiento:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel49: TJvLabel
                  Tag = 23
                  Left = 483
                  Top = 14
                  Width = 42
                  Height = 13
                  Caption = 'Ciudad: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel50: TJvLabel
                  Tag = 22
                  Left = 74
                  Top = 40
                  Width = 42
                  Height = 13
                  Caption = 'Estado: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel51: TJvLabel
                  Tag = 24
                  Left = 464
                  Top = 36
                  Width = 61
                  Height = 13
                  Caption = 'Delegacion: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel52: TJvLabel
                  Tag = 25
                  Left = 6
                  Top = 63
                  Width = 164
                  Height = 13
                  Caption = 'Apellidos y Nombres de la Madre: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel53: TJvLabel
                  Tag = 26
                  Left = 7
                  Top = 86
                  Width = 162
                  Height = 13
                  Caption = 'Apellidos y Nombres de la Padre: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBDateEdit4: TDBDateEdit
                  Tag = 21
                  Left = 121
                  Top = 13
                  Width = 295
                  Height = 21
                  Hint = 'Ingrese una fecha de nacimiento.'
                  Margins.Left = 4
                  Margins.Top = 1
                  DataField = 'Fechanacimiento'
                  DataSource = dspersonal
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBEdit3: TDBEdit
                  Tag = 23
                  Left = 528
                  Top = 9
                  Width = 417
                  Height = 21
                  Hint = 'Ingrese una ciudad.'
                  DataField = 'Ciudadnacimiento'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBEdit11: TDBEdit
                  Tag = 22
                  Left = 122
                  Top = 36
                  Width = 294
                  Height = 21
                  DataField = 'Estadonacimiento'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object DBEdit18: TDBEdit
                  Tag = 24
                  Left = 528
                  Top = 32
                  Width = 417
                  Height = 21
                  Hint = 'Ingrese una delegaci'#243'n.'
                  DataField = 'Delegacion'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
                object DBEdit19: TDBEdit
                  Tag = 25
                  Left = 175
                  Top = 59
                  Width = 762
                  Height = 21
                  Hint = 'Ingrese nombre completo de la madre.'
                  DataField = 'Nombremadre'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBEdit20: TDBEdit
                  Tag = 26
                  Left = 173
                  Top = 82
                  Width = 764
                  Height = 21
                  Hint = 'Ingrese nombre completo del padre.'
                  DataField = 'Nombrepadre'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                end
              end
              object JvDBImage2: TJvDBImage
                Left = 3
                Top = 415
                Width = 158
                Height = 117
                DataField = 'doccontratacion'
                DataSource = dspersonal
                Stretch = True
                TabOrder = 4
              end
              object NxButton1: TNxButton
                Left = 3
                Top = 538
                Width = 158
                Caption = 'Cargar Imagen'
                TabOrder = 5
                OnClick = NxButton1Click
              end
              object NxButton2: TNxButton
                Left = 6
                Top = 118
                Width = 115
                Caption = 'Imagen Personal'
                TabOrder = 6
                OnClick = NxButton2Click
              end
              object GbDescripcion: TGroupBox
                Left = 199
                Top = 463
                Width = 962
                Height = 96
                TabOrder = 8
                object JvLabel21: TJvLabel
                  Left = 13
                  Top = 15
                  Width = 60
                  Height = 13
                  Caption = 'Descripcion:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBMemo1: TDBMemo
                  Left = 79
                  Top = 15
                  Width = 858
                  Height = 68
                  DataField = 'descripcion'
                  DataSource = dspersonal
                  TabOrder = 0
                end
              end
              object GbPersonales: TGroupBox
                Left = 152
                Top = 5
                Width = 1073
                Height = 229
                TabOrder = 9
                object JvLabel6: TJvLabel
                  Tag = 1
                  Left = 37
                  Top = 18
                  Width = 72
                  Height = 13
                  Caption = 'Fecha de Alta:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel2: TJvLabel
                  Tag = 2
                  Left = 53
                  Top = 41
                  Width = 51
                  Height = 13
                  Caption = 'Nombres: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel4: TJvLabel
                  Tag = 3
                  Left = 52
                  Top = 64
                  Width = 52
                  Height = 13
                  Caption = 'No. IMMS:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel12: TJvLabel
                  Left = 217
                  Top = 61
                  Width = 8
                  Height = 16
                  Caption = '-'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -13
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel5: TJvLabel
                  Tag = 4
                  Left = 68
                  Top = 89
                  Width = 36
                  Height = 13
                  Caption = 'CURP: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel26: TJvLabel
                  Tag = 6
                  Left = 74
                  Top = 113
                  Width = 29
                  Height = 13
                  Caption = 'RFC: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel24: TJvLabel
                  Tag = 7
                  Left = 47
                  Top = 137
                  Width = 53
                  Height = 13
                  Caption = 'Contacto: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel25: TJvLabel
                  Tag = 8
                  Left = 4
                  Top = 159
                  Width = 98
                  Height = 13
                  Caption = 'Teleofno Contacto: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel28: TJvLabel
                  Tag = 9
                  Left = 47
                  Top = 183
                  Width = 53
                  Height = 13
                  Caption = 'Infonavit: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel33: TJvLabel
                  Left = 157
                  Top = 182
                  Width = 70
                  Height = 13
                  Caption = 'No. Infonavit:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel3: TJvLabel
                  Tag = 10
                  Left = 34
                  Top = 206
                  Width = 69
                  Height = 13
                  Caption = 'Nacionalidad: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel37: TJvLabel
                  Tag = 12
                  Left = 592
                  Top = 204
                  Width = 33
                  Height = 13
                  Caption = 'Sexo: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel38: TJvLabel
                  Tag = 11
                  Left = 563
                  Top = 185
                  Width = 64
                  Height = 13
                  Caption = 'Estado Civil: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel39: TJvLabel
                  Tag = 11
                  Left = 530
                  Top = 160
                  Width = 98
                  Height = 13
                  Caption = 'Tel'#233'fono Contacto: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel13: TJvLabel
                  Tag = 27
                  Left = 585
                  Top = 137
                  Width = 42
                  Height = 13
                  Caption = 'Correo: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel22: TJvLabel
                  Tag = 11
                  Left = 539
                  Top = 93
                  Width = 88
                  Height = 13
                  Caption = 'Grupo Sanguineo:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel23: TJvLabel
                  Tag = 11
                  Left = 578
                  Top = 69
                  Width = 51
                  Height = 13
                  Caption = 'Tel'#233'fono: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBDateEdit1: TDBDateEdit
                  Tag = 1
                  Left = 109
                  Top = 13
                  Width = 133
                  Height = 21
                  Margins.Left = 4
                  Margins.Top = 1
                  DataField = 'fechaalta'
                  DataSource = dspersonal
                  NumGlyphs = 2
                  ParentColor = True
                  TabOrder = 0
                end
                object Edt_Imss: TEdit
                  Tag = 3
                  Left = 109
                  Top = 62
                  Width = 102
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  MaxLength = 10
                  ParentColor = True
                  ParentFont = False
                  TabOrder = 1
                  OnChange = Edt_ImssChange
                end
                object DBEdit4: TDBEdit
                  Left = 231
                  Top = 62
                  Width = 42
                  Height = 21
                  DataField = 'numerosegurosocial'
                  DataSource = dspersonal
                  Enabled = False
                  TabOrder = 2
                  Visible = False
                end
                object DBEdit5: TDBEdit
                  Tag = 4
                  Left = 110
                  Top = 89
                  Width = 410
                  Height = 21
                  DataField = 'curp'
                  DataSource = dspersonal
                  TabOrder = 3
                end
                object DBEdit12: TDBEdit
                  Tag = 6
                  Left = 108
                  Top = 109
                  Width = 411
                  Height = 21
                  DataField = 'rfc'
                  DataSource = dspersonal
                  TabOrder = 4
                end
                object DBEdit9: TDBEdit
                  Tag = 7
                  Left = 108
                  Top = 133
                  Width = 411
                  Height = 21
                  DataField = 'contacto'
                  DataSource = dspersonal
                  TabOrder = 5
                end
                object DBEdit10: TDBEdit
                  Tag = 8
                  Left = 108
                  Top = 156
                  Width = 411
                  Height = 21
                  DataField = 'telefonocontacto'
                  DataSource = dspersonal
                  TabOrder = 6
                end
                object ChkInfonavit: TDBCheckBox
                  Left = 107
                  Top = 182
                  Width = 22
                  Height = 17
                  DataField = 'Infonavit'
                  DataSource = dspersonal
                  TabOrder = 7
                  ValueChecked = 'Si'
                  ValueUnchecked = 'No'
                  OnClick = ChkInfonavitClick
                end
                object EdtNoInfonavit: TDBEdit
                  Left = 233
                  Top = 178
                  Width = 285
                  Height = 21
                  DataField = 'NumeroInfonavit'
                  DataSource = dspersonal
                  TabOrder = 8
                end
                object EdtNacionalidad: TAdvEditBtn
                  Tag = 10
                  Left = 109
                  Top = 201
                  Width = 412
                  Height = 21
                  Hint = 'Seleccione una nacionalidad'
                  Flat = False
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  Lookup.Separator = ';'
                  Color = clWindow
                  Enabled = True
                  ParentShowHint = False
                  ReadOnly = False
                  ShowHint = True
                  TabOrder = 9
                  Visible = True
                  Version = '1.3.2.8'
                  ButtonStyle = bsButton
                  ButtonWidth = 16
                  Etched = False
                  OnClickBtn = EdtNacionalidadClickBtn
                end
                object DBComboBox3: TDBComboBox
                  Tag = 12
                  Left = 626
                  Top = 179
                  Width = 433
                  Height = 21
                  Hint = 'Seleccione una opci'#243'n'
                  DataField = 'Sexo'
                  DataSource = dspersonal
                  Items.Strings = (
                    'Masculino'
                    'Femenino')
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 10
                end
                object DBComboBox2: TDBComboBox
                  Tag = 11
                  Left = 626
                  Top = 200
                  Width = 435
                  Height = 21
                  Hint = 'Seleccione una opci'#243'n'
                  DataField = 'Estadocivil'
                  DataSource = dspersonal
                  Items.Strings = (
                    'Casado'
                    'Soltero'
                    'Viduo'
                    'Divorciado'
                    'Concuvinato')
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 11
                end
                object DBEdit2: TDBEdit
                  Tag = 11
                  Left = 626
                  Top = 157
                  Width = 435
                  Height = 21
                  Hint = 'Ingrese un telefono de contacto.'
                  DataField = 'telefonocontacto'
                  DataSource = dspersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 12
                end
                object DBEdit17: TDBEdit
                  Tag = 27
                  Left = 626
                  Top = 133
                  Width = 432
                  Height = 21
                  DataField = 'correo'
                  DataSource = dspersonal
                  TabOrder = 13
                end
                object DBEdit8: TDBEdit
                  Tag = 11
                  Left = 626
                  Top = 88
                  Width = 435
                  Height = 21
                  DataField = 'Gruposanguineo'
                  DataSource = dspersonal
                  TabOrder = 14
                end
                object DBEdit6: TDBEdit
                  Tag = 11
                  Left = 626
                  Top = 65
                  Width = 435
                  Height = 21
                  DataField = 'telefono'
                  DataSource = dspersonal
                  ParentColor = True
                  TabOrder = 15
                end
                object EdtNombreCompleto: TEdit
                  Left = 110
                  Top = 38
                  Width = 955
                  Height = 21
                  TabOrder = 16
                end
                object Panel3: TPanel
                  Left = 270
                  Top = 7
                  Width = 343
                  Height = 29
                  BevelOuter = bvNone
                  Enabled = False
                  TabOrder = 17
                  object JvLabel1: TJvLabel
                    Left = 31
                    Top = 10
                    Width = 101
                    Height = 13
                    Caption = 'Codigo de Personal: '
                    Transparent = True
                    HotTrackFont.Charset = DEFAULT_CHARSET
                    HotTrackFont.Color = clWindowText
                    HotTrackFont.Height = -11
                    HotTrackFont.Name = 'Tahoma'
                    HotTrackFont.Style = []
                  end
                  object DBEdit1: TDBEdit
                    Left = 138
                    Top = 8
                    Width = 204
                    Height = 21
                    DataField = 'codigopersonal'
                    DataSource = dspersonal
                    ParentColor = True
                    TabOrder = 0
                  end
                end
              end
              object GbInfPlaza: TGroupBox
                Left = 152
                Top = 7
                Width = 1073
                Height = 105
                Caption = 'Informacion de Plaza'
                TabOrder = 7
                object JvLabel14: TJvLabel
                  Left = 14
                  Top = 24
                  Width = 45
                  Height = 13
                  Caption = 'Solicitud:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel15: TJvLabel
                  Left = 502
                  Top = 20
                  Width = 31
                  Height = 13
                  Caption = 'Plaza:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel16: TJvLabel
                  Left = 14
                  Top = 46
                  Width = 75
                  Height = 13
                  Caption = 'Departamento:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel17: TJvLabel
                  Left = 488
                  Top = 45
                  Width = 5
                  Height = 13
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel18: TJvLabel
                  Left = 502
                  Top = 44
                  Width = 35
                  Height = 13
                  Caption = 'Cargo:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel19: TJvLabel
                  Left = 16
                  Top = 72
                  Width = 51
                  Height = 13
                  Caption = 'Acciones: '
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBEdit21: TDBEdit
                  Left = 90
                  Top = 19
                  Width = 373
                  Height = 21
                  DataField = 'CodigoPlaza'
                  DataSource = DsMemPlaza
                  TabOrder = 0
                end
                object DBEdit22: TDBEdit
                  Left = 543
                  Top = 18
                  Width = 506
                  Height = 21
                  DataField = 'CodigoPlazaDetalle'
                  DataSource = DsMemPlaza
                  TabOrder = 1
                end
                object DBEdit23: TDBEdit
                  Left = 91
                  Top = 43
                  Width = 372
                  Height = 21
                  DataField = 'titulodepartamento'
                  DataSource = DsMemPlaza
                  TabOrder = 2
                end
                object DBEdit24: TDBEdit
                  Left = 543
                  Top = 42
                  Width = 506
                  Height = 21
                  DataField = 'titulocargo'
                  DataSource = DsMemPlaza
                  TabOrder = 3
                end
                object CmbAcciones: TComboBox
                  Left = 90
                  Top = 69
                  Width = 959
                  Height = 21
                  TabOrder = 4
                  Text = 'CmbAcciones'
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Documentos'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox11: TGroupBox
          Left = 0
          Top = 0
          Width = 1167
          Height = 572
          Align = alClient
          Caption = 'Actuales'
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          object GrdDocumentos: TDBGrid
            Left = 7
            Top = 20
            Width = 1153
            Height = 545
            Align = alClient
            DataSource = DsDoctosPersonal
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
                FieldName = 'nombredocumento'
                Title.Caption = 'Nombre del Documento'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fechaexpedicion'
                Title.Caption = 'Fecha Expedici'#243'n'
                Width = 125
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fechavigencia'
                Title.Caption = 'Fecha Vigencia'
                Width = 125
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'fechaaplicacion'
                Title.Caption = 'Fecha Aplicaci'#243'n'
                Width = 125
                Visible = True
              end>
          end
        end
        object GroupBox12: TGroupBox
          Left = 1167
          Top = 0
          Width = 116
          Height = 572
          Align = alRight
          Caption = 'Accciones'
          TabOrder = 1
          object BtmAgergarDoc: TNxButton
            Left = 2
            Top = 15
            Width = 112
            Align = alTop
            Caption = 'Agregar'
            TabOrder = 0
            OnClick = BtmAgergarDocClick
          end
          object BtnEditarDoc: TNxButton
            Left = 2
            Top = 38
            Width = 112
            Align = alTop
            Caption = 'Editar'
            TabOrder = 1
            OnClick = BtnEditarDocClick
          end
          object BtnEliminarDoc: TNxButton
            Left = 2
            Top = 61
            Width = 112
            Align = alTop
            Caption = 'Eliminar'
            TabOrder = 2
            OnClick = BtnEliminarDocClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Datos Bancarios'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox7: TGroupBox
          Left = 0
          Top = 0
          Width = 1135
          Height = 572
          Align = alClient
          Caption = 'Cuentas relacionadas al Personal/Aspirante'
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          object GrdBancarios: TDBGrid
            Left = 7
            Top = 20
            Width = 1121
            Height = 545
            Align = alClient
            DataSource = DsDatosBancarios
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
                FieldName = 'nombre'
                Title.Caption = 'Banco'
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sucursal'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Numerodecuenta'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Claveinterbancaria'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fechadeaplicacion'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Estado'
                Width = 100
                Visible = True
              end>
          end
        end
        object GroupBox4: TGroupBox
          Left = 1135
          Top = 0
          Width = 148
          Height = 572
          Align = alRight
          Caption = 'Acciones'
          TabOrder = 1
          object BtnActivar: TNxButton
            Left = 2
            Top = 84
            Width = 144
            Hint = 'Pulse aqu'#237' para activar la cuenta seleccionada.'
            Align = alTop
            Caption = 'Activar Cuenta'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BtnActivarClick
          end
          object BtnAddBancarios: TNxButton
            Left = 2
            Top = 15
            Width = 144
            Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
            Align = alTop
            Caption = 'Agregar Cuenta'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnAddBancariosClick
          end
          object BtnDeleteBancarios: TNxButton
            Left = 2
            Top = 61
            Width = 144
            Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
            Align = alTop
            Caption = 'Eliminar Cuenta'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnDeleteBancariosClick
          end
          object BtnEditBancarios: TNxButton
            Left = 2
            Top = 38
            Width = 144
            Hint = 'Pulse aqu'#237' para editar un registro existente'
            Align = alTop
            Caption = 'Editar Cuenta'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnEditBancariosClick
          end
        end
      end
      object Recomendaciones: TTabSheet
        Caption = 'Recomendaciones'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 1167
          Height = 572
          Align = alClient
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          object Panel7: TPanel
            Left = 7
            Top = 20
            Width = 1153
            Height = 545
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object tvDocumentos: TJvTreeView
              Left = 0
              Top = 0
              Width = 1153
              Height = 545
              Align = alClient
              Indent = 27
              ParentShowHint = False
              ReadOnly = True
              RightClickSelect = True
              RowSelect = True
              ShowHint = True
              TabOrder = 0
              Items.NodeData = {
                030200000034000000060000000600000006000000FFFFFFFF06000000000000
                0000000000010B500072006F0066006500730069006F006E0061006C002E0000
                00000000000000000000000000FFFFFFFF000000000000000000000000010850
                006500720073006F006E0061006C00}
              LineColor = 13158600
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 1167
          Top = 0
          Width = 116
          Height = 572
          Align = alRight
          Caption = 'Accciones'
          TabOrder = 1
          object BtnAddHistorial: TNxButton
            Left = 2
            Top = 15
            Width = 112
            Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
            Align = alTop
            Caption = 'Agregar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnAddHistorialClick
          end
          object BtnDeleteHistorial: TNxButton
            Left = 2
            Top = 61
            Width = 112
            Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
            Align = alTop
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnDeleteHistorialClick
          end
          object BtnEditHistorial: TNxButton
            Left = 2
            Top = 38
            Width = 112
            Hint = 'Pulse aqu'#237' para editar un registro existente.'
            Align = alTop
            Caption = 'Editar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnEditHistorialClick
          end
        end
      end
      object TabSheet11: TTabSheet
        Caption = 'Contrato'
        ImageIndex = 5
        object frxPreview1: TfrxPreview
          Left = 281
          Top = 0
          Width = 1002
          Height = 572
          Align = alClient
          OutlineVisible = False
          OutlineWidth = 120
          ThumbnailVisible = False
          UseReportHints = True
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 281
          Height = 572
          Align = alLeft
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 1
          object AdvGroupBox1: TAdvGroupBox
            Left = 6
            Top = 6
            Width = 269
            Height = 560
            Align = alClient
            Caption = 'Datos de la plaza'
            TabOrder = 0
            object JvLabel7: TJvLabel
              Left = 14
              Top = 27
              Width = 67
              Height = 13
              Caption = 'Codigo Plaza:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel8: TJvLabel
              Left = 14
              Top = 83
              Width = 103
              Height = 13
              Caption = 'Codigo Plaza Detalle:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel9: TJvLabel
              Left = 14
              Top = 140
              Width = 35
              Height = 13
              Caption = 'Cargo:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel10: TJvLabel
              Left = 14
              Top = 205
              Width = 75
              Height = 13
              Caption = 'Departamento:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object JvLabel11: TJvLabel
              Left = 14
              Top = 267
              Width = 51
              Height = 13
              Caption = 'Convenio:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object DBEdit7: TDBEdit
              Left = 14
              Top = 46
              Width = 235
              Height = 19
              DataField = 'CodigoPlaza'
              DataSource = DsPlazaPersonal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit13: TDBEdit
              Left = 14
              Top = 102
              Width = 235
              Height = 19
              DataField = 'CodigoPlazaDetalle'
              DataSource = DsPlazaPersonal
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit14: TDBEdit
              Left = 14
              Top = 159
              Width = 235
              Height = 19
              DataField = 'titulocargo'
              DataSource = DsPlazaPersonal
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit15: TDBEdit
              Left = 13
              Top = 224
              Width = 236
              Height = 19
              DataField = 'codigodepartamento'
              DataSource = DsPlazaPersonal
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit16: TDBEdit
              Left = 14
              Top = 286
              Width = 235
              Height = 19
              DataField = 'codigoorganizacion'
              DataSource = DsPlazaPersonal
              ReadOnly = True
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1303
    Height = 25
    Align = alTop
    TabOrder = 2
    object BtnMostrarPlazas: TAdvRepeatButton
      Left = 65
      Top = 1
      Width = 98
      Height = 23
      Align = alLeft
      AutoThemeAdapt = False
      ColorDown = 14210002
      ColorHot = 13289415
      Caption = 'Mostrar Plazas'
      Style = tasCheck
      OnClick = BtnMostrarPlazasClick
      Version = '1.6.1.0'
      ExplicitTop = 2
    end
    object BtnMenuArchivo: TNxOptionButton
      Left = 1
      Top = 1
      Width = 64
      Height = 23
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = BtnMenuArchivoClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 16
    object Nuevo1: TMenuItem
      Caption = 'Nuevo'
      OnClick = Nuevo1Click
    end
    object Abrir1: TMenuItem
      Caption = 'Abrir'
      OnClick = Abrir1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object N1: TMenuItem
      Caption = 'Cerrar'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object erminar1: TMenuItem
      Caption = 'Terminar'
      OnClick = erminar1Click
    end
  end
  object cdpersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdpersonalAfterOpen
    AfterInsert = cdpersonalAfterInsert
    AfterScroll = cdpersonalAfterScroll
    AfterRefresh = cdpersonalAfterRefresh
    Left = 1064
    Top = 216
  end
  object dspersonal: TDataSource
    DataSet = cdpersonal
    Left = 1096
    Top = 216
  end
  object cdconvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1160
    Top = 464
  end
  object dsconvenio: TDataSource
    DataSet = cdconvenio
    Left = 1200
    Top = 464
  end
  object cdauxgenerales: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1152
    Top = 416
  end
  object dsauxgenerales: TDataSource
    DataSet = cdauxgenerales
    Left = 1200
    Top = 416
  end
  object CdPlaza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1040
    Top = 112
  end
  object DsPlaza: TDataSource
    DataSet = CdPlaza
    Left = 1080
    Top = 112
  end
  object CdDoctosPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 65520
  end
  object DsDoctosPersonal: TDataSource
    DataSet = CdDoctosPersonal
    Left = 312
    Top = 65520
  end
  object CdDatosBancarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 65520
  end
  object DsDatosBancarios: TDataSource
    DataSet = CdDatosBancarios
    Left = 472
    Top = 65520
  end
  object CdPlazaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 65520
  end
  object DsPlazaPersonal: TDataSource
    DataSet = CdPlazaPersonal
    Left = 664
    Top = 65520
  end
  object CdExperiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = CdExperienciaAfterOpen
    Left = 848
    Top = 65520
  end
  object DsExperiencia: TDataSource
    DataSet = CdExperiencia
    Left = 816
    Top = 65520
  end
  object CdMemPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1208
    Top = 320
  end
  object frxReport1: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41346.450895729170000000
    ReportOptions.LastChange = 41346.453558101850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 216
    Datasets = <
      item
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 729.449290000000000000
        Height = 971.339210000000000000
        ShowHint = False
        DataField = 'doccontratacion'
        DataSet = frxDBContrato
        DataSetName = 'frxDBContrato'
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxDBContrato: TfrxDBDataset
    UserName = 'frxDBContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'doccontratacion=doccontratacion')
    DataSet = cdpersonal
    BCDToCurrency = False
    Left = 72
    Top = 264
  end
  object CdPlazaPersonalSel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 65528
  end
  object DsPlazaPersonalSel: TDataSource
    DataSet = CdPlazaPersonalSel
    Left = 984
    Top = 65528
  end
  object MemPlaza: TJvMemoryData
    FieldDefs = <>
    Left = 760
    Top = 16
  end
  object DsMemPlaza: TDataSource
    Left = 696
    Top = 24
  end
end
