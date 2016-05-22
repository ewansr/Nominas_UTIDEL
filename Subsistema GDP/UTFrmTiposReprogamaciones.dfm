inherited FrmTiposReprogramaciones: TFrmTiposReprogramaciones
  Caption = 'Tipos de Reprogamaciones'
  ExplicitWidth = 860
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      Width = 828
      ExplicitWidth = 828
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
      object edtFtitulo: TAdvEdit
        Left = 168
        Top = 17
        Width = 145
        Height = 21
        EmptyText = 'T'#237'tulo'
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
    end
  end
end
