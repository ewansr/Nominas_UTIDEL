inherited FrmDatosDocuumento: TFrmDatosDocuumento
  Caption = 'Datos del documento'
  ClientHeight = 461
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 424
    ExplicitTop = 424
    ExplicitWidth = 672
    Width = 672
    inherited BtnRec: TcxButton
      Left = 490
      ExplicitLeft = 490
    end
    inherited BtnAddNew: TcxButton
      Width = 109
      Visible = False
      ExplicitWidth = 109
    end
    inherited BtnCancel: TcxButton
      Left = 581
      ExplicitLeft = 581
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 672
    ExplicitHeight = 424
    Height = 424
    Width = 672
    object Panel1: TPanel
      Left = 3
      Top = 15
      Width = 666
      Height = 122
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 666
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 0
        object DBEditNombre: TDBEdit
          Left = 66
          Top = 4
          Width = 594
          Height = 21
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvNone
          Ctl3D = False
          DataField = 'nombredocumento'
          DataSource = dsDatos
          ParentCtl3D = False
          TabOrder = 0
          ExplicitHeight = 19
        end
        object Panel6: TPanel
          Left = 0
          Top = 4
          Width = 66
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Lbl1: TJvLabel
            Left = 16
            Top = 3
            Width = 43
            Height = 13
            Caption = 'Nombre:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 65
        Width = 666
        Height = 29
        Align = alBottom
        BevelOuter = bvNone
        Padding.Right = 6
        TabOrder = 1
        object tipo: TDBComboBox
          Left = 66
          Top = 0
          Width = 594
          Height = 21
          Style = csDropDownList
          Align = alClient
          BevelInner = bvLowered
          DataField = 'tipo'
          DataSource = dsDatos
          Items.Strings = (
            'Normal'
            'Profesional'
            'Personal'
            'Caducidad')
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 66
          Height = 29
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object JvLabel1: TJvLabel
            Left = 16
            Top = 3
            Width = 26
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 29
        Width = 666
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object chboxEsGrupo: TJvCheckBox
          Left = 65
          Top = 6
          Width = 179
          Height = 17
          Caption = 'Este es un grupo de Documentos'
          TabOrder = 0
          OnClick = chboxEsGrupoClick
          LinkedControls = <>
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 94
        Width = 666
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 89
          Height = 28
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel12: TJvLabel
            Left = 19
            Top = 1
            Width = 40
            Height = 13
            Caption = 'Grupos:'
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Tahoma'
            HotTrackFont.Style = []
          end
          object btnAgregarGrupo: TAdvGlowButton
            Left = 65
            Top = 1
            Width = 18
            Height = 21
            ImageIndex = 1
            Images = ClientModule1.PngImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btnAgregarGrupoClick
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
        object Panel11: TPanel
          Left = 89
          Top = 0
          Width = 577
          Height = 28
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          Padding.Left = 4
          Padding.Top = 1
          Padding.Right = 6
          Padding.Bottom = 6
          TabOrder = 1
          object LeyGrupos: TEdit
            Left = 4
            Top = 1
            Width = 567
            Height = 21
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 137
      Width = 666
      Height = 277
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Right = 6
      TabOrder = 1
      object DBMemoDescripcion: TDBMemo
        Left = 6
        Top = 24
        Width = 654
        Height = 253
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        Ctl3D = False
        DataField = 'descripcion'
        DataSource = dsDatos
        ParentCtl3D = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 6
        Top = 0
        Width = 654
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Lbl2: TJvLabel
          Left = 10
          Top = 5
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
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = cdGrupo
    Left = 464
    Top = 232
  end
  inherited CdTmp: TClientDataSet
    Left = 280
    Top = 304
  end
  inherited Timer1: TTimer
    Left = 336
    Top = 296
  end
  inherited Timer2: TTimer
    Left = 392
    Top = 296
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 320
    Top = 232
  end
  object cdGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 296
  end
  object cdDoctosxGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 296
  end
end
