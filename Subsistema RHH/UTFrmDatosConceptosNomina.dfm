object FrmDatosConceptosNomina: TFrmDatosConceptosNomina
  Left = 0
  Top = 0
  Caption = 'Conceptos de N'#243'mina'
  ClientHeight = 529
  ClientWidth = 727
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 529
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 33
      Width = 725
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 105
        Top = 0
        Width = 620
        Height = 80
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 52
          Align = alClient
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object mNombre: TDBMemo
            Left = 0
            Top = 0
            Width = 614
            Height = 52
            Align = alClient
            DataField = 'Nombre'
            DataSource = dsConcepto
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 52
          Width = 620
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object JvLabel6: TJvLabel
            Left = 182
            Top = 8
            Width = 44
            Height = 13
            Caption = 'Imprime:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object JvLabel8: TJvLabel
            Left = 321
            Top = 8
            Width = 252
            Height = 13
            Caption = 'Si=Siempre, No=Nunca, Datos=Solo si tiene valores'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object cbModo: TDBComboBox
            Left = 5
            Top = 6
            Width = 153
            Height = 21
            Style = csDropDownList
            DataField = 'Modo'
            DataSource = dsConcepto
            Items.Strings = (
              'PERCEPCION'
              'DEDUCCION'
              'MEMORIA'
              'PER-MEMORIA'
              'DED-MEMORIA'
              'OBLIGACION')
            TabOrder = 0
          end
          object DBComboBox1: TDBComboBox
            Left = 232
            Top = 6
            Width = 75
            Height = 21
            DataField = 'Imprime'
            DataSource = dsConcepto
            Items.Strings = (
              'Si'
              'No'
              'Datos')
            TabOrder = 1
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 105
        Height = 80
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object JvLabel4: TJvLabel
          Left = 44
          Top = 2
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
          Left = 14
          Top = 60
          Width = 90
          Height = 13
          Caption = 'Tipo de Concepto:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 480
      Width = 725
      Height = 48
      Align = alBottom
      TabOrder = 2
      object AdvGlowButton1: TAdvGlowButton
        Left = 426
        Top = 6
        Width = 100
        Height = 27
        Caption = '&Aceptar'
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = AdvGlowButton1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Btn_Cancelar: TAdvGlowButton
        Left = 532
        Top = 6
        Width = 100
        Height = 27
        Caption = '&Cancelar'
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = Btn_CancelarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Btn_Validar: TAdvGlowButton
        Left = 4
        Top = 6
        Width = 100
        Height = 27
        Caption = '&Validar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = Btn_ValidarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 725
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 5
        Top = 8
        Width = 39
        Height = 13
        Caption = 'C'#243'digo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 199
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Clave:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 388
        Top = 8
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
      object EdCodigoConcepto: TDBEdit
        Left = 50
        Top = 7
        Width = 121
        Height = 21
        DataField = 'CodigoConcepto'
        DataSource = dsConcepto
        TabOrder = 0
      end
      object edClave: TDBEdit
        Left = 238
        Top = 8
        Width = 121
        Height = 21
        DataField = 'Clave'
        DataSource = dsConcepto
        TabOrder = 1
      end
      object edTitulo: TDBEdit
        Left = 426
        Top = 8
        Width = 290
        Height = 21
        DataField = 'Titulo'
        DataSource = dsConcepto
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 113
      Width = 725
      Height = 367
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 10
      TabOrder = 3
      object Splitter1: TSplitter
        Left = 298
        Top = 10
        Height = 357
        ExplicitLeft = 199
        ExplicitTop = -6
        ExplicitHeight = 262
      end
      object Panel9: TPanel
        Left = 337
        Top = 10
        Width = 388
        Height = 357
        Align = alClient
        BevelOuter = bvNone
        Padding.Right = 6
        TabOrder = 2
        object reFormula2: TJvRichEdit
          Left = 0
          Top = 0
          Width = 382
          Height = 357
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = reFormula2DblClick
          OnKeyDown = reFormula2KeyDown
          OnSelectionChange = reFormula2SelectionChange
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 10
        Width = 298
        Height = 357
        Align = alLeft
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 1
          Top = 228
          Width = 296
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 1
          ExplicitWidth = 302
        end
        object GridEmpleado: TDBGrid
          Left = 1
          Top = 1
          Width = 296
          Height = 227
          Align = alClient
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = GridEmpleadoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Clave'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end>
        end
        object GridConceptos: TDBGrid
          Left = 1
          Top = 231
          Width = 296
          Height = 125
          Align = alBottom
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = GridConceptosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CodigoConcepto'
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Clave'
              Width = 140
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 301
        Top = 10
        Width = 36
        Height = 357
        Align = alLeft
        TabOrder = 1
        object Btn_Suma: TButton
          Left = 2
          Top = 5
          Width = 28
          Height = 20
          Hint = 'Suma'
          Caption = '+'
          ImageIndex = 17
          TabOrder = 0
          OnClick = Btn_SumaClick
        end
        object Btn_Resta: TButton
          Left = 2
          Top = 25
          Width = 28
          Height = 20
          Hint = 'Resta'
          Caption = '-'
          ImageIndex = 18
          TabOrder = 1
          OnClick = Btn_RestaClick
        end
        object Btn_Multiplica: TButton
          Left = 2
          Top = 45
          Width = 28
          Height = 20
          Hint = 'Multiplicaci'#243'n'
          Caption = 'x'
          ImageIndex = 19
          TabOrder = 2
          OnClick = Btn_MultiplicaClick
        end
        object Btn_Divide: TButton
          Left = 2
          Top = 65
          Width = 28
          Height = 20
          Hint = 'Divisi'#243'n'
          Caption = '/'
          ImageIndex = 20
          TabOrder = 3
          OnClick = Btn_DivideClick
        end
        object Btn_Numero: TButton
          Left = 2
          Top = 85
          Width = 28
          Height = 20
          Hint = 'Valor num'#233'rico'
          Caption = '123'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Btn_NumeroClick
        end
        object Btn_Eliminar: TButton
          Left = 2
          Top = 105
          Width = 28
          Height = 20
          Hint = 'Eliminar'
          Caption = 'Del'
          ImageIndex = 16
          TabOrder = 5
          OnClick = Btn_EliminarClick
        end
        object Btn_Abre: TButton
          Left = 2
          Top = 125
          Width = 28
          Height = 20
          Hint = 'Abrir Parentesis'
          Caption = '('
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Btn_AbreClick
        end
        object Btn_Cierra: TButton
          Left = 2
          Top = 145
          Width = 28
          Height = 20
          Hint = 'Cerrar Parentesis'
          Caption = ')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = Btn_CierraClick
        end
        object Btn_Negativo: TButton
          Left = 2
          Top = 165
          Width = 28
          Height = 20
          Hint = 'Establecer valor negativo'
          Caption = '-(..)'
          TabOrder = 8
          OnClick = Btn_NegativoClick
        end
        object Btn_Condision: TButton
          Left = 2
          Top = 205
          Width = 28
          Height = 20
          Hint = 'Condici'#243'n'
          Caption = 'SI(..)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = Btn_CondisionClick
        end
        object Btn_Decimales: TButton
          Left = 2
          Top = 324
          Width = 28
          Height = 20
          Hint = 'N'#250'mero de decimales generados'
          Caption = '0.??'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object Btn_CondicionDirecta: TButton
          Left = 2
          Top = 225
          Width = 28
          Height = 20
          Hint = 'Condici'#243'n'
          Caption = 'SI(,,)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object Btn_NegativoDirecto: TButton
          Left = 2
          Top = 185
          Width = 28
          Height = 20
          Hint = 'Establecer valor negativo'
          Caption = '-('
          TabOrder = 12
          OnClick = Btn_NegativoClick
        end
      end
    end
  end
  object JvCalculator1: TJvCalculator
    Left = 416
    Top = 232
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 504
    Top = 224
  end
  object cdConcepto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 168
  end
  object dsConcepto: TDataSource
    DataSet = cdConcepto
    Left = 600
    Top = 136
  end
  object dsBuscar: TDataSource
    Left = 368
    Top = 184
  end
end
