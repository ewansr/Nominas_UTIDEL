inherited FrmSolicitudSalidaDet: TFrmSolicitudSalidaDet
  Caption = 'Salida a partir de solicitud'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnAgregarDetalle: TBitBtn
      Visible = False
    end
    inherited btnEditarDetalle: TBitBtn
      Left = 8
      ExplicitLeft = 8
    end
    inherited btnQuitarDetalle: TBitBtn
      Visible = False
    end
  end
  object cdSolDet: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 424
    Top = 56
  end
  object cdExistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 480
    Top = 56
  end
end
