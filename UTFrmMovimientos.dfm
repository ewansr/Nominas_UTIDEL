inherited FrmMovimientos: TFrmMovimientos
  Caption = 'Movimientos en almac'#233'n'
  ExplicitLeft = 8
  ExplicitTop = -80
  ExplicitWidth = 852
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 155
      inherited BtnSearch: TcxButton
        OnClick = BtnSearchClick
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 652
      end
      inherited AdvShapeButton1: TAdvShapeButton
        Left = 113
      end
    end
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      59
      0)
  end
end
