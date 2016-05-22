inherited FrmPlazaRhu: TFrmPlazaRhu
  Caption = 'Cat'#225'logo de alta de plazas'
  ClientWidth = 932
  ExplicitWidth = 950
  ExplicitHeight = 633
  PixelsPerInch = 120
  TextHeight = 17
  inherited PanelFiltro: TcxGroupBox
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 932
    Width = 932
    inherited LbFiltros: TJvLabel
      Left = 8
      Top = 434
      Width = 916
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 7
      ExplicitTop = 435
      ExplicitWidth = 922
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
      ExplicitWidth = 926
      ExplicitHeight = 410
      Height = 410
      Width = 926
      inherited BtnSearch: TcxButton
        Left = 10
        Top = 362
        Width = 906
        Margins.Left = 9
        Margins.Top = 9
        Margins.Right = 9
        Margins.Bottom = 9
        OnClick = BtnSearchClick
        ExplicitLeft = 10
        ExplicitTop = 362
        ExplicitWidth = 906
      end
      object edtFCodigo: TAdvEdit
        Left = 4
        Top = 22
        Width = 149
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
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 932
    Width = 0
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitLeft = 932
    ExplicitTop = 56
    ExplicitWidth = 0
    ExplicitHeight = 480
    inherited DBGridPrincipal: TNextDBGrid
      Width = 930
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 930
      ExplicitHeight = 445
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 130
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
        Width = 130
        FieldName = 'CodigoPlaza'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'Fecha'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Solicitado por'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 400
        FieldName = 'nombresolicitante'
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
      Width = 930
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 930
      inherited PBPaginacion: TAdvProgressBar
        Width = 802
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 762
        ExplicitHeight = 31
      end
      inherited PnlNum: TPanel
        Left = 803
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 803
        ExplicitHeight = 31
        inherited NPaginacion: TSpinEdit
          Height = 27
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ExplicitHeight = 27
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
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 932
    Width = 932
    inherited Panel1: TcxGroupBox
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 807
      Width = 807
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 94
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 95
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 94
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 95
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 95
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 94
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 95
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
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 121
        end
      end
    end
    inherited Panel2: TcxGroupBox
      Left = 808
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 808
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
  inherited cdDatos: TClientDataSet
    Left = 358
    Top = 48
  end
  inherited dsDatos: TDataSource
    Left = 416
    Top = 48
  end
  inherited mdEstructura: TJvMemoryData
    Left = 480
  end
  inherited qGrabar: TClientDataSet
    Left = 560
    Top = 80
  end
  inherited mdDeposito: TClientDataSet
    Left = 640
    Top = 80
  end
  inherited SaveXLS: TSaveDialog
    Left = 472
    Top = 152
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      56
      0)
  end
end
