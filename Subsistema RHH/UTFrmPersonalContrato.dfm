inherited FrmPersonalContrato: TFrmPersonalContrato
  Caption = 'Contratar personal'
  ClientHeight = 607
  ClientWidth = 1096
  ExplicitWidth = 1114
  ExplicitHeight = 654
  PixelsPerInch = 120
  TextHeight = 17
  inherited PanelFiltro: TcxGroupBox
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1096
    ExplicitHeight = 493
    Height = 493
    Width = 1096
    inherited LbFiltros: TJvLabel
      Left = 8
      Top = 447
      Width = 1080
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 7
      ExplicitTop = 427
      ExplicitWidth = 1085
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
      ExplicitWidth = 1090
      ExplicitHeight = 423
      Height = 423
      Width = 1090
      inherited BtnSearch: TcxButton
        Left = 10
        Top = 375
        Width = 1070
        Margins.Left = 9
        Margins.Top = 9
        Margins.Right = 9
        Margins.Bottom = 9
        OnClick = BtnSearchClick
        ExplicitLeft = 10
        ExplicitTop = 375
        ExplicitWidth = 1070
      end
      object EdtfFiltrado: TAdvEdit
        Left = 4
        Top = 31
        Width = 405
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        EmptyText = 'A. Paterno'
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
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 1096
    Width = 0
    Height = 493
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 64
    ExplicitWidth = 0
    ExplicitHeight = 493
    inherited DBGridPrincipal: TNextDBGrid
      Width = 1094
      Height = 458
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1094
      ExplicitHeight = 458
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
        DefaultWidth = 169
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
        Width = 169
        FieldName = 'nombrecompleto'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 91
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'CURP'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 91
        FieldName = 'curp'
      end
      object NxDBTextColumn8: TNxDBTextColumn
        DefaultWidth = 108
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'RFC'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 108
        FieldName = 'rfc'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'N'#250'm. Seg. Social.'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 117
        FieldName = 'numerosegurosocial'
      end
      object NxDBTextColumn7: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Sexo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        FieldName = 'sexo'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Alta'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        FieldName = 'fechaalta'
      end
      object NxDBTextColumn6: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado Civil'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        FieldName = 'EstadoCivil'
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
      Width = 1094
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 1094
      inherited PBPaginacion: TAdvProgressBar
        Width = 966
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 926
        ExplicitHeight = 31
      end
      inherited PnlNum: TPanel
        Left = 967
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 967
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
    object NextGrid1: TNextGrid
      Left = 72
      Top = 95
      Width = 979
      Height = 333
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 4
      TabStop = True
      Visible = False
      object NxTextColumn1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'IdPersonal'
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
      end
      object NxTextColumn2: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
      end
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
      end
      object NxTextColumn4: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'CURP'
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
      end
      object NxTextColumn5: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'RFC'
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Num. Seg. Social'
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
      end
      object NxTextColumn7: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Sexo'
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
      end
      object NxTextColumn8: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Fecha Alta'
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
      end
      object NxTextColumn9: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estado Civil'
        ParentFont = False
        Position = 8
        SortType = stAlphabetic
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    Top = 557
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 557
    ExplicitWidth = 1096
    Width = 1096
    inherited Panel1: TcxGroupBox
      Tag = 0
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitWidth = 971
      Width = 971
      inherited PanelAdd: TPanel
        Left = 133
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 133
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 237
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 237
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 342
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 342
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 446
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 446
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 551
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 551
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 656
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 656
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 760
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 760
        ExplicitTop = 2
        ExplicitHeight = 44
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
        Left = 2
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Visible = True
        ExplicitLeft = 2
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
      Tag = 0
      Left = 972
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 972
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
  inherited MainPopupMenu: TPopupMenu
    Left = 592
    Top = 40
  end
  inherited mdEstructura: TJvMemoryData
    Left = 688
    Top = 48
  end
  inherited qGrabar: TClientDataSet
    Left = 528
    Top = 48
  end
  inherited mdDeposito: TClientDataSet
    Top = 56
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      64
      0)
  end
  object CdORganizacion: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 336
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 336
  end
  object CdDepartamento: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 288
  end
  object CdAguinaldos: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 288
  end
  object CdCargo: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 384
  end
  object CdSalarioBase: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 376
  end
  object CdVacacional: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 256
  end
  object CdGuardias: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 224
  end
  object CdPeriodosGuardias: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 256
  end
  object CdBuscaGuardia: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 224
  end
  object CdSalario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 798
    Top = 192
  end
  object CdRangoSalario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 758
    Top = 192
  end
  object CdPlazaDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 192
  end
  object CdPlaza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 224
  end
  object CdImss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 256
  end
end
