inherited FrmPersonal: TFrmPersonal
  Caption = 'Cat'#225'logo de personal'
  ClientHeight = 579
  ClientWidth = 1018
  ExplicitWidth = 1036
  ExplicitHeight = 626
  PixelsPerInch = 120
  TextHeight = 17
  inherited PanelFiltro: TcxGroupBox
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1135
    ExplicitHeight = 473
    Height = 473
    Width = 1135
    inherited LbFiltros: TJvLabel
      Left = 8
      Top = 427
      Width = 1119
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 7
      ExplicitTop = 435
      ExplicitWidth = 1125
    end
    inherited btnfn1: TPngSpeedButton
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
    end
    inherited GroupBoxFiltro: TcxGroupBox
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1129
      ExplicitHeight = 403
      Height = 403
      Width = 1129
      inherited BtnSearch: TcxButton
        Left = 10
        Top = 355
        Width = 1109
        Margins.Left = 9
        Margins.Top = 9
        Margins.Right = 9
        Margins.Bottom = 9
        OnClick = BtnSearchClick
        ExplicitLeft = 10
        ExplicitTop = 355
        ExplicitWidth = 1109
      end
      object edtFPuesto: TAdvEdit
        Left = 17
        Top = 22
        Width = 152
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        EmptyText = 'Puesto'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Visible = True
        Version = '2.9.0.0'
      end
      object edtFCodigo: TAdvEdit
        Left = 177
        Top = 22
        Width = 151
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        EmptyText = 'C'#243'digo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Visible = True
        Version = '2.9.0.0'
      end
      object edtFDepartamento: TAdvEdit
        Left = 336
        Top = 22
        Width = 181
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        EmptyText = 'Departamento'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 3
        Visible = True
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 1135
    Width = 0
    Height = 473
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 56
    ExplicitWidth = 0
    ExplicitHeight = 473
    inherited DBGridPrincipal: TNextDBGrid
      Width = 1133
      Height = 438
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      OnClick = DBGridPrincipalClick
      ExplicitWidth = 1133
      ExplicitHeight = 438
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'codigopersonal'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 500
        FieldName = 'NombreCompleto'
      end
    end
    inherited Edit2: TEdit
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
    end
    inherited pnlProgress: TPanel
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      inherited lblProgress: TLabel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
      end
      inherited pbProgress: TProgressBar
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
    end
    inherited PnlPro: TPanel
      Width = 1133
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1133
      inherited PBPaginacion: TAdvProgressBar
        Width = 1005
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 965
        ExplicitHeight = 31
      end
      inherited PnlNum: TPanel
        Left = 1006
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 1006
        ExplicitHeight = 31
        inherited NPaginacion: TSpinEdit
          Height = 27
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
        inherited AdvShapeButton3: TAdvShapeButton
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    Top = 529
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 529
    ExplicitWidth = 1135
    Width = 1018
    inherited Panel1: TcxGroupBox
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1010
      Width = 893
      inherited PanelAdd: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited btnAdd: TcxButton
          Left = 5
          Top = 5
          Width = 94
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelEdit: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnEdit: TcxButton
          Left = 5
          Top = 5
          Width = 95
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelDelete: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnDelete: TcxButton
          Left = 5
          Top = 5
          Width = 94
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelRefresh: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnRefresh: TcxButton
          Left = 5
          Top = 5
          Width = 95
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelPrint: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnPrint: TcxButton
          Left = 5
          Top = 5
          Width = 95
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelExport: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnExport: TcxButton
          Left = 5
          Top = 5
          Width = 94
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelImport: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited btnImportar: TcxButton
          Left = 5
          Top = 5
          Width = 95
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
      inherited PanelSelect: TPanel
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        inherited BtnSelect: TcxButton
          Left = 5
          Top = 5
          Width = 121
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
        end
      end
    end
    inherited Panel2: TcxGroupBox
      Left = 894
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 1011
      inherited BtnClose: TcxButton
        Left = 7
        Top = 7
        Width = 109
        Height = 34
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
    end
  end
  inherited qGrabar: TClientDataSet
    Top = 104
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      56
      0)
  end
end
