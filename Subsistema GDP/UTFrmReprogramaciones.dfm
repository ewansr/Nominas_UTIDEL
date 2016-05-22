inherited FrmReprogramaciones: TFrmReprogramaciones
  Caption = 'Reprogramaciones'
  ExplicitWidth = 843
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      inherited BtnSearch: TAdvShapeButton
        OnClick = BtnSearchClick
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 17
        Width = 159
        Height = 21
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
        Version = '2.9.0.0'
      end
    end
  end
end
