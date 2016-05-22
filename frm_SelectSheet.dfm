object frmSelectSheet: TfrmSelectSheet
  Left = 0
  Top = 0
  Caption = 'Seleccionar hoja de trabajo de Excel'
  ClientHeight = 404
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 371
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 752
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 289
        Height = 32
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 26
          Height = 13
          Caption = 'Hoja:'
        end
        object ComboBox1: TComboBox
          Left = 38
          Top = 5
          Width = 242
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          OnChange = ComboBox1Change
        end
      end
      object Panel6: TPanel
        Left = 289
        Top = 0
        Width = 463
        Height = 32
        Align = alClient
        BevelOuter = bvNone
        Padding.Top = 8
        Padding.Right = 4
        Padding.Bottom = 8
        TabOrder = 1
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 8
          Width = 459
          Height = 16
          Align = alClient
          TabOrder = 0
          Visible = False
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 33
      Width = 752
      Height = 337
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 752
        Height = 337
        Align = alClient
        TabOrder = 0
        OnMouseDown = StringGrid1MouseDown
      end
    end
    object PanelAvance: TPanel
      Left = 9
      Top = 67
      Width = 736
      Height = 50
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 2
      Visible = False
      object Label2: TLabel
        Left = 16
        Top = 5
        Width = 705
        Height = 13
        AutoSize = False
        Caption = 'Analizando datos, espere...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ProgressBar2: TProgressBar
        Left = 16
        Top = 21
        Width = 705
        Height = 17
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 371
    Width = 754
    Height = 33
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 144
      Top = 8
      Width = 182
      Height = 13
      Caption = 'N'#250'mero m'#225'ximo de errores a mostrar:'
    end
    object CheckBox1: TCheckBox
      Left = 9
      Top = 6
      Width = 97
      Height = 17
      Caption = 'Tiene t'#237'tulos'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Panel11: TPanel
      Left = 568
      Top = 1
      Width = 185
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 21
        Top = 4
        Width = 75
        Height = 25
        Caption = 'OK'
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
        ModalResult = 1
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 102
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        DoubleBuffered = True
        Kind = bkCancel
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 1
      end
    end
    object UpDown1: TUpDown
      Left = 365
      Top = 5
      Width = 16
      Height = 21
      TabOrder = 2
      OnClick = UpDown1Click
    end
    object Edit1: TEdit
      Left = 332
      Top = 5
      Width = 34
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel7: TPanel
    Left = 234
    Top = 18
    Width = 215
    Height = 207
    TabOrder = 2
    Visible = False
    object Panel8: TPanel
      Left = 1
      Top = 174
      Width = 213
      Height = 32
      Align = alBottom
      TabOrder = 0
      object Panel9: TPanel
        Left = 103
        Top = 1
        Width = 109
        Height = 30
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 14
          Top = 4
          Width = 92
          Height = 25
          Caption = 'Terminar'
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
          TabOrder = 0
          OnClick = BitBtn3Click
        end
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 213
      Height = 25
      Align = alTop
      Caption = 'Ordenamiento de Columnas'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnMouseDown = Panel10MouseDown
      OnMouseUp = Panel10MouseUp
    end
    object Panel12: TPanel
      Left = 1
      Top = 26
      Width = 157
      Height = 148
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel12'
      TabOrder = 2
    end
    object Panel13: TPanel
      Left = 158
      Top = 26
      Width = 56
      Height = 148
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      OnResize = Panel13Resize
      object Button1: TButton
        Left = 6
        Top = 24
        Width = 44
        Height = 49
        Caption = 'Subir'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 6
        Top = 79
        Width = 44
        Height = 49
        Caption = 'Bajar'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object StringGrid2: TStringGrid
      Left = 1
      Top = 26
      Width = 157
      Height = 148
      Align = alClient
      ColCount = 2
      DefaultColWidth = 25
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowMoving, goRowSelect]
      TabOrder = 4
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 80
    object ReordenarColumnas1: TMenuItem
      Caption = 'Reordenar Columnas'
      OnClick = ReordenarColumnas1Click
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 680
    Top = 120
  end
  object mdEstructura: TJvMemoryData
    FieldDefs = <>
    Left = 448
    Top = 40
  end
  object mdDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 136
  end
  object qGrabar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 184
  end
end
