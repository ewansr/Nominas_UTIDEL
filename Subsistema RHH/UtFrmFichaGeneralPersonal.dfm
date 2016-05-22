object FrmFichaGeneralPersonal: TFrmFichaGeneralPersonal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registro de Personal'
  ClientHeight = 557
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    AlignWithMargins = True
    Left = 0
    Top = 127
    Width = 702
    Height = 430
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    ClientRectBottom = 429
    ClientRectLeft = 1
    ClientRectRight = 701
    ClientRectTop = 1
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n del Personal'
      ImageIndex = 0
      object menuPrincipal: TcxPageControl
        Left = 0
        Top = 0
        Width = 700
        Height = 428
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = datosPersonales1
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 8
        Properties.TabPosition = tpBottom
        OnChange = menuPrincipalChange
        ClientRectBottom = 404
        ClientRectRight = 700
        ClientRectTop = 0
        object datosPersonales1: TcxTabSheet
          Caption = 'Datos Personales'
          ImageIndex = 0
          object cxGBGenerales: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Whiteprint'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Whiteprint'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Whiteprint'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Whiteprint'
            TabOrder = 0
            Height = 404
            Width = 700
            object JvLabel37: TJvLabel
              Left = 376
              Top = 31
              Width = 49
              Height = 13
              Caption = 'Contrato:'
              Transparent = True
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
            end
            object ImgFoto: TcxDBImage
              Left = 562
              Top = 11
              DataBinding.DataField = 'imagen'
              DataBinding.DataSource = dsPersonal
              Properties.Caption = 'Agregar Fotograf'#237'a'
              Properties.GraphicClassName = 'TJPEGImage'
              TabOrder = 0
              OnClick = ImgFotoClick
              OnDblClick = ImgFotoDblClick
              Height = 141
              Width = 122
            end
            object CxDbDateRegistro: TcxDBDateEdit
              Left = 117
              Top = 28
              DataBinding.DataField = 'fechaalta'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              ShowHint = True
              StyleFocused.Color = 16701617
              TabOrder = 1
              OnKeyPress = CxDbDateRegistroKeyPress
              Width = 108
            end
            object CxDbTxtCodigo: TcxDBTextEdit
              Left = 268
              Top = 28
              DataBinding.DataField = 'CodigoPersonal'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Width = 106
            end
            object CxDbTxtNombre: TcxDBTextEdit
              Left = 117
              Top = 49
              Hint = 'Nombre(s) del Empleado'
              DataBinding.DataField = 'Nombres'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.OEMConvert = True
              ShowHint = True
              StyleFocused.Color = 16701617
              TabOrder = 3
              OnKeyPress = CxDbTxtNombreKeyPress
              Width = 428
            end
            object CxDbTxtApellidoPaterno: TcxDBTextEdit
              Left = 117
              Top = 70
              Hint = 'Ingrese Apellido Paterno del Empleado'
              DataBinding.DataField = 'APaterno'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              ShowHint = True
              StyleFocused.Color = 16701617
              TabOrder = 4
              OnKeyPress = CxDbTxtApellidoPaternoKeyPress
              Width = 428
            end
            object CxDbTxtApellidoMaterno: TcxDBTextEdit
              Left = 117
              Top = 91
              Hint = 'Ingrese Apellido Materno del Empleado'
              DataBinding.DataField = 'AMaterno'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              ShowHint = True
              StyleFocused.Color = 16701617
              TabOrder = 5
              OnKeyPress = CxDbTxtApellidoMaternoKeyPress
              Width = 428
            end
            object CxLbl1: TcxLabel
              Left = 16
              Top = 29
              Caption = 'Fecha Registro:'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxLbl2: TcxLabel
              Left = 226
              Top = 29
              Caption = 'C'#243'digo:'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxLbl3: TcxLabel
              Left = 16
              Top = 50
              Caption = 'Nombre:'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxLbl4: TcxLabel
              Left = 16
              Top = 71
              Caption = 'Apellido Paterno'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxLbl5: TcxLabel
              Left = 16
              Top = 92
              Caption = 'Apellido Materno:'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxLbl9: TcxLabel
              Left = 16
              Top = 113
              Caption = 'Sexo:'
              ParentShowHint = False
              ShowHint = True
              Transparent = True
            end
            object CxDbCBoxSexo: TcxDBComboBox
              Left = 117
              Top = 112
              Hint = 'Selecciona el Sexo del Empleado'
              DataBinding.DataField = 'sexo'
              DataBinding.DataSource = dsPersonal
              ParentShowHint = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'Masculino'
                'Femenino')
              ShowHint = True
              StyleFocused.Color = 16701617
              TabOrder = 12
              OnKeyPress = CxDbCBoxSexoKeyPress
              Width = 428
            end
            object menuPrincipal1: TcxPageControl
              Left = 16
              Top = 151
              Width = 668
              Height = 234
              DockSite = True
              TabOrder = 13
              Properties.ActivePage = datosTabDatosEmpleo
              Properties.CustomButtons.Buttons = <>
              OnPageChanging = menuPrincipal1PageChanging
              ClientRectBottom = 228
              ClientRectLeft = 2
              ClientRectRight = 662
              ClientRectTop = 27
              object datosTabDireccion: TcxTabSheet
                Caption = 'Direcci'#243'n'
                ImageIndex = 0
                object CxLbl7: TcxLabel
                  Left = 9
                  Top = 17
                  Caption = 'Telefono:'
                  Transparent = True
                end
                object edtCreoCxDbTxtTelefono: TcxDBTextEdit
                  Left = 99
                  Top = 19
                  DataBinding.DataField = 'telefono'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 10
                  StyleFocused.Color = 16701617
                  TabOrder = 1
                  OnKeyPress = edtCreoCxDbTxtTelefonoKeyPress
                  Width = 544
                end
                object CxLbl8: TcxLabel
                  Left = 9
                  Top = 41
                  Caption = 'e-Mail:'
                  Transparent = True
                end
                object edtCreoCxDbTxtEmail: TcxDBTextEdit
                  Left = 99
                  Top = 40
                  DataBinding.DataField = 'correo'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 100
                  StyleFocused.Color = 16701617
                  TabOrder = 2
                  OnKeyPress = edtCreoCxDbTxtEmailKeyPress
                  Width = 544
                end
                object edtCreoCxDbTxtContacto: TcxDBTextEdit
                  Left = 99
                  Top = 145
                  DataBinding.DataField = 'contacto'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 11
                  OnKeyPress = edtCreoCxDbTxtContactoKeyPress
                  Width = 544
                end
                object CxLbl10: TcxLabel
                  Left = 9
                  Top = 146
                  Caption = 'Contacto:'
                  Transparent = True
                end
                object CxLbl13: TcxLabel
                  Left = 362
                  Top = 167
                  Caption = 'Nacionalidad:'
                  Transparent = True
                end
                object CxCbbNacionalidad: TcxDBLookupComboBox
                  Left = 429
                  Top = 166
                  DataBinding.DataField = 'nacionalidad'
                  DataBinding.DataSource = dsPersonal
                  Properties.KeyFieldNames = 'idpais'
                  Properties.ListColumns = <
                    item
                      FieldName = 'titulopais'
                    end>
                  Properties.ListSource = dsPais
                  StyleFocused.Color = 16701617
                  TabOrder = 13
                  OnKeyPress = CxCbbNacionalidadKeyPress
                  Width = 214
                end
                object CxLbl16: TcxLabel
                  Left = 9
                  Top = 167
                  Caption = 'Tel. Contacto:'
                  Transparent = True
                end
                object edtCreoCxDbTxtTelefonoContacto: TcxDBTextEdit
                  Left = 99
                  Top = 166
                  DataBinding.DataField = 'telefonocontacto'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 10
                  StyleFocused.Color = 16701617
                  TabOrder = 12
                  OnKeyPress = edtCreoCxDbTxtTelefonoContactoKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtCalle: TcxDBTextEdit
                  Left = 99
                  Top = 61
                  DataBinding.DataField = 'Calle'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 3
                  OnKeyPress = edtCreoCxDbTxtCalleKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtColonia: TcxDBTextEdit
                  Left = 99
                  Top = 82
                  DataBinding.DataField = 'Colonia'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 5
                  OnKeyPress = edtCreoCxDbTxtColoniaKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtCiudad: TcxDBTextEdit
                  Left = 99
                  Top = 103
                  DataBinding.DataField = 'Ciudad'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 7
                  OnKeyPress = edtCreoCxDbTxtCiudadKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtEstado: TcxDBTextEdit
                  Left = 99
                  Top = 124
                  DataBinding.DataField = 'Estado'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 9
                  OnKeyPress = edtCreoCxDbTxtEstadoKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtNumero: TcxDBTextEdit
                  Left = 428
                  Top = 61
                  DataBinding.DataField = 'Numero'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 5
                  StyleFocused.Color = 16701617
                  TabOrder = 4
                  OnKeyPress = edtCreoCxDbTxtNumeroKeyPress
                  Width = 215
                end
                object edtCreoCxDbTxtCP: TcxDBTextEdit
                  Left = 428
                  Top = 82
                  DataBinding.DataField = 'CP'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 5
                  StyleFocused.Color = 16701617
                  TabOrder = 6
                  OnKeyPress = edtCreoCxDbTxtCPKeyPress
                  Width = 215
                end
                object edtCreoCxDbTxtMunicipio: TcxDBTextEdit
                  Left = 428
                  Top = 103
                  DataBinding.DataField = 'Municipio'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 8
                  OnKeyPress = edtCreoCxDbTxtMunicipioKeyPress
                  Width = 215
                end
                object edtCreoCxDbTxtPais: TcxDBTextEdit
                  Left = 428
                  Top = 124
                  DataBinding.DataField = 'Pais'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 10
                  OnKeyPress = edtCreoCxDbTxtPaisKeyPress
                  Width = 215
                end
                object CxLbl17: TcxLabel
                  Left = 9
                  Top = 62
                  Caption = 'Calle:'
                  Transparent = True
                end
                object CxLbl22: TcxLabel
                  Left = 9
                  Top = 83
                  Caption = 'Colonia:'
                  Transparent = True
                end
                object CxLbl23: TcxLabel
                  Left = 9
                  Top = 104
                  Caption = 'Ciudad:'
                  Transparent = True
                end
                object CxLbl24: TcxLabel
                  Left = 9
                  Top = 125
                  Caption = 'Estado:'
                  Transparent = True
                end
                object CxLbl25: TcxLabel
                  Left = 362
                  Top = 62
                  Caption = 'N'#250'mero:'
                  Transparent = True
                end
                object CxLbl26: TcxLabel
                  Left = 362
                  Top = 83
                  Caption = 'C. P.:'
                  Transparent = True
                end
                object CxLbl27: TcxLabel
                  Left = 362
                  Top = 104
                  Caption = 'Municipio:'
                  Transparent = True
                end
                object CxLbl28: TcxLabel
                  Left = 362
                  Top = 125
                  Caption = 'Pa'#237's:'
                  Transparent = True
                end
              end
              object datosTabDatosNacimiento: TcxTabSheet
                Caption = 'Datos Nacimiento'
                ImageIndex = 1
                object edtCreoCxDbTxtCiudadNacimiento: TcxDBTextEdit
                  Left = 114
                  Top = 39
                  DataBinding.DataField = 'ciudadnacimiento'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 2
                  OnKeyPress = edtCreoCxDbTxtCiudadNacimientoKeyPress
                  Width = 226
                end
                object TDBFecha2CxDbDateFechaNacimiento: TcxDBDateEdit
                  Left = 114
                  Top = 18
                  DataBinding.DataField = 'fechanacimiento'
                  DataBinding.DataSource = dsPersonal
                  StyleFocused.Color = 16701617
                  TabOrder = 0
                  OnKeyPress = TDBFecha2CxDbDateFechaNacimientoKeyPress
                  Width = 226
                end
                object edtCreoCxDbTxtNombrePadre: TcxDBTextEdit
                  Left = 114
                  Top = 61
                  DataBinding.DataField = 'nombrepadre'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 4
                  OnKeyPress = edtCreoCxDbTxtNombrePadreKeyPress
                  Width = 226
                end
                object edtCreoCxDbTxtNombreMadre: TcxDBTextEdit
                  Left = 458
                  Top = 60
                  DataBinding.DataField = 'nombremadre'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 6
                  OnKeyPress = edtCreoCxDbTxtNombreMadreKeyPress
                  Width = 186
                end
                object edtCreoCxDbTxtPaisNacimiento: TcxDBTextEdit
                  Left = 458
                  Top = 39
                  DataBinding.DataField = 'Delegacion'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 3
                  OnKeyPress = edtCreoCxDbTxtPaisNacimientoKeyPress
                  Width = 186
                end
                object edtCreoCxDbTxtEstadoNacimiento: TcxDBTextEdit
                  Left = 458
                  Top = 18
                  DataBinding.DataField = 'estadonacimiento'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 1
                  OnKeyPress = edtCreoCxDbTxtEstadoNacimientoKeyPress
                  Width = 186
                end
                object CxLbl29: TcxLabel
                  Left = 16
                  Top = 19
                  Caption = 'Fecha Nacimiento:'
                  Transparent = True
                end
                object CxLbl30: TcxLabel
                  Left = 16
                  Top = 40
                  Caption = 'Cd. Nacimiento:'
                  Transparent = True
                end
                object CxLbl31: TcxLabel
                  Left = 16
                  Top = 61
                  Caption = 'Nombre Padre:'
                  Transparent = True
                end
                object CxLbl32: TcxLabel
                  Left = 367
                  Top = 19
                  Caption = 'Edo. Nacimiento:'
                  Transparent = True
                end
                object CxLbl33: TcxLabel
                  Left = 367
                  Top = 40
                  Caption = 'Pa'#237's:'
                  Transparent = True
                end
                object CxLbl34: TcxLabel
                  Left = 367
                  Top = 61
                  Caption = 'Nombre Madre:'
                  Transparent = True
                end
              end
              object datosTabDatosEmpleo: TcxTabSheet
                Caption = 'Datos de Empleo'
                ImageIndex = 2
                object edtCreoCxDbTxtRfc: TcxDBTextEdit
                  Left = 99
                  Top = 39
                  DataBinding.DataField = 'rfc'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 13
                  StyleFocused.Color = 16701617
                  TabOrder = 2
                  OnKeyPress = edtCreoCxDbTxtRfcKeyPress
                  Width = 224
                end
                object edtCreoCxDbTxtGrupoSanguineo: TcxDBTextEdit
                  Left = 424
                  Top = 39
                  DataBinding.DataField = 'gruposanguineo'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 15
                  StyleFocused.Color = 16701617
                  TabOrder = 3
                  OnKeyPress = edtCreoCxDbTxtGrupoSanguineoKeyPress
                  Width = 229
                end
                object edtCreoCxDbTxtNSS: TcxDBTextEdit
                  Left = 424
                  Top = 18
                  DataBinding.DataField = 'numerosegurosocial'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 11
                  StyleFocused.Color = 16701617
                  TabOrder = 1
                  OnKeyPress = edtCreoCxDbTxtNSSKeyPress
                  Width = 229
                end
                object CxLbl11: TcxLabel
                  Left = 353
                  Top = 19
                  Caption = 'N.S.S.:'
                  Transparent = True
                end
                object CxLbl12: TcxLabel
                  Left = 9
                  Top = 40
                  Caption = 'R.F.C:'
                  Transparent = True
                end
                object CxLbl15: TcxLabel
                  Left = 353
                  Top = 40
                  Caption = 'Tipo Sangre:'
                  Transparent = True
                end
                object CxLbl18: TcxLabel
                  Left = 9
                  Top = 126
                  Caption = 'Tipo Cr'#233'dito:'
                  Transparent = True
                end
                object edtCreoCxDbTxtNoInfonavit: TcxDBTextEdit
                  Left = 99
                  Top = 104
                  DataBinding.DataField = 'NumeroInfonavit'
                  DataBinding.DataSource = dsPersonal
                  Enabled = False
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 5
                  OnKeyPress = edtCreoCxDbTxtNoInfonavitKeyPress
                  Width = 554
                end
                object CxDbCBoxAplicaSobre: TcxDBComboBox
                  Left = 99
                  Top = 125
                  DataBinding.DataField = 'tAplicacionInfonavit'
                  DataBinding.DataSource = dsPersonal
                  Enabled = False
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'VECES EL SALARIO MINIMO'
                    'CUOTA FIJA MONETARIA'
                    'PORCENTAJE SOBRE SALARIO')
                  StyleFocused.Color = 16701617
                  TabOrder = 6
                  OnKeyPress = CxDbCBoxAplicaSobreKeyPress
                  Width = 554
                end
                object CxChkBoxInfonavit: TcxCheckBox
                  Left = 9
                  Top = 103
                  Caption = 'No. Infonavit'
                  TabOrder = 14
                  OnClick = CxChkBoxInfonavitClick
                  Width = 84
                end
                object CxLbl19: TcxLabel
                  Left = 9
                  Top = 147
                  Caption = 'Aplicaci'#243'n:'
                  Transparent = True
                end
                object TDBFecha2CxDbDateAplicacion: TcxDBDateEdit
                  Left = 99
                  Top = 146
                  DataBinding.DataField = 'AplicacionInfonavit'
                  DataBinding.DataSource = dsPersonal
                  Enabled = False
                  Properties.OnChange = TDBFecha2CxDbDateAplicacionPropertiesChange
                  StyleFocused.Color = 16701617
                  TabOrder = 7
                  OnKeyPress = TDBFecha2CxDbDateAplicacionKeyPress
                  Width = 224
                end
                object TDBFecha2CxDbDateTermino: TcxDBDateEdit
                  Left = 424
                  Top = 146
                  DataBinding.DataField = 'terminoInfonavit'
                  DataBinding.DataSource = dsPersonal
                  Enabled = False
                  Properties.ShowOnlyValidDates = True
                  StyleFocused.Color = 16701617
                  TabOrder = 8
                  OnKeyPress = TDBFecha2CxDbDateTerminoKeyPress
                  Width = 229
                end
                object CxLbl20: TcxLabel
                  Left = 353
                  Top = 147
                  Caption = 'T'#233'rmino:'
                  Transparent = True
                end
                object CxLbl21: TcxLabel
                  Left = 9
                  Top = 168
                  Caption = 'Importe/Fact:'
                  Transparent = True
                end
                object edtCreoCxDbTxtImporte: TcxDBTextEdit
                  Left = 99
                  Top = 167
                  DataBinding.DataField = 'FactorInfonavit'
                  DataBinding.DataSource = dsPersonal
                  Enabled = False
                  Properties.CharCase = ecUpperCase
                  StyleFocused.Color = 16701617
                  TabOrder = 9
                  OnKeyPress = edtCreoCxDbTxtImporteKeyPress
                  Width = 224
                end
                object CxLbl6: TcxLabel
                  Left = 9
                  Top = 19
                  Caption = 'C.U.R.P.:'
                  Transparent = True
                end
                object edtCreoCxDbTxtCurp: TcxDBTextEdit
                  Left = 99
                  Top = 18
                  DataBinding.DataField = 'curp'
                  DataBinding.DataSource = dsPersonal
                  Properties.CharCase = ecUpperCase
                  Properties.MaxLength = 18
                  StyleFocused.Color = 16701617
                  TabOrder = 0
                  OnKeyPress = edtCreoCxDbTxtCurpKeyPress
                  Width = 224
                end
                object CxLbl14: TcxLabel
                  Left = 9
                  Top = 61
                  Caption = 'Estado Civil:'
                  Transparent = True
                end
                object CxDbCBoxEstadoCivil: TcxDBComboBox
                  Left = 99
                  Top = 60
                  DataBinding.DataField = 'EstadoCivil'
                  DataBinding.DataSource = dsPersonal
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'Soltero'
                    'Casado'
                    'Viudo'
                    'Divorciado'
                    'Concuvinato')
                  StyleFocused.Color = 16701617
                  TabOrder = 4
                  OnKeyPress = CxDbCBoxEstadoCivilKeyPress
                  Width = 224
                end
              end
            end
            object CxCbbContratos: TcxDBLookupComboBox
              Left = 427
              Top = 28
              DataBinding.DataField = 'IdOrganizacion'
              DataBinding.DataSource = dsPersonalRh
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'IdOrganizacion'
              Properties.ListColumns = <
                item
                  Caption = 'Nombre Organizaci'#243'n'
                  FieldName = 'NombreOrganizacion'
                end>
              Properties.ListSource = dsContratosRH
              Properties.OnChange = CxCbbContratosPropertiesChange
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2010Blue'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
              TabOrder = 14
              Width = 118
            end
            object dbchkPersonalEspecial: TDBCheckBox
              Left = 573
              Top = 156
              Width = 101
              Height = 17
              Hint = 
                #191'Qu'#233' es esto?'#13#10'Esta opci'#243'n permite al usuario crear una marca en' +
                ' el catalogo de personal para'#13#10'identificar un personal de forma ' +
                'mas r'#225'pida, coloreando el registro de amarillo.'
              Caption = 'Personal Especial'
              Ctl3D = True
              DataField = 'Especial'
              DataSource = dsPersonal
              ParentCtl3D = False
              TabOrder = 15
              ValueChecked = 'Si'
              ValueUnchecked = 'No'
            end
          end
        end
        object datosDocumentos: TcxTabSheet
          Caption = 'Documentos'
          ImageIndex = 1
          object grpVistaPrevia: TGroupBox
            Left = 511
            Top = 0
            Width = 189
            Height = 404
            Align = alClient
            Color = clWhite
            Ctl3D = False
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            Visible = False
          end
          object CxGridDocumentos: TcxGrid
            Left = 0
            Top = 0
            Width = 505
            Height = 404
            Align = alLeft
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            TabOrder = 1
            LookAndFeel.SkinName = 'Office2010Blue'
            object CxGridDatosDocumentos: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Filter.Visible = True
              OnCellDblClick = CxGridDatosDocumentosCellDblClick
              DataController.DataSource = dsDoctosPostulante
              DataController.Filter.Active = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<Sin documentos para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylGridBackground
              object tcxDocumento: TcxGridDBColumn
                Caption = 'Documento'
                DataBinding.FieldName = 'nombredocumento'
                Width = 182
              end
              object tcxFechaExpedicion: TcxGridDBColumn
                Caption = 'Fecha Expedicion'
                DataBinding.FieldName = 'fechaexpedicion'
                Width = 94
              end
              object tcxFechaVigencia: TcxGridDBColumn
                Caption = 'Fecha Vigencia'
                DataBinding.FieldName = 'fechavigencia'
                Width = 88
              end
              object tcxFechaAplicacion: TcxGridDBColumn
                Caption = 'Fecha Aplicacion'
                DataBinding.FieldName = 'fechaaplicacion'
                Width = 92
              end
            end
            object CxLevelDatosDocumentos: TcxGridLevel
              GridView = CxGridDatosDocumentos
            end
          end
          object CxSplit1: TcxSplitter
            Left = 505
            Top = 0
            Width = 6
            Height = 404
            HotZoneClassName = 'TcxMediaPlayer9Style'
            Control = CxGridDocumentos
            Visible = False
          end
        end
        object datosBancarios: TcxTabSheet
          Caption = 'Datos Bancarios'
          ImageIndex = 2
          object CxGridBancarios: TcxGrid
            Left = 0
            Top = 0
            Width = 700
            Height = 404
            Align = alClient
            BorderStyle = cxcbsNone
            TabOrder = 0
            LookAndFeel.SkinName = 'Office2010Blue'
            object CxGridDatosBancarios: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsdatosbancarios
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<Sin cuentas Bancarias para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylGridBackground
              object tcxBanco: TcxGridDBColumn
                Caption = 'Banco'
                DataBinding.FieldName = 'nombre'
                Width = 107
              end
              object tcxSucursal: TcxGridDBColumn
                DataBinding.FieldName = 'Sucursal'
                Width = 91
              end
              object tcxNumeroDeCuenta: TcxGridDBColumn
                Caption = 'Numero de Cuenta'
                DataBinding.FieldName = 'Numerodecuenta'
                Width = 122
              end
              object tcxClabeInterbancaria: TcxGridDBColumn
                Caption = 'Clabe Interbancaria'
                DataBinding.FieldName = 'Claveinterbancaria'
                Width = 124
              end
              object tcxFechaDeAplicacion: TcxGridDBColumn
                Caption = 'Fecha De Aplicacion'
                DataBinding.FieldName = 'Fechadeaplicacion'
                Width = 122
              end
              object tcxEstado: TcxGridDBColumn
                DataBinding.FieldName = 'Estado'
                Width = 124
              end
            end
            object CxLevelDatosBancarios: TcxGridLevel
              GridView = CxGridDatosBancarios
            end
          end
        end
      end
    end
  end
  object DxRibbonMain: TdxRibbon
    Left = 0
    Top = 0
    Width = 702
    Height = 126
    BarManager = DxBManagerDocumentos
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 4
    TabStop = False
    OnTabChanged = DxRibbonMainTabChanged
    object dxTabPersonal: TdxRibbonTab
      Caption = 'Datos Personales'
      Groups = <
        item
          ToolbarName = 'DxBManagerDocumentosBar1'
        end
        item
          ToolbarName = 'DxBarExtras'
        end
        item
          ToolbarName = 'DxBarCerrar'
        end>
      Index = 0
    end
    object dxTabDocumentos: TdxRibbonTab
      Active = True
      Caption = 'Documentos'
      Groups = <
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar2'
        end
        item
          Caption = 'Opciones de Documentos'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar3'
        end
        item
          Caption = 'Ver'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar4'
        end
        item
          Caption = 'Cerrar'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar5'
        end>
      Index = 1
    end
    object dxTabDatosBancarios: TdxRibbonTab
      Caption = 'Datos Bancarios'
      Groups = <
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar6'
        end
        item
          Caption = 'Opciones Datos Bancarios'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar7'
        end
        item
          Caption = 'Cerrar'
          ToolbarName = 'dxToolBarDxBManagerDocumentosBar8'
        end>
      Index = 2
    end
  end
  object CdUptPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 504
  end
  object CdUptDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 504
  end
  object dsPersonal: TDataSource
    DataSet = CdUptPersonal
    Left = 640
    Top = 504
  end
  object dsDocumentos: TDataSource
    DataSet = CdUptDocumentos
    Left = 544
    Top = 504
  end
  object DxBManagerDocumentos: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 664
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object DxBManagerDocumentosBar1: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 705
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnGuardar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnGuardarCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarExtras: TdxBar
      Caption = 'Opciones de Imagen'
      CaptionButtons = <>
      DockedLeft = 131
      DockedTop = 0
      FloatLeft = 705
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnCargarImagen'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCopiarImagen'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEliminarImagen'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarCerrar: TdxBar
      Caption = 'Cerrar'
      CaptionButtons = <>
      DockedLeft = 317
      DockedTop = 0
      FloatLeft = 705
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnCerrar'
        end
        item
          Visible = True
          ItemName = 'dxbrbtn1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar2: TdxBar
      Caption = 'Guardar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardar1'
        end
        item
          Visible = True
          ItemName = 'btnGuardarYCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar3: TdxBar
      Caption = 'Opciones de Documentos'
      CaptionButtons = <>
      DockedLeft = 131
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAgregar'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnEliminar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar4: TdxBar
      Caption = 'Ver'
      CaptionButtons = <>
      DockedLeft = 309
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAbrir'
        end
        item
          Visible = True
          ItemName = 'btnVistaPrevia'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar5: TdxBar
      Caption = 'Cerrar de Documentos'
      CaptionButtons = <>
      DockedLeft = 414
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar6: TdxBar
      Caption = 'Guardar de Datos Bancarios'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardarCerrarDatosBancarios'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar7: TdxBar
      Caption = 'Opciones Datos Bancarios'
      CaptionButtons = <>
      DockedLeft = 73
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          Visible = True
          ItemName = 'btnEditarCuenta'
        end
        item
          Visible = True
          ItemName = 'btnEliminarCuenta'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarDxBManagerDocumentosBar8: TdxBar
      Caption = 'Cerrar de Datos Bancarios'
      CaptionButtons = <>
      DockedLeft = 259
      DockedTop = 0
      FloatLeft = 726
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBLbuttonAgregar: TdxBarLargeButton
      Caption = '&Agregar'
      Category = 0
      Hint = 'Agregar'
      Visible = ivAlways
      LargeImageIndex = 432
      AutoGrayScale = False
    end
    object DxBLbuttonPreview: TdxBarLargeButton
      Caption = '&Preview'
      Category = 0
      Hint = 'Preview'
      Visible = ivAlways
      LargeImageIndex = 877
      AutoGrayScale = False
    end
    object DxBLbuttonEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 856
      AutoGrayScale = False
    end
    object DxBLbuttonEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 828
      AutoGrayScale = False
    end
    object DxBLbuttonAbrir: TdxBarLargeButton
      Caption = '&Abrir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
      LargeImageIndex = 448
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = 448
    end
    object DxBarBtnGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Visible = ivNever
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000300000005000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000600000004000000010000000100000000000000000000
        0001000000060000000E000000160000001A0000001B0000001B0000001B0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000
        001D0000001C0000001800000010000000070000000100000000000000010000
        00030000000E2D1F198E583E33FD593D34FF583C32FF583C32FF5A3F37FFC58D
        5DFFC18656FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D
        3DFFAF6B3AFFAC6837FFAB6535FFA96333FFA76030FF50342DFF4F342CFF4F34
        2CFF4F342DFF4E342DFD2519158B000000100000000400000001000000010000
        0005000000145C3F36FD806357FF745449FF73534AFF735349FF61473EFFE8C5
        94FFE5BE89FFE3B981FFE3B87FFFE3B67DFFE2B57AFFE1B278FFE0B175FFDFAF
        73FFDEAD71FFDEAC6FFFDDAB6DFFDDAA6CFFDDA86AFF523731FF6B4C42FF6B4C
        42FF6B4C42FF6B4D43FF4E342BFB000000170000000600000001000000010000
        0006000000175F4337FF83655AFF77574CFF76574BFF76574BFF654B41FFEAC8
        98FFE6C08CFFE5BC85FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B0
        75FFDFAF72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFF553932FF6B4C43FF6C4D
        42FF6B4C42FF6D4F45FF50362DFF0000001B0000000700000001000000010000
        000600000017624539FF87695DFF79594EFF795A4EFF795A4EFF684E44FFE1C2
        96FFDCB988FFDBB684FFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A8
        70FFD4A66EFFD4A56BFFD3A369FFD3A267FFD3A166FF583D35FF6D4F44FF6D4E
        45FF6C4D44FF6E5047FF51362FFF0000001B0000000700000001000000010000
        00060000001766483CFF8C6E63FF7D5D51FF7D5D50FF7C5C50FF6C5247FFFAF5
        F2FFF9F3F0FFF9F2EFFFF7F1ECFFF7F0EBFFF6F0EAFFF6EEE9FFF5EEE9FFF5EE
        E8FFF4EDE7FFF4ECE7FFF3ECE6FFF4EBE5FFF3EBE4FF5A3F38FF6F5046FF6E50
        46FF6E4F45FF715348FF523830FF0000001A0000000700000001000000010000
        000500000016684B3EFF917366FF816153FF816153FF7F6154FF6E554AFFFAF7
        F3FFF9F4F0FFF9F3EFFFF8F3EDFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EE
        E9FFF5EDE8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FF5E4339FF705248FF7052
        48FF6F5147FF72554BFF523A31FF000000190000000600000001000000010000
        0005000000156C4F42FF95786AFF846456FF836557FF836456FF72584DFFFAF7
        F5FFFAF5F2FFD5B8A9FFD2B4A6FFCCA899FFC9A492FFC6A090FFC39C8BFFC097
        87FFBE9283FFBA8F7FFFB88C7BFFF4EDE6FFF4ECE6FF60463DFF72544BFF7053
        4BFF705248FF75574DFF543A32FF000000190000000600000001000000010000
        0005000000156F5346FF997D6FFF87675AFF876859FF876859FF755C50FFFBF8
        F6FFFAF6F2FFFAF5F1FFF9F5F1FFF9F3EFFFF7F2EDFFF7F1EDFFF6F0EBFFF6EF
        EAFFF5EFEAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FF634940FF73564CFF7355
        4CFF72544BFF775A4FFF563D34FF000000180000000600000001000000000000
        000500000014735649FF9E8275FF8B6B5CFF8A6D5EFF8B6C5DFF796053FFFCF9
        F7FFFAF7F3FFD9BEB1FFD8BCAEFFD5BAABFFCDAC9DFFCBA797FFC8A392FFC6A0
        8FFFC39B8BFFC09787FFBD9283FFF5EEE8FFF4EDE8FF664C43FF75594EFF7458
        4DFF74574CFF795C53FF573D35FF000000180000000600000001000000000000
        00050000001376594BFFA28878FF8E7061FF8F7061FF8E7062FF7C6155FFFCF9
        F8FFFBF7F4FFFAF7F4FFF9F6F3FFF9F5F2FFF9F4F1FFF8F2EEFFF7F1EDFFF7F0
        ECFFF6F0ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FF694F46FF775B50FF7759
        4FFF75594EFF7B6056FF594037FF000000170000000600000001000000000000
        0005000000137B5D4EFFA68D7FFF937464FF937464FF917465FF7F6659FFFCFB
        F9FFFCF9F8FFFCF9F8FFFCF9F7FFFBF9F6FFFCF8F5FFF9F6F3FFF9F5F2FFF9F5
        F1FFF9F4F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFF6C5248FF785E52FF775D
        51FF775A50FF7F6359FF5C4239FF000000160000000600000001000000000000
        0005000000127E6152FFAB9182FF967767FF957A67FF957968FF876D5EFF8268
        5BFF82695AFF82685AFF81685AFF80675AFF7F6759FF7A6155FF755D51FF745B
        50FF735B50FF725A4FFF72594FFF71594EFF70574CFF72594EFF7B6055FF7A60
        54FF795E52FF81675BFF5D433AFF000000160000000500000001000000000000
        000400000012836654FFB09687FF997B6BFF9A7D6BFF9A7E6BFF9A7D6CFF997D
        6BFF997E6CFF997E6BFF997E6CFF987E6DFF997E6CFF967B6BFF82675BFF7F66
        5AFF806659FF7F6659FF7F655AFF7F6559FF7F6458FF7D6257FF7C6255FF7C61
        55FF7A6054FF826A5EFF5E463CFF000000150000000500000001000000000000
        000400000011866958FFB39B8CFF9D816FFF9D7F6EFF9D816EFF9D816FFF9D81
        70FF9D826FFF9D8270FF9D8270FF9C8170FF9B8170FF9C826FFF8D7364FF8369
        5CFF82695DFF82685CFF81675CFF81675BFF7F6659FF7F6559FF7F6458FF7D63
        58FF7D6257FF866D61FF61483EFF000000140000000500000001000000000000
        0004000000108A6C5BFFB79F91FFA08471FFA08471FFA08571FFA08573FFA085
        73FFA08574FFA08673FFA18673FFA08574FFA08673FF9F8574FF9C8271FF836A
        60FF836B60FF836A5FFF836A5DFF83695DFF82695DFF81685BFF81675AFF7F65
        59FF7F6359FF886E64FF624940FF000000140000000500000000000000000000
        0004000000108D705EFFBBA494FFA48774FFA48874FFAA927FFFAC9582FFAD94
        83FFAD9482FFAC9382FFAC9482FFAC9483FFAB9381FFAA9282FFAA9080FF9880
        71FF8E766BFF8D756AFF8D7568FF8C7468FF897167FF887065FF866E61FF8167
        5CFF806659FF8B7267FF634A40FF000000130000000500000000000000000000
        00040000000F907462FFBFA898FFA68A77FFA78B79FFB09785FF6E5449FF5439
        31FF543831FF60463EFF644A42FF634A40FF61483FFF5F473CFF5E453CFF5C44
        3BFF5B4339FF5A4139FF594137FF583F36FF563E36FF654D43FF887164FF836A
        5DFF82685CFF8D766AFF654C42FF000000120000000500000000000000000000
        00040000000E957764FFC2AD9DFFA98D7BFFAA8F7BFFB29986FF563A33FF5944
        3DFF644E47FF75594EFFE8DAD0FFDCC5B5FFDBC4B5FFDBC4B3FFDAC3B3FFDAC3
        B2FFD9C2B1FFE3D2C6FFE2D1C5FFE2D0C3FFE1CFC2FF573F37FF8A7266FF856C
        5EFF836A5EFF8F796EFF664F44FF000000120000000400000000000000000000
        00030000000E977A67FFC5B0A0FFAC907CFFAD927DFFB39C88FF573B34FF5A45
        3EFF654F48FF775B50FFEBDFD5FFDEC9BBFFDEC9B9FFDDC8B8FFDDC7B7FFDCC6
        B6FF584139FF705448FF705347FF6F5246FFE4D3C7FF594138FF8B7368FF856D
        62FF856B5FFF937B70FF685146FF000000110000000400000000000000000000
        00030000000D9B7D6AFFC8B4A3FFAE947FFFAF9480FFB79E8BFF583C34FF5B46
        3FFF655049FF795D53FFEFE4DBFFE1CEC0FFE1CDBFFFE1CDBDFFE0CBBBFFDFCA
        BBFF554038FF61473FFF654B42FF715548FFE7D8CDFF5B433AFF8C7468FF876F
        62FF876D60FF957E72FF695147FF000000100000000400000000000000000000
        00030000000C9C7F6BFFCAB6A7FFB29681FFB29782FFB89F8CFF593C35FF5B46
        40FF66514AFF7B5F55FFF2E8E0FFE5D3C5FFE4D3C4FFE3D1C2FFE3D0C1FFE2CF
        C0FF523E36FF5B413AFF5E433BFF73564BFFEBDDD4FF5E463CFF8E7469FF8871
        65FF866E64FF968075FF6B5348FF000000100000000400000000000000000000
        00030000000C9E826CFFCDBAAAFFB39983FFB49984FFBBA18DFF593D35FF5C47
        40FF68524BFF7D6157FFF4ECE5FFE8D8CAFFE8D7C9FFE7D6C8FFE6D5C7FFE6D4
        C6FF4E3C34FF553B34FF583E36FF75584DFFEEE2D9FF60483EFF8F766AFF8A72
        66FF896F65FF998377FF6C544AFF0000000F0000000400000000000000000000
        00030000000BA2836EFFCFBCACFFB69B86FFB59B86FFBBA28FFF5A3E36FF5C47
        41FF68524BFF7E6459FFF6F0EAFFEBDCCFFFEADCCEFFEADBCDFFE9DACCFFE8D9
        CBFF4B3A33FF523731FF533832FF765A4FFFF1E6DEFF624A41FF8E786AFF8A73
        67FF897165FF9B8579FF6D564BFF0000000E0000000400000000000000000000
        00030000000AA3876FFFD1BEB0FFB89D89FFB89E87FFBDA390FF5B3E37FF5C48
        42FF69524CFF80665CFFF8F3EEFFEEE1D4FFEDE0D3FFEDDFD2FFECDED1FFEBDD
        D0FF473832FF493832FF493932FF493832FFF3EBE4FF654D43FF90766CFF8D73
        68FF8A7166FF9E877DFF6D564BFF0000000D0000000300000000000000000000
        000200000008A1866EF9D2BFB0FFD3C0B2FFD3C2B1FFD6C5B6FF5B3E37FF5D48
        42FF69534CFF82675DFFF9F5F1FFF9F5F0FFF9F4EFFFF9F4EFFFF8F3EEFFF8F2
        EDFFF7F2ECFFF7F1EBFFF7F1EBFFF6F0EAFFF6EEE9FF664F46FFB4A399FFB3A0
        97FFB19D95FFB09C93FF6E564CFC0000000B0000000300000000000000000000
        00010000000552443984A48873FCA88C75FFA98D76FFA88F78FF836859FF765B
        4DFF765A4DFF80655BFFA9948BFFA89289FFA59087FFA48E85FFA28C82FFA08A
        80FF9E877EFF9C847BFF998278FF987F76FF947C73FF695148FF745F52FF745E
        51FF725B50FF6F584DFC453730A5000000070000000200000000000000000000
        0000000000020000000500000007000000090000000900000009000000090000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
        000B0000000B0000000A00000007000000030000000100000000000000000000
        0000000000000000000100000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ShortCut = 16455
      OnClick = DxBarBtnGuardarClick
    end
    object DxBarBtnGuardarCerrar: TdxBarLargeButton
      Caption = 'G&uardar y Cerrar'
      Category = 0
      Hint = 'Guardar y Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0001000000010000000300000004000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        0001000000050000000B00000011000000150000001500000016000000160000
        0016000000160000001600000017000000170000001700000017000000170000
        0018000000180000001800000018000000180000001900000019000000180000
        00150000000E0000000600000001000000000000000000000000000000000000
        00020000000B2D1F1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC084
        54FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAF6B
        3AFFAC6837FFAB6535FFA96333FFA76030FFA76030FF523730FF51362EFF5035
        2EFE261915890000000E00000003000000010000000000000000000000000000
        0004000000105C4037FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC
        85FFE4BA83FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDFAF
        72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFFDCA96BFF5E423AFF6C4F44FF6F50
        48FF50352EFB0000001400000005000000010000000000000000000000000000
        00050000001260443BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B3
        7FFFD8B17DFFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD4A6
        6EFFD4A56BFFD3A369FFD3A267FFD3A166FFDEAA6BFF61443CFF6E4F45FF7253
        49FF52372FFF0000001700000006000000010000000000000000000000000000
        00050000001263473DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3
        EEFFF8F2EDFFF7F2ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF5ED
        E8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FFF3EAE5FF63473EFF6E5046FF7155
        4BFF533831FF0000001700000006000000010000000000000000000000000000
        000400000012664A40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3
        F0FFF8F2EFFFF7F2EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF5EE
        E9FFF5EEE8FFF4EDE7FFF4EDE6FFF4ECE6FFF4EBE6FF674A41FF6F5147FF7456
        4DFF543932FF0000001700000006000000010000000000000000000000000000
        0004000000116A4E42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4
        F0FFF9F3EFFFF8F3EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF5EF
        EAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FFF4EBE6FF694D43FF705248FF7558
        4EFF553A33FF0000001600000006000000010000000000000000000000000000
        0004000000106E5146FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5
        F1FFF9F4F1FFF8F3F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF6EF
        EAFFF6EFE9FFF5EEE9FFF5EEE8FFF4EDE8FFF4ECE6FF6C5046FF71534AFF765A
        50FF573C34FF0000001500000005000000010000000000000000000000000000
        000400000010715549FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5
        F2FFF9F5F1FFF8F4F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF6F0
        ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FFF5EDE7FF6F5349FF72554BFF795D
        52FF583D35FF0000001500000005000000010000000000000000000000000000
        00040000000F75594CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8
        F6FFFBF8F6FFFBF8F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF9F4
        F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFFF7F0EBFF72564BFF73564BFF7B5F
        54FF593E36FF0000001400000005000000010000000000000000000000000000
        00040000000F795C4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C
        5EFF866B5DFF856A5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D
        51FF775C50FF765B50FF765A4FFF75594EFF755A4EFF74584EFF75574DFF7D61
        56FF5A4038FF0000001300000005000000000000000000000000000000000000
        00030000000E7C5F52FFAB9386FF937768FF927767FF917566FF907565FF8F73
        65FF8E7263FF8D7163FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C
        51FF785B52FF785B51FF775B51FF765A50FF765A4FFF76594FFF75594EFF7F63
        58FF5B423AFF0000001300000005000000000000000000000000000000000000
        00030000000D806356FFB0988AFF967B6BFF957A6AFF947869FF947868FF9277
        67FF927566FF917565FF907365FF8F7363FF8D7263FF83695BFF755A50FF7057
        4DFF70564DFF6F564CFF6F554CFF6E554CFF6E544BFF6E544AFF6E5449FF775E
        55FF543D36FF00000026000000190000000D0000000300000000000000000000
        00030000000D846758FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A
        6BFF957968FF947869FF937767FF927666FF917465FF896E60FF422F6FFF3221
        7FFF33207FFF32207FFF321F7EFF311F7EFF311F7EFF311E7EFF311D7DFF311D
        7CFF301D7CFF231192FF231191FF190C68C50000000C00000000000000000000
        00030000000C886C5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA289
        79FFA08779FFA08777FF9F8476FF9D8374FF9C8272FF93786AFF362483FF384A
        D3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444D3FF3C4E
        D6FF2A3ACEFF202FC9FF1E2CC9FF251595FF0000001200000000000000000000
        00030000000C8A6F5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E44
        3CFF614840FF60483FFF5F473EFF5E463DFF5D453DFF584038FF3121A0FF4356
        D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353ABEFF2827
        ABFF3B45C9FF2F41D0FF2332CCFF291A99FF0000001200000000000000000000
        00030000000B8E7361FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D
        44FFE9D5C9FFE8D5C9FFE8D5C8FFE6D4C8FFE8D4C7FFD9C8BCFF3529A5FF4E62
        DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89CEFFEDED
        F8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF0000001100000000000000000000
        00030000000B917663FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A51
        48FFF4E4D5FFEFDED0FFEAD9CBFFE8D6C9FFE8D4C8FFDCC9BEFF392FABFF596F
        DFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1EDFFF3E9
        E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F00000000000000000000
        00020000000A957967FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F55
        4CFFF7E8D9FFF6E8D8FFF5E6D7FFF2E2D4FFECDBCFFFDECDC1FF4036B1FF657A
        E2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9E2FFEADA
        D1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E00000000000000000000
        000200000009987C69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF7359
        4FFFF8EADBFFF7E9DAFFF6E8D9FFF5E7D8FFF4E6D7FFE6D7CBFF453DB6FF6E83
        E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EBE5FF897D
        B8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D00000000000000000000
        0002000000099A7F6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D
        53FFF9ECDCFFF8EBDCFFF7EADBFFF6E8DAFFF5E7D9FFEBDDD0FF4A44BCFF788F
        E8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7EDE8FF9087
        C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000000000000000000
        0002000000089D816DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A60
        56FFFAEDDEFFF9ECDDFFF8EBDCFFF8EADBFFF7E9DAFFECDFD1FF504CC2FF92A7
        EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0EAFFFAF5
        F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B00000000000000000000
        000200000008A0846FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E64
        5AFFFBEEDEFFFAEDDEFFF9EDDDFFF8ECDDFFF8EADBFFEFE2D4FF6B6AD0FFADC1
        F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDFD8FFF4EC
        E7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A00000000000000000000
        000100000006A08570FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF8065
        5CFFFCEFDFFFFBEEDFFFFAEEDEFFFAEDDEFFF9ECDDFFF1E5D6FF7577D6FFB1C6
        F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68A8FFCBB5
        BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000000000000000000
        00010000000451433983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C
        53FFA9948BFFA8938AFFA69188FFA58F86FFA38D83FF9D887EFF797BDAFFB5CA
        F6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555BCFF2E21
        9BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF0000000800000000000000000000
        0000000000010000000400000006000000070000000700000007000000070000
        000800000008000000080000000800000008000000080000000D7D80DEFFB9CD
        F6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CCF6FFB7CB
        F6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF0000000600000000000000000000
        0000000000000000000100000001000000020000000200000002000000020000
        00020000000200000002000000020000000000000002000000056062A6C08184
        E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81DEFF7D81
        DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C10000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0003000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGuardarCerrarClick
    end
    object DxBarBtnCargarImagen: TdxBarLargeButton
      Caption = 'Cargar I&magen'
      Category = 0
      Hint = 'Cargar Imagen'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000060000
        000E000000150000001700000018000000180000001800000018000000190000
        001900000019000000190000001900000019000000190000001A0000001A0000
        001A0000001A0000001A0000001A0000001A0000001B0000001B0000001A0000
        001700000010000000070000000200000000000000000000000000000010173B
        7ACD2557A4FF2859A5FF2758A6FF2757A5FF2558A5FF2656A3FF2656A4FF2456
        A4FF2455A4FF2455A3FF2354A2FF2353A2FF2252A2FF2253A2FF2151A1FF2151
        A1FF2051A1FF2050A0FF1F4FA0FF1F4F9FFF1F4E9FFF1E4D9FFF1D4D9EFF1C4B
        9CFF173F8AEE040A143D0000000B000000020000000000000000000000151D50
        9FFF2359A5FF4F95CFFF64BBEDFF47A7E7FF46A5E6FF44A4E6FF42A3E5FF40A2
        E4FF3FA1E4FF3E9FE3FF3C9EE3FF3B9DE2FF3A9CE1FF389BE1FF389AE1FF359A
        E1FF3598E0FF3497E0FF3397DEFF3296E0FF3195DEFF3095DEFF3095DEFF2E90
        DAFF297DCAFF12326BBF00000011000000040000000000000000000000162154
        A3FF2E65ADFF3D7BBCFF7ECBF2FF4FADE9FF4BAAE8FF49AAE8FF47A7E6FF45A6
        E6FF43A5E5FF43A3E4FF40A2E5FF40A1E4FF3FA0E4FF3D9FE3FF3B9DE3FF3A9D
        E2FF399CE2FF379BE1FF379AE2FF3599E1FF3398E1FF3298DFFF3197DFFF3096
        DFFF3295DEFF1A4A98F80103051D00000005000000010000000000000014245C
        A9FF3E76B9FF2862ADFF8CD1F2FF64BCEEFF52B0EBFF51AFEAFF50AEE9FF4DAD
        E8FF4CAAE7FF4AA9E7FF48A8E7FF47A7E6FF45A5E6FF43A4E6FF42A3E5FF41A1
        E4FF3FA1E4FF3D9FE4FF3C9FE3FF3B9EE3FF3A9DE2FF399CE1FF379AE1FF3699
        E0FF389CE1FF2363B1FF08162E5D000000080000000100000000000000132661
        AFFF4D86C3FF2765AEFF7CBAE1FF82CFF3FF59B6EDFF57B5EDFF57B4ECFF54B3
        ECFF53B1EAFF51B0EAFF51AEE8FF4FADE8FF4CAAE8FF4AAAE7FF49A8E7FF48A8
        E6FF46A5E5FF44A6E6FF43A4E5FF41A3E5FF40A2E4FF3FA1E3FF3E9FE2FF3C9F
        E2FF3D9FE3FF2F7AC4FF0F2A56970000000A0000000200000000000000122A67
        B1FF5C95CEFF2F6FB7FF619DCFFF9FDEF8FF5FBAF0FF5EBAEFFF5EB9EEFF5CB9
        EDFF5BB7EDFF59B7EDFF58B4ECFF57B4EBFF55B2EAFF53B0EAFF51AFEAFF4FAF
        E9FF4EADE9FF4CABE8FF4BAAE7FF49A8E7FF48A7E7FF46A6E6FF45A5E5FF43A4
        E5FF44A4E4FF4198D9FF164385D80000000D0000000300000001000000112D6C
        B5FF6BA5D6FF387FC4FF4183C0FFB5E8FBFF70C6F3FF65BFF1FF64BFF1FF62BE
        F1FF62BDEFFF61BCF0FF60BBEFFF5DBAEEFF5DB9EEFF5CB7EDFF5AB6ECFF58B5
        EBFF57B3EBFF55B1EBFF53B0E9FF51AFE9FF50AEE9FF4EADE8FF4CABE8FF4AAA
        E6FF49A9E6FF50ADE8FF225EAAFF030A132C0000000400000001000000103071
        B7FF79B4DFFF4791D1FF387EBEFFA7DBF1FF91D9F8FF6BC4F3FF6BC3F3FF69C3
        F3FF69C2F2FF67C1F0FF66C0F0FF66C0F0FF64BFEFFF64BEEFFF62BCEEFF60BC
        EFFF5EBAEDFF5CB9EDFF5CB8EDFF59B5ECFF58B4EBFF56B2EAFF54B1EAFF53B0
        E9FF50AEE8FF56B1E9FF357CC1FF0C2344740000000700000002000000103176
        BAFF88C0E7FF53A2DCFF418CCAFF87BFE0FFB1E8FBFF70C9F5FF70C9F5FF6FC7
        F4FF6EC7F4FF6EC6F3FF6DC6F3FF6CC5F3FF6BC4F1FF6AC3F1FF6AC3F1FF69C1
        F1FF67C0F0FF65BFF0FF63BDEEFF62BDEEFF61BBEEFF5EBAEEFF5DB8ECFF5AB6
        ECFF59B5EBFF5CB7EBFF4D9DD7FF153F75BA00000009000000020000000F347B
        BDFF98CDEDFF61B1E4FF509FDAFF65A6D3FFCBF4FDFF7BD1F7FF75CDF6FF75CD
        F6FF74CCF6FF73CAF6FF73CAF5FF71C9F4FF71C9F4FF70C7F4FF70C7F2FF6EC7
        F2FF6EC6F2FF6DC5F2FF6BC4F2FF6AC3F1FF68C1EFFF66BFEFFF64BFEFFF63BE
        EFFF61BBEDFF61BBEDFF69BDECFF215DA4F701030614000000030000000E357E
        BFFFA3D9F3FF71C1EDFF63B7EAFF4C98CDFFC1E9F7FFD4F6FEFFD4F6FEFFD3F6
        FEFFD2F6FEFFD2F6FEFFD2F5FEFFD0F4FEFFCDF3FCFFAEE8FAFF7ACEF5FF74CA
        F5FF73C9F4FF72CAF4FF72C9F3FF71C8F3FF6FC6F3FF6EC6F2FF6DC4F1FF6BC3
        F0FF69C2F0FF67C0EFFF71C5F0FF377DBFFF091C3255000000050000000D3782
        C1FFB0E2F8FF7CCDF4FF73C7F2FF5FB5E6FF50A0D3FF4D9ACDFF4C98CCFF4B98
        CBFF4996CBFF4894CBFF4693CAFF4591CAFF73B1D9FFC8EEF9FFC5F1FCFF88D6
        F7FF78CEF6FF78CDF6FF77CCF6FF76CDF5FF76CCF5FF75CBF4FF73CAF3FF72C9
        F3FF70C7F2FF6EC6F2FF76C9F2FF56A1D5FF133A659D000000060000000C3985
        C3FFBAEBFCFF87D9FAFF82D6F9FF7BD1F9FF74CEF8FF70CBF8FF6DC7F6FF6AC6
        F5FF68C5F5FF65C1F4FF63BFF4FF5DBAF2FF50AAE5FF529DD2FFA7D5ECFFD9F7
        FEFFD8F7FEFFD7F7FEFFD7F7FEFFD6F6FEFFD6F6FEFFD5F6FEFFD4F5FEFFD4F5
        FEFFD2F4FDFFD1F4FDFFD0F3FDFFB8E1F2FF1D5897E0000000070000000B3B89
        C5FFC3F1FEFF92E2FEFF8EE0FEFF8BDEFEFF88DDFDFF85DAFCFF82D8FCFF7FD6
        FCFF7CD3FBFF7AD2FAFF77D1FAFFADE0FAFFA5D9F4FF9ED5F2FF7EBCE2FF4796
        CBFF4694CBFF4592CAFF4491C9FF418FC8FF418FC8FF3F8CC7FF3E8BC7FF3D8A
        C6FF3B88C5FF226AB1FF216AB0FF2064A6F415416DA4000000050000000B3C8C
        C7FFC7F3FFFF96E6FEFF94E4FFFF92E3FEFF90E1FEFF8DDFFEFF8BDDFDFF88DC
        FDFF86DAFCFF83D9FCFF80D6FCFFB3E2F6FFAA744EFF9D8C7EFFAEDBF2FF8FD3
        F7FF62C3F6FF5EBFF6FF5CBDF5FF5ABAF4FF58B8F4FF55B7F3FF53B5F3FF6EC4
        F5FF2C6CB1FF000000170000000D0000000800000006000000030000000A3D8F
        C9FFCCF5FFFF9BE8FFFF98E7FFFF96E6FFFF94E4FEFF92E3FEFF90E0FEFF8DE0
        FEFF8BDEFEFF89DDFDFF86DBFCFFB5E3F5FFAE734AFFCB9D6AFF9F8D7DFFB4DE
        F3FFA1DCF9FF77CFF9FF6DCAF9FFADDEF8FFA8D9F3FFA9DAF6FF7CCAF6FF7FCE
        F8FF357DBEFF0000000F00000005000000020000000100000001000000093E91
        CBFFCEF5FFFFA0EBFFFF9DEAFFFF9BE8FFFF99E7FFFF97E6FFFF94E4FFFF92E3
        FEFF90E1FEFF8EE0FEFF8CDFFEFFBBE6F8FFB18B6DFFE4C18FFFCB9D66FF9E80
        6AFFB1CEDAFFB4E1F5FF9DDAF8FFB3DDF2FFAC7046FF9DA3A3FFAEDAF0FFAEE0
        F8FF448BC6FF0000000C00000003000000000000000000000000000000084095
        CDFFD2F7FFFFA3EDFFFFA1ECFFFF9FEAFFFF9DE9FFFF9BE8FFFF99E7FFFF96E6
        FFFF94E5FFFFA1EAFEFFC0F6FEFFDDF8FBFFC9BCABFFD1A67BFFF5D498FFD7AE
        75FFA46D44FFAE917AFFC2BFB5FFC8D2D0FFB16F40FFAF7848FFA07B5FFFBECF
        D2FF91B5D2F30000000C00000003000000000000000000000000000000084297
        CEFFD5F8FFFFA7EEFFFFA5EEFFFFA3EDFFFFA1EBFFFFA0EBFFFF9DE9FFFF9BE9
        FFFFA5EDFEFF92D2ECFF3F93CBFF67A8D5FF9CC0D8FFB78B65FFF1DAAEFFF5D6
        99FFF2D295FFCFA671FFB48152FFA66D42FFB47749FFF1D094FFD3A972FF9E67
        3EFE857266CD0000001300000005000000010000000000000000000000074299
        CFFFD7F9FFFFA9F0FFFFA8EFFFFFA7EEFFFFA5EEFFFFA3EDFFFFA1ECFFFFA7ED
        FFFF8ED2ECFF2A6082A80000000B000000090000000C3A2A1C5DCFA67DFFFAE7
        BDFFF6DCA3FFF6DA9DFFF4D79DFFF4D79CFFF4D69AFFF3D59AFFF2D498FFEDCB
        92FFBD8B5AFF734526C4140C0732000000040000000000000000000000053D8D
        BDE8B2E3F3FFD5F9FEFFD4F9FEFFD4F9FEFFD4F9FEFFD3F9FEFFD3F9FEFFC5F0
        FAFF4893C1EA050B0F1A00000004000000020000000200000006543E2B79D2AC
        84FFF5E3C1FFFBEDC8FFFBF0CAFFFBF2CDFFFCF2CCFFFBF0C8FFF9EABEFFF6E0
        AEFFF7E2B7FFE8CDA8FFA9764BEC000000070000000000000000000000031127
        3445357CA6CB449DD2FF449DD2FF449DD2FF449DD1FF449DD1FF449CD1FF449C
        D1FF163345590000000400000001000000000000000000000001000000043E2F
        2259B18962E7DABD9CFFECDCC2FFF6EDD8FFFEFBE9FFFDF6D3FFFCF7D9FFF9F3
        DDFFD6B590FF8F6846C81B130D32000000030000000000000000000000010000
        0003000000050000000500000005000000050000000500000006000000060000
        0005000000030000000100000000000000000000000000000000000000000000
        0002070504104F3E2C6E8B6C4EBAAB845EE1B48157FFFEFBE5FFEBDBC2FFBF97
        6FF34B3928700000000900000003000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        00000000000100000002000000050000000BBB8B62FFD9BC9BFF886A4DB51510
        0C26000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000706040EAF8863E94235275D000000060000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000400000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnCargarImagenClick
    end
    object DxBarBtnEliminarImagen: TdxBarLargeButton
      Caption = '&Eliminar Imagen'
      Category = 0
      Hint = 'Eliminar Imagen'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000070000000F00000017000000170000
        0010000000070000000200000001000000000000000000000000000000000000
        0000000000000000000100000002000000070000001100000018000000180000
        0011000000080000000300000001000000000000000000000000000000000000
        0000000000010000000200000008000000150E0A2F682A1E8CEC2A1E8DEE0605
        2C6C000000160000000800000002000000010000000000000000000000000000
        00000000000100000002000000090000001706052C6E271B8AEF271A88EC0D09
        2E6B000000170000000900000002000000010000000000000000000000000000
        0000000000010000000600000014100C3370312DA6FE2A33BBFF2A34BCFF1B1B
        98FE080632780000001600000009000000020000000100000000000000000000
        00010000000200000009000000180705327A1D1D99FE262FB9FF252EB8FF2B25
        A1FE0E0A32730000001700000007000000020000000000000000000000000000
        0001000000030000000E0F0C30673631A9FE2C39C1FF2B37C0FF2B37BFFF2B37
        BEFF1C1E9BFE0806327800000016000000090000000200000001000000010000
        000200000009000000170705327A1F209DFE2733BCFF2733BDFF2732BEFF2732
        BDFF2D27A3FE0E0A2F6A00000010000000030000000100000000000000000000
        00010000000500000014362C95EB3F4AC6FF2F3BC2FF2E3BC2FF2E3AC2FF2D3A
        C2FF2D39C0FF1D1F9CFE08063278000000160000000900000003000000030000
        0009000000160706327920219DFE2A36BEFF2A35BFFF2936BFFF2A36BEFF2935
        BFFF2C35BCFF322792EC00000016000000050000000100000000000000000000
        000100000005000000143B309CF05B67D1FF3B48C8FF313DC4FF313DC3FF303D
        C3FF303DC3FF303BC2FF1E209CFE07063277000000160000000A0000000A0000
        00160806327821229DFE2D39C0FF2D39C1FF2D38C0FF2C38C0FF2C37C0FF2C37
        C0FF4753C8FF372B98F100000017000000050000000100000000000000000000
        0001000000030000000D14113C734E4DB9FF606FD6FF3D49C9FF3440C5FF3340
        C5FF333FC4FF333FC5FF333EC3FF1F219DFE070632770000001B0000001B0806
        327823249EFE303CC2FF303CC3FF303CC3FF2F3CC3FF2F3CC3FF2E3BC2FF4D5A
        CDFF4643B3FF130F3A760000000F000000040000000100000000000000000000
        00000000000100000006000000121713437C5354BDFF6674D8FF404CCCFF3643
        C7FF3643C7FF3643C7FF3542C6FF3540C5FF20229EFE0705327D0705327D2325
        9FFE343FC4FF3340C5FF3240C5FF323FC5FF333EC4FF323EC4FF5361D0FF4C4C
        B8FF1511417F0000001500000007000000010000000000000000000000000000
        0000000000010000000200000007000000121814447C5759BFFF6A7ADAFF4250
        CDFF3946C9FF3846C9FF3945C8FF3845C8FF3844C7FF21239EFE21239EFE3742
        C6FF3643C7FF3643C7FF3542C7FF3543C7FF3542C6FF5967D2FF5151BBFF1612
        427F000000150000000800000002000000010000000000000000000000000000
        000000000000000000010000000200000007000000121815457C5B5DC2FF707F
        DDFF4553CFFF3C49CAFF3C49CAFF3B48CAFF3B48C9FF3B47C9FF3A47C9FF3A47
        C9FF3947C9FF3946C9FF3846C8FF3845C8FF5F6DD5FF5556BEFF1713437E0000
        0014000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000010000000200000007000000121916457B5E61
        C4FF7484DFFF4856CFFF3F4CCCFF3E4CCCFF3D4CCCFF3D4BCCFF3E4BCBFF3D4A
        CBFF3D4ACBFF3D4ACBFF3C49CBFF6574D8FF595BC1FF1815447D000000130000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006000000111A17
        467A6265C7FF7989E0FF4B59D1FF4250CEFF424FCEFF414FCEFF414ECDFF404D
        CEFF3F4ECDFF3F4DCCFF6A7ADBFF5D5FC3FF1915457C00000013000000070000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000080000
        00151B18487E5C5FC6FF505DD4FF4552D0FF4552D0FF4452D0FF4351CFFF4352
        CFFF4351CFFF4452CFFF5558C2FF1A1746800000001700000009000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        00140B0934733132A9FE4857D2FF4857D3FF4756D3FF4755D2FF4755D2FF4655
        D1FF4654D2FF4554D1FF292AA4FE090732750000001600000008000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000E0C0A
        356D3739ACFE5D6BD9FF6775DBFF6976DDFF6B79DDFF6E7CDDFF6D7BDDFF6875
        DCFF6371DAFF5F6ED9FF5564D6FF2F30A7FE0A08336F00000010000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000E0D0C366B4647
        B3FD7987E1FF7987E2FF7886E1FF7885E1FF7684E0FF7583E0FF7381E0FF7280
        DFFF707DDFFF6E7CDEFF6D7BDDFF6977DCFF3A3BABFE0C09346E000000100000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000050000000D0F0D386A4B4CB6FD808E
        E3FF808EE4FF7F8DE4FF7E8CE4FF7E8BE3FF7C8AE3FFA0B0EDFFA4B4EEFF7F8C
        E4FF7683E1FF7483E0FF7280E0FF717FDFFF6E7BDDFF3F40B0FE0D0B366D0000
        000F000000060000000200000001000000000000000000000000000000000000
        00000000000000000001000000040000000C100F396A5051BAFD8694E6FF8795
        E7FF8694E6FF8593E6FF8592E6FF8491E6FFA6B7EFFF7B80D5FF7B80D5FFAABB
        F0FF8491E6FF7B89E3FF7886E2FF7684E2FF7482E1FF717FE0FF4445B4FE0F0E
        386C0000000E0000000500000001000000000000000000000000000000000000
        000000000001000000030000000A12113B685658BEFD8C9AE8FF8D9BE9FF8D9A
        E9FF8C9AE9FF8C99E8FF8A98E8FFACBDF2FF7F84D8FF201F4D79201E4D797E84
        D6FFAEBFF2FF8795E7FF7E8DE5FF7C8AE3FF7A88E3FF7785E2FF7483E1FF474A
        B8FD110F396B0000000D00000005000000010000000000000000000000000000
        00000000000200000007121138605A5CBFFD93A0EBFF93A1EBFF93A1EBFF92A0
        EBFF929FEAFF919FEAFFB1C3F3FF8288DAFF211F4E7400000010000000102120
        4E758187D9FFB1C2F3FF8B99E9FF818FE6FF7F8EE5FF7D8CE5FF7A89E4FF7886
        E2FF4B4EBCFD1210386300000009000000020000000000000000000000000000
        00000000000302020510605FBBF1A1ACECFF99A7EDFF99A7EDFF99A7EDFF98A6
        EDFF97A5ECFFB6C8F5FF848BDCFF21214F730000000C00000006000000060000
        000C21204F748389DAFFB5C5F4FF8E9CEBFF8593E7FF8291E7FF808FE7FF7D8C
        E6FF7B89E3FF615EBCF402020513000000030000000000000000000000000000
        0000000000020202030C7C7CD3F7BCCDF6FFA4B1F0FF9EACEFFF9EACEFFF9DAC
        EEFFBBCCF6FF878EDDFF232251730000000B0000000400000001000000010000
        00040000000B22214F73848BDCFFB8C8F5FF919FEBFF8796E8FF8594E9FF8391
        E7FFA6B7F0FF7775CFF70101030F000000030000000000000000000000000000
        00000000000100000006252555728C94E1FFC4D5F8FFAAB8F1FFA5B3F0FFBFD1
        F8FF8A91DFFF232352710000000A000000040000000100000000000000000000
        0001000000040000000B23225073878EDDFFBACBF6FF95A3ECFF8B9AEBFFB0C2
        F4FF868DDDFF2322537500000008000000020000000000000000000000000000
        000000000001000000030000000828285A788C94E2FFD1E4FBFFD1E4FBFF8A92
        E0FF252555730000000900000003000000010000000000000000000000000000
        000000000001000000040000000A23235172878FDFFFCDE0FAFFCCDFFAFF878F
        DEFF2626587B0000000B00000004000000010000000000000000000000000000
        0000000000000000000100000003000000072626536E8485D9F78385D9F72424
        516C000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000004000000092323506D8181D6F78080D6F72323
        52710000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000001000000020000000500000007000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000600000009000000090000
        0007000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnEliminarImagenClick
    end
    object DxBarBtnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnCerrarClick
    end
    object btnGuardar1: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000300000005000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000600000004000000010000000100000000000000000000
        0001000000060000000E000000160000001A0000001B0000001B0000001B0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000
        001D0000001C0000001800000010000000070000000100000000000000010000
        00030000000E2D1F198E583E33FD593D34FF583C32FF583C32FF5A3F37FFC58D
        5DFFC18656FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D
        3DFFAF6B3AFFAC6837FFAB6535FFA96333FFA76030FF50342DFF4F342CFF4F34
        2CFF4F342DFF4E342DFD2519158B000000100000000400000001000000010000
        0005000000145C3F36FD806357FF745449FF73534AFF735349FF61473EFFE8C5
        94FFE5BE89FFE3B981FFE3B87FFFE3B67DFFE2B57AFFE1B278FFE0B175FFDFAF
        73FFDEAD71FFDEAC6FFFDDAB6DFFDDAA6CFFDDA86AFF523731FF6B4C42FF6B4C
        42FF6B4C42FF6B4D43FF4E342BFB000000170000000600000001000000010000
        0006000000175F4337FF83655AFF77574CFF76574BFF76574BFF654B41FFEAC8
        98FFE6C08CFFE5BC85FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B0
        75FFDFAF72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFF553932FF6B4C43FF6C4D
        42FF6B4C42FF6D4F45FF50362DFF0000001B0000000700000001000000010000
        000600000017624539FF87695DFF79594EFF795A4EFF795A4EFF684E44FFE1C2
        96FFDCB988FFDBB684FFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A8
        70FFD4A66EFFD4A56BFFD3A369FFD3A267FFD3A166FF583D35FF6D4F44FF6D4E
        45FF6C4D44FF6E5047FF51362FFF0000001B0000000700000001000000010000
        00060000001766483CFF8C6E63FF7D5D51FF7D5D50FF7C5C50FF6C5247FFFAF5
        F2FFF9F3F0FFF9F2EFFFF7F1ECFFF7F0EBFFF6F0EAFFF6EEE9FFF5EEE9FFF5EE
        E8FFF4EDE7FFF4ECE7FFF3ECE6FFF4EBE5FFF3EBE4FF5A3F38FF6F5046FF6E50
        46FF6E4F45FF715348FF523830FF0000001A0000000700000001000000010000
        000500000016684B3EFF917366FF816153FF816153FF7F6154FF6E554AFFFAF7
        F3FFF9F4F0FFF9F3EFFFF8F3EDFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EE
        E9FFF5EDE8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FF5E4339FF705248FF7052
        48FF6F5147FF72554BFF523A31FF000000190000000600000001000000010000
        0005000000156C4F42FF95786AFF846456FF836557FF836456FF72584DFFFAF7
        F5FFFAF5F2FFD5B8A9FFD2B4A6FFCCA899FFC9A492FFC6A090FFC39C8BFFC097
        87FFBE9283FFBA8F7FFFB88C7BFFF4EDE6FFF4ECE6FF60463DFF72544BFF7053
        4BFF705248FF75574DFF543A32FF000000190000000600000001000000010000
        0005000000156F5346FF997D6FFF87675AFF876859FF876859FF755C50FFFBF8
        F6FFFAF6F2FFFAF5F1FFF9F5F1FFF9F3EFFFF7F2EDFFF7F1EDFFF6F0EBFFF6EF
        EAFFF5EFEAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FF634940FF73564CFF7355
        4CFF72544BFF775A4FFF563D34FF000000180000000600000001000000000000
        000500000014735649FF9E8275FF8B6B5CFF8A6D5EFF8B6C5DFF796053FFFCF9
        F7FFFAF7F3FFD9BEB1FFD8BCAEFFD5BAABFFCDAC9DFFCBA797FFC8A392FFC6A0
        8FFFC39B8BFFC09787FFBD9283FFF5EEE8FFF4EDE8FF664C43FF75594EFF7458
        4DFF74574CFF795C53FF573D35FF000000180000000600000001000000000000
        00050000001376594BFFA28878FF8E7061FF8F7061FF8E7062FF7C6155FFFCF9
        F8FFFBF7F4FFFAF7F4FFF9F6F3FFF9F5F2FFF9F4F1FFF8F2EEFFF7F1EDFFF7F0
        ECFFF6F0ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FF694F46FF775B50FF7759
        4FFF75594EFF7B6056FF594037FF000000170000000600000001000000000000
        0005000000137B5D4EFFA68D7FFF937464FF937464FF917465FF7F6659FFFCFB
        F9FFFCF9F8FFFCF9F8FFFCF9F7FFFBF9F6FFFCF8F5FFF9F6F3FFF9F5F2FFF9F5
        F1FFF9F4F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFF6C5248FF785E52FF775D
        51FF775A50FF7F6359FF5C4239FF000000160000000600000001000000000000
        0005000000127E6152FFAB9182FF967767FF957A67FF957968FF876D5EFF8268
        5BFF82695AFF82685AFF81685AFF80675AFF7F6759FF7A6155FF755D51FF745B
        50FF735B50FF725A4FFF72594FFF71594EFF70574CFF72594EFF7B6055FF7A60
        54FF795E52FF81675BFF5D433AFF000000160000000500000001000000000000
        000400000012836654FFB09687FF997B6BFF9A7D6BFF9A7E6BFF9A7D6CFF997D
        6BFF997E6CFF997E6BFF997E6CFF987E6DFF997E6CFF967B6BFF82675BFF7F66
        5AFF806659FF7F6659FF7F655AFF7F6559FF7F6458FF7D6257FF7C6255FF7C61
        55FF7A6054FF826A5EFF5E463CFF000000150000000500000001000000000000
        000400000011866958FFB39B8CFF9D816FFF9D7F6EFF9D816EFF9D816FFF9D81
        70FF9D826FFF9D8270FF9D8270FF9C8170FF9B8170FF9C826FFF8D7364FF8369
        5CFF82695DFF82685CFF81675CFF81675BFF7F6659FF7F6559FF7F6458FF7D63
        58FF7D6257FF866D61FF61483EFF000000140000000500000001000000000000
        0004000000108A6C5BFFB79F91FFA08471FFA08471FFA08571FFA08573FFA085
        73FFA08574FFA08673FFA18673FFA08574FFA08673FF9F8574FF9C8271FF836A
        60FF836B60FF836A5FFF836A5DFF83695DFF82695DFF81685BFF81675AFF7F65
        59FF7F6359FF886E64FF624940FF000000140000000500000000000000000000
        0004000000108D705EFFBBA494FFA48774FFA48874FFAA927FFFAC9582FFAD94
        83FFAD9482FFAC9382FFAC9482FFAC9483FFAB9381FFAA9282FFAA9080FF9880
        71FF8E766BFF8D756AFF8D7568FF8C7468FF897167FF887065FF866E61FF8167
        5CFF806659FF8B7267FF634A40FF000000130000000500000000000000000000
        00040000000F907462FFBFA898FFA68A77FFA78B79FFB09785FF6E5449FF5439
        31FF543831FF60463EFF644A42FF634A40FF61483FFF5F473CFF5E453CFF5C44
        3BFF5B4339FF5A4139FF594137FF583F36FF563E36FF654D43FF887164FF836A
        5DFF82685CFF8D766AFF654C42FF000000120000000500000000000000000000
        00040000000E957764FFC2AD9DFFA98D7BFFAA8F7BFFB29986FF563A33FF5944
        3DFF644E47FF75594EFFE8DAD0FFDCC5B5FFDBC4B5FFDBC4B3FFDAC3B3FFDAC3
        B2FFD9C2B1FFE3D2C6FFE2D1C5FFE2D0C3FFE1CFC2FF573F37FF8A7266FF856C
        5EFF836A5EFF8F796EFF664F44FF000000120000000400000000000000000000
        00030000000E977A67FFC5B0A0FFAC907CFFAD927DFFB39C88FF573B34FF5A45
        3EFF654F48FF775B50FFEBDFD5FFDEC9BBFFDEC9B9FFDDC8B8FFDDC7B7FFDCC6
        B6FF584139FF705448FF705347FF6F5246FFE4D3C7FF594138FF8B7368FF856D
        62FF856B5FFF937B70FF685146FF000000110000000400000000000000000000
        00030000000D9B7D6AFFC8B4A3FFAE947FFFAF9480FFB79E8BFF583C34FF5B46
        3FFF655049FF795D53FFEFE4DBFFE1CEC0FFE1CDBFFFE1CDBDFFE0CBBBFFDFCA
        BBFF554038FF61473FFF654B42FF715548FFE7D8CDFF5B433AFF8C7468FF876F
        62FF876D60FF957E72FF695147FF000000100000000400000000000000000000
        00030000000C9C7F6BFFCAB6A7FFB29681FFB29782FFB89F8CFF593C35FF5B46
        40FF66514AFF7B5F55FFF2E8E0FFE5D3C5FFE4D3C4FFE3D1C2FFE3D0C1FFE2CF
        C0FF523E36FF5B413AFF5E433BFF73564BFFEBDDD4FF5E463CFF8E7469FF8871
        65FF866E64FF968075FF6B5348FF000000100000000400000000000000000000
        00030000000C9E826CFFCDBAAAFFB39983FFB49984FFBBA18DFF593D35FF5C47
        40FF68524BFF7D6157FFF4ECE5FFE8D8CAFFE8D7C9FFE7D6C8FFE6D5C7FFE6D4
        C6FF4E3C34FF553B34FF583E36FF75584DFFEEE2D9FF60483EFF8F766AFF8A72
        66FF896F65FF998377FF6C544AFF0000000F0000000400000000000000000000
        00030000000BA2836EFFCFBCACFFB69B86FFB59B86FFBBA28FFF5A3E36FF5C47
        41FF68524BFF7E6459FFF6F0EAFFEBDCCFFFEADCCEFFEADBCDFFE9DACCFFE8D9
        CBFF4B3A33FF523731FF533832FF765A4FFFF1E6DEFF624A41FF8E786AFF8A73
        67FF897165FF9B8579FF6D564BFF0000000E0000000400000000000000000000
        00030000000AA3876FFFD1BEB0FFB89D89FFB89E87FFBDA390FF5B3E37FF5C48
        42FF69524CFF80665CFFF8F3EEFFEEE1D4FFEDE0D3FFEDDFD2FFECDED1FFEBDD
        D0FF473832FF493832FF493932FF493832FFF3EBE4FF654D43FF90766CFF8D73
        68FF8A7166FF9E877DFF6D564BFF0000000D0000000300000000000000000000
        000200000008A1866EF9D2BFB0FFD3C0B2FFD3C2B1FFD6C5B6FF5B3E37FF5D48
        42FF69534CFF82675DFFF9F5F1FFF9F5F0FFF9F4EFFFF9F4EFFFF8F3EEFFF8F2
        EDFFF7F2ECFFF7F1EBFFF7F1EBFFF6F0EAFFF6EEE9FF664F46FFB4A399FFB3A0
        97FFB19D95FFB09C93FF6E564CFC0000000B0000000300000000000000000000
        00010000000552443984A48873FCA88C75FFA98D76FFA88F78FF836859FF765B
        4DFF765A4DFF80655BFFA9948BFFA89289FFA59087FFA48E85FFA28C82FFA08A
        80FF9E877EFF9C847BFF998278FF987F76FF947C73FF695148FF745F52FF745E
        51FF725B50FF6F584DFC453730A5000000070000000200000000000000000000
        0000000000020000000500000007000000090000000900000009000000090000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
        000B0000000B0000000A00000007000000030000000100000000000000000000
        0000000000000000000100000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGuardarClick
    end
    object btnGuardarYCerrar: TdxBarLargeButton
      Caption = 'G&uardar y Cerrar'
      Category = 0
      Hint = 'Guardar y Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0001000000010000000300000004000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        0001000000050000000B00000011000000150000001500000016000000160000
        0016000000160000001600000017000000170000001700000017000000170000
        0018000000180000001800000018000000180000001900000019000000180000
        00150000000E0000000600000001000000000000000000000000000000000000
        00020000000B2D1F1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC084
        54FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAF6B
        3AFFAC6837FFAB6535FFA96333FFA76030FFA76030FF523730FF51362EFF5035
        2EFE261915890000000E00000003000000010000000000000000000000000000
        0004000000105C4037FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC
        85FFE4BA83FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDFAF
        72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFFDCA96BFF5E423AFF6C4F44FF6F50
        48FF50352EFB0000001400000005000000010000000000000000000000000000
        00050000001260443BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B3
        7FFFD8B17DFFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD4A6
        6EFFD4A56BFFD3A369FFD3A267FFD3A166FFDEAA6BFF61443CFF6E4F45FF7253
        49FF52372FFF0000001700000006000000010000000000000000000000000000
        00050000001263473DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3
        EEFFF8F2EDFFF7F2ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF5ED
        E8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FFF3EAE5FF63473EFF6E5046FF7155
        4BFF533831FF0000001700000006000000010000000000000000000000000000
        000400000012664A40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3
        F0FFF8F2EFFFF7F2EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF5EE
        E9FFF5EEE8FFF4EDE7FFF4EDE6FFF4ECE6FFF4EBE6FF674A41FF6F5147FF7456
        4DFF543932FF0000001700000006000000010000000000000000000000000000
        0004000000116A4E42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4
        F0FFF9F3EFFFF8F3EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF5EF
        EAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FFF4EBE6FF694D43FF705248FF7558
        4EFF553A33FF0000001600000006000000010000000000000000000000000000
        0004000000106E5146FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5
        F1FFF9F4F1FFF8F3F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF6EF
        EAFFF6EFE9FFF5EEE9FFF5EEE8FFF4EDE8FFF4ECE6FF6C5046FF71534AFF765A
        50FF573C34FF0000001500000005000000010000000000000000000000000000
        000400000010715549FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5
        F2FFF9F5F1FFF8F4F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF6F0
        ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FFF5EDE7FF6F5349FF72554BFF795D
        52FF583D35FF0000001500000005000000010000000000000000000000000000
        00040000000F75594CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8
        F6FFFBF8F6FFFBF8F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF9F4
        F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFFF7F0EBFF72564BFF73564BFF7B5F
        54FF593E36FF0000001400000005000000010000000000000000000000000000
        00040000000F795C4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C
        5EFF866B5DFF856A5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D
        51FF775C50FF765B50FF765A4FFF75594EFF755A4EFF74584EFF75574DFF7D61
        56FF5A4038FF0000001300000005000000000000000000000000000000000000
        00030000000E7C5F52FFAB9386FF937768FF927767FF917566FF907565FF8F73
        65FF8E7263FF8D7163FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C
        51FF785B52FF785B51FF775B51FF765A50FF765A4FFF76594FFF75594EFF7F63
        58FF5B423AFF0000001300000005000000000000000000000000000000000000
        00030000000D806356FFB0988AFF967B6BFF957A6AFF947869FF947868FF9277
        67FF927566FF917565FF907365FF8F7363FF8D7263FF83695BFF755A50FF7057
        4DFF70564DFF6F564CFF6F554CFF6E554CFF6E544BFF6E544AFF6E5449FF775E
        55FF543D36FF00000026000000190000000D0000000300000000000000000000
        00030000000D846758FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A
        6BFF957968FF947869FF937767FF927666FF917465FF896E60FF422F6FFF3221
        7FFF33207FFF32207FFF321F7EFF311F7EFF311F7EFF311E7EFF311D7DFF311D
        7CFF301D7CFF231192FF231191FF190C68C50000000C00000000000000000000
        00030000000C886C5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA289
        79FFA08779FFA08777FF9F8476FF9D8374FF9C8272FF93786AFF362483FF384A
        D3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444D3FF3C4E
        D6FF2A3ACEFF202FC9FF1E2CC9FF251595FF0000001200000000000000000000
        00030000000C8A6F5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E44
        3CFF614840FF60483FFF5F473EFF5E463DFF5D453DFF584038FF3121A0FF4356
        D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353ABEFF2827
        ABFF3B45C9FF2F41D0FF2332CCFF291A99FF0000001200000000000000000000
        00030000000B8E7361FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D
        44FFE9D5C9FFE8D5C9FFE8D5C8FFE6D4C8FFE8D4C7FFD9C8BCFF3529A5FF4E62
        DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89CEFFEDED
        F8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF0000001100000000000000000000
        00030000000B917663FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A51
        48FFF4E4D5FFEFDED0FFEAD9CBFFE8D6C9FFE8D4C8FFDCC9BEFF392FABFF596F
        DFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1EDFFF3E9
        E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F00000000000000000000
        00020000000A957967FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F55
        4CFFF7E8D9FFF6E8D8FFF5E6D7FFF2E2D4FFECDBCFFFDECDC1FF4036B1FF657A
        E2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9E2FFEADA
        D1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E00000000000000000000
        000200000009987C69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF7359
        4FFFF8EADBFFF7E9DAFFF6E8D9FFF5E7D8FFF4E6D7FFE6D7CBFF453DB6FF6E83
        E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EBE5FF897D
        B8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D00000000000000000000
        0002000000099A7F6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D
        53FFF9ECDCFFF8EBDCFFF7EADBFFF6E8DAFFF5E7D9FFEBDDD0FF4A44BCFF788F
        E8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7EDE8FF9087
        C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000000000000000000
        0002000000089D816DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A60
        56FFFAEDDEFFF9ECDDFFF8EBDCFFF8EADBFFF7E9DAFFECDFD1FF504CC2FF92A7
        EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0EAFFFAF5
        F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B00000000000000000000
        000200000008A0846FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E64
        5AFFFBEEDEFFFAEDDEFFF9EDDDFFF8ECDDFFF8EADBFFEFE2D4FF6B6AD0FFADC1
        F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDFD8FFF4EC
        E7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A00000000000000000000
        000100000006A08570FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF8065
        5CFFFCEFDFFFFBEEDFFFFAEEDEFFFAEDDEFFF9ECDDFFF1E5D6FF7577D6FFB1C6
        F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68A8FFCBB5
        BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000000000000000000
        00010000000451433983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C
        53FFA9948BFFA8938AFFA69188FFA58F86FFA38D83FF9D887EFF797BDAFFB5CA
        F6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555BCFF2E21
        9BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF0000000800000000000000000000
        0000000000010000000400000006000000070000000700000007000000070000
        000800000008000000080000000800000008000000080000000D7D80DEFFB9CD
        F6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CCF6FFB7CB
        F6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF0000000600000000000000000000
        0000000000000000000100000001000000020000000200000002000000020000
        00020000000200000002000000020000000000000002000000056062A6C08184
        E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81DEFF7D81
        DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C10000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0003000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGuardarCerrarClick
    end
    object btnAgregar: TdxBarLargeButton
      Caption = '&Agregar'
      Category = 0
      Hint = 'Agregar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0002000000040000000A0000000F00000011000000110000000F0000000A0000
        0005000000010000000000000000000000000000000000000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000090000
        0011170C073D532D1897804626D293502AEB914F2AE97F4525D1522C17961209
        05340000000B0000000200000000000000000000000000000000000000000000
        000000000002000000070000000F00000016000000190000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001C0000001F0201012B5931
        1BA2A86239FBC58957FFD6A36DFFDDAF75FFDDAF74FFD6A46BFFC58956FFA461
        37F63B2112770000001100000003000000000000000000000000000000000000
        0001000000040000000F78554AC1A57666FFA57565FFA57465FFA57464FFA374
        63FFA47363FFA37362FFA37262FFA27162FFAE8376FFBDA299FFAD7556FFBC7C
        4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B782FFDEAF74FFDBAB
        72FFBD7E4EFF6F3F24B600000011000000020000000000000000000000000000
        00010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F4FFFBF7
        F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFF3F0EEFFC59E87FFBE8053FFE0B3
        7CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC8859FFDFB279FFDFB2
        77FFDEB077FFC08253FF55321D920000000A0000000100000000000000000000
        00010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6ECE6FFF6EC
        E5FFF4EBE5FFF4EBE5FFF4EBE4FFF4ECE7FFE2D4CCFFB5754BFFDFB27DFFDFB2
        7AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB7245FFE2B67EFFE0B4
        7CFFE0B47BFFDEB079FFB3734AFB130B072F0000000300000000000000000000
        00010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6ECE6FFF4ED
        E6FFF4ECE6FFF4ECE6FFF6ECE5FFF2EDE7FFC9A28BFFCD9B6FFFE2B780FFE5BD
        89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA7144FFE8C494FFE8C3
        93FFE5BF8CFFE1B77FFFD09C6EFF5434218B0000000800000000000000000000
        00010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7EDE9FFF6ED
        E8FFF6EDE6FFF6EDE6FFF6ECE6FFF3EDE9FFBF8968FFDCB383FFE3B781FFBA86
        59FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD7547FFB0784AFFB17A
        4BFFC29162FFE4B983FFDEB17EFF8E5B3BD00000000C00000000000000000000
        00000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EFE9FFF7EF
        E9FFF7EFE8FFF6EDE8FFF6EDE8FFF2EEEAFFBC8058FFE3BF8FFFE4BB84FFA56B
        3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7F4FFFAF7F3FFFAF6
        F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEE0000000D00000000000000000000
        00000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0E9FFF6EF
        E9FFF7EFE9FFF7EFE8FFF7EFE9FFF3EFECFFC18861FFE9C9A0FFE5BE89FFA56B
        3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADFD9FFE6DAD4FFE9DE
        D9FFAA7144FFE7C08CFFEACA9DFFAE764FEE0000000D00000000000000000000
        00000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0EBFFF7F0
        EBFFF7F0EAFFF7F0EAFFF7F0E9FFF5F0EDFFC89876FFE9CDACFFEAC796FFB784
        56FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B3FFFA56B3FFFA56B
        3FFFB78457FFEACA99FFEBD1ADFF996A49D40000000A00000000000000000000
        00000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1EBFFF7F1
        EBFFF7F1EBFFF7F0EBFFF8F0EAFFF6F1EDFFD5B39AFFDDBB9DFFEED3A9FFEECF
        A2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B3FFFF1D6AAFFF0D5
        A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F0000000600000000000000000000
        00000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2ECFFF8F1
        ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F2EDFFEDE2DAFFCA976FFFF5E8CCFFEFD6
        ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B3FFFF3DCB2FFF1DB
        B0FFF1D8ADFFF7EACDFFC69470FA1A120D2E0000000200000000000000000000
        0000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF7F3EFFFDBBCA4FFD7B08CFFF8EF
        D3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A5FFFF4E1B9FFF4E2
        BDFFFAF1D5FFD9B390FF664B368C000000060000000000000000000000000000
        0000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3EFFFF8F2
        EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF8F2EEFFF6F2EFFFD6B192FFD9B3
        8FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7ECCAFFF8EED0FFF4E8
        CDFFD7AF8BFF88664BB40202010C000000010000000000000000000000000000
        0000000000030000000DB78E7FFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3F1FFF9F3
        F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF8F2EFFFF7F2EFFFDEC1
        ABFFD2A37AFFE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8B9FFE3C5A3FFD0A3
        7CFF4C392A720000000B00000001000000000000000000000000000000000000
        0000000000030000000CB98F80FFFFFEFEFFFAF4F1FFFAF6F1FFFAF4F1FFF9F4
        F1FFF9F3F1FFF9F3F0FFF9F3EFFFF9F3EFFFF9F3EFFFF8F2EFFFF9F3F0FFF8F4
        F2FFF0E7DEFFE1C7B0FFD6AF90FFD2A57EFFD2A680FFD5AF90FFDFC6B0FFD0B8
        ADFF000000150000000500000000000000000000000000000000000000000000
        0000000000030000000BBB9182FFFFFEFEFFFAF6F3FFF9F6F2FFF9F6F2FFF9F4
        F1FFF9F4F1FFFAF4F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2
        EFFFF9F4EFFFF9F4F0FFF8F4F1FFF7F4F1FFF7F4F1FFF6F1EEFFF7F4F3FFBC97
        8AFF000000110000000400000000000000000000000000000000000000000000
        0000000000030000000BBC9384FFFFFEFEFFFAF7F3FFFBF7F3FFFAF6F2FFFAF7
        F2FFFAF6F2FFFAF6F2FFFAF4F1FFF9F4F1FFF9F4F0FFF9F3F1FFF9F4F0FFF9F3
        F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1EEFFB385
        76FF000000100000000400000000000000000000000000000000000000000000
        0000000000020000000ABD9685FFFFFFFEFFFBF8F4FFFAF7F4FFFAF7F3FFFAF7
        F3FFFAF7F3FFFAF6F3FFF9F6F2FFFAF6F2FFFAF6F2FFFAF6F1FFF9F4F1FFF8F3
        F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB389
        78FF0000000F0000000400000000000000000000000000000000000000000000
        00000000000200000009BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7F6FFFAF7
        F4FFFAF7F3FFFAF7F3FFFAF7F3FFFAF6F3FFFAF6F2FFF9F6F3FFFAF6F2FFF8F2
        EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB589
        7AFF0000000E0000000400000000000000000000000000000000000000000000
        00000000000200000008C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8F6FFFBF8
        F6FFFAF8F4FFFBF7F4FFFAF7F4FFFBF7F4FFFAF7F4FFF9F5F2FFF9F5F1FFF5EE
        E9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C
        7DFF0000000D0000000300000000000000000000000000000000000000000000
        00000000000200000007C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFFDF9
        F6FFFBF8F6FFFAF8F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6
        DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5ACFFB78C
        7DFF0000000A0000000300000000000000000000000000000000000000000000
        00000000000200000007C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9F7FFFBFA
        F7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDF
        DAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FF4C35
        2D86000000060000000200000000000000000000000000000000000000000000
        00000000000100000006C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFDFA
        F8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDF
        DBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F3830860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000005C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFBF9FFFDFA
        F9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1
        DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B3386000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
        F9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1
        DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F368500000007000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFDFBFFFEFB
        FAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1
        DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A840000000600000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3
        E0FFE4D2CBFFDBC5BDFF5A453E83000000050000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F91FFC69F
        92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D
        8EFFC39D8EFF5D48418200000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000200000003000000030000
        0003000000030000000300000003000000030000000400000004000000040000
        0004000000040000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnAgregarClick
    end
    object btnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000004000000070000000A0000000B0000000B0000
        000B0000000B0000000C0000000B0000000A0000000800000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000300000007000000100000001B0000002200000027000000280000
        0028000000280000002800000028000000240000001C00000011000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000200000007000000121D130A476D4626BA986234F2A36937FFA26836FF9E6C
        41FF91857CFF9A704EFF9E6332FF985E30F8653E1FB71D12094D000000150000
        0009000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0007000000135239237CCF935BFBE2A76EFFE9B47DFFD0965AFFB5783BFFB679
        3AFFB98D63FFC3B9B3FFBB9168FFB57839FFA46A31FF8F5525FD3E230F8D0000
        00190000000A0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000060000
        0012523A237CDA9E67FFEBB37CFFECB47DFFECB47CFFEEB984FFD1975CFFB578
        3BFFB5783BFFBA8E64FFC4BAB7FFBB926AFFB4783BFFB4783BFF9D622DFF4427
        1095000000180000000900000002000000010000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000C5138
        2375DA9F68FFEDB77FFFECB67FFFEDB67FFFEDB67FFFECB67FFFEFBD89FFD198
        5DFFB5793BFFB5793BFFBB8F65FFC6BCB9FFBB926BFFB5783BFFB5783BFFA064
        2FFF44281194000000180000000A000000020000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000010C38A
        57F1ECB781FFEDB882FFEDB882FFEDB981FFEDB882FFEDB882FFEFB882FFEFC0
        8EFFD2995FFFB6793CFFB6793CFFBB9066FFC8C0BAFFBC946DFFB77A3BFFB77A
        3BFF2229A5FF02064B9600000017000000090000000200000000000000000000
        00000000000000000000000000000000000000000000000000000000000FCA99
        6AF0F1C594FFEFBA85FFEFBA84FFEFBA84FFEFBA85FFEFBA84FFEFBA84FFEFBA
        84FFF1C492FFD39A61FFB67A3DFFB6793DFFBD9168FFCBC2BCFFBE956EFF4147
        B7FF3140C8FF1B28AFFF02074C96000000170000000900000002000000000000
        00000000000000000000000000000000000000000000000000000000000A5541
        2D73DFAB77FFF3CB9DFFF0BB87FFEFBB87FFF0BC87FFF0BB87FFF0BC87FFF0BC
        87FFF0BB87FFF2C797FFD39B63FFB67A3EFFB67A3EFFBE9469FFCBC4C2FF6D74
        C7FF3342C9FF3342C9FF1C29B1FF02084D950000001600000009000000020000
        0000000000000000000000000000000000000000000000000000000000040000
        000D543D2877E0AD7BFFF5D0A2FFF0BF8BFFF1BE8BFFF1BE8BFFF1BF8BFFF1BF
        8BFFF1BE8BFFF0BF8BFFF3CB9EFFD49D65FFB67B3FFF464BBAFF6870C9FFCEC6
        C5FF6F76C8FF3545CBFF3645CBFF1E2BB2FF03094D9400000015000000080000
        0002000000000000000000000000000000000000000000000000000000010000
        00050000000D543E2976E1B07FFFF6D4A9FFF1C08DFFF1C08DFFF1C18DFFF1C0
        8DFFF1C18DFFF2C18DFFF1C18EFFF5CEA2FF6374D7FF3748CDFF3747CCFF6A73
        CBFFCFC9C7FF717ACBFF3748CDFF3747CDFF1F2EB3FF030A4D94000000140000
        0008000000020000000000000000000000000000000000000000000000000000
        0001000000050000000D553F2A75E1B384FFF7D7AEFFF2C290FFF2C290FFF2C2
        90FFF2C290FFF2C290FFF2C290FF8EA1E5FF99B1F4FF576FDFFF394AD0FF3A4A
        CFFF6C75CDFFD3CCC9FF747CCDFF394ACFFF394ACFFF212FB6FF040A4E930000
        0014000000080000000200000000000000000000000000000000000000000000
        000000000001000000050000000C55402C74E3B687FFF8DBB4FFF3C492FFF3C4
        93FFF3C493FFF3C493FF95A8E6FF7C99F0FF7B98F0FF9EB7F4FF5B72E0FF3C4D
        D1FF3C4DD1FF6F78D0FFD4CECEFF767ECFFF3C4DD1FF3C4DD1FF2332B7FF050B
        5092000000130000000700000002000000000000000000000000000000000000
        00000000000000000001000000040000000B56412D74E3B88BFFF9DEB7FFF4C6
        96FFF3C695FF9BADE8FF839EF1FF829DF1FF7F9CF1FF7F9BF0FFA4BDF6FF5E76
        E2FF4050D3FF4050D3FF727BD2FFD6D0D0FF7A81D2FF4050D3FF4050D3FF2534
        B9FF050B50920000001200000007000000020000000000000000000000000000
        0000000000000000000000000001000000040000000B56422E73E4BA8FFFFAE1
        BCFFA1B2E8FF88A4F2FF87A2F2FF87A2F2FF85A0F1FF839FF2FF829EF1FFAAC1
        F7FF6178E3FF4355D5FF4355D6FF757FD4FFD9D4D2FF7E87D4FF4355D5FF4355
        D5FF2737BBFF060C519100000011000000070000000100000000000000000000
        000000000000000000000000000000000001000000040000000A56432E728B99
        D6FFB9D1F9FF8DA7F3FF8CA6F2FF8AA5F2FF89A4F2FF88A3F2FF86A2F2FF86A1
        F2FFB0C6F8FF657BE4FF4657D7FF4657D7FF7781D7FFDBD6D6FF808AD7FF4658
        D7FF4657D7FF293ABDFF060D51900000000F0000000500000001000000000000
        00000000000000000000000000000000000000000001000000040000000A2029
        52717A8EDEFFBED4FAFF91AAF3FF8EA9F3FF8DA9F3FF8CA7F3FF8BA6F3FF8AA5
        F3FF89A4F2FFB5CAF8FF687FE6FF475BDAFF475BDAFF7985DAFFDED9D9FF838D
        D9FF475AD9FF485BDAFF2333B7FF050A3E6E0000000900000002000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0009212B52717F94DEFFC5DBFAFF9DB6F5FF9CB7F5FF9AB3F4FF97B2F4FF95AE
        F4FF8FABF4FF8DA8F3FFB9CEF9FF6A82E7FF4A5EDBFF4A5EDBFF7B88DBFFDFDC
        DCFF8590DBFF4A5EDBFF4357D2FF0A0F70CD0000000A00000002000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000008252F53708CA1E3FFC9DFFBFFA1BAF5FFA0BAF5FF9FB8F5FF9DB7
        F5FF9CB5F5FF9BB4F5FF95AFF4FFBED4F9FF6C85E8FF4B61DCFF4B61DCFF7D8B
        DEFFE2DEDFFF8A97DEFF3444C1FF090D51890000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000003000000082C36567093A8E5FFCCE2FBFFA5BEF6FFA4BCF6FFA3BB
        F5FFA1BBF6FFA0BAF5FF9FB8F5FF9EB7F5FFC5D8F9FF6E86E9FF4D63DEFF4D63
        DFFF8694E1FFDBD8D7FF3B3F77B4000002100000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000003000000072E38576F98ADE7FFCFE4FCFFA8C1F7FFA7C0
        F7FFA6BEF6FFA5BEF6FFA4BDF6FFA2BBF6FFA1BAF5FFC9DDFBFF738BEAFF5B71
        E3FF5162D3FF353978B402020210000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003000000072F39576E9BB0E7FFD0E5FDFFABC5
        F8FFAAC3F7FFA9C2F7FFA8C2F7FFA7BFF6FFA6BEF6FFA5BEF6FFD7EAFDFF8398
        E6FF121B77B30000020F00000005000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000200000006313B586D9DB3E7FFD1E7
        FDFFAEC7F8FFADC6F8FFACC5F8FFABC4F7FFAAC2F7FFC6DDFBFFAABEEEFF4858
        90B20101020E0000000500000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006333D586DA0B5
        E8FFD2E7FDFFB1C8F8FFAFC7F8FFAFC7F8FFCBE2FCFFB2C5F0FF4E5F93B20102
        030D000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010000000200000005343E
        586DA3B7E8FFD5E9FDFFBAD0F9FFD1E7FDFFB7C9F0FF536595B10102030B0000
        0004000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0005343F596B9DB2E6FFC9DDF7FFA7BCEBFF576896B00102030A000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000200000004293044535B6D9AB23B4663760202030800000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000200000003000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnEditarClick
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'E&liminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000800000008000000080000000800000008000000080000
        0010120B47953233AFFF3648CCFF1D1EA5FF0603357E00000017000000170804
        35801F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        0000000000020000000800000011000000180000001B0000001C0000001D0000
        001D0000001D0000001D0000001D0000001E0000001E0000001E0000001F0000
        002A281D8DF3596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602358D0602358E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        000100000004000000117E5E52C1AF8271FFAE8172FFAE8171FFAE8070FFAD80
        70FFAD7F70FFAC7F6FFFAC7E6EFFAB7E6DFFAB7D6DFFAB7D6CFFAE8271FFE1D4
        CFFF9389B4FF4D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C7A0000000900000000000000000000
        00010000000600000016B08374FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F5FFFBF7
        F4FFFAF7F4FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F1FFFAF4F1FFF9F4F1FFFAF7
        F4FFF3F2F1FFA19DC9FF585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F7C0000000D0000000200000000000000000000
        00010000000600000018B18576FFFDFCFBFFF6EEE8FFF6EEE8FFF6EEE8FFF6ED
        E7FFF6EDE7FFF5EDE6FFF5ECE6FFF6ECE6FFF5ECE5FFF5EBE5FFF5ECE5FFF4EC
        E5FFF7F1ECFFF2F0EEFFA19DC9FF5D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916438A00000015000000030000000000000000000000000000
        00020000000600000018B38777FFFEFCFBFFF6EEE9FFF7EFE8FFF6EFE9FFF6EE
        E8FFF6EDE8FFF6EDE7FFF6EDE7FFF6EDE7FFF5ECE6FFF5EDE6FFF5ECE6FFF5EC
        E6FFF7F1ECFFF3F1EFFF9A97C5FF4A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B093A8800000013000000030000000000000000000000000000
        00010000000500000016B58B7CFFFEFDFCFFF8F0EBFFF7EFEAFFF7EFEAFFF7EF
        EAFFF7EFEAFFF7EFE9FFF6EEE9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE7FFF7F2
        EEFFF6F3F2FFA4A1CEFF555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C770000000B0000000100000000000000000000
        00010000000500000015B68C7EFFFEFDFCFFF7F1ECFFF7F1EBFFF8F0EBFFF8F0
        EBFFF7EFEAFFF6F0EAFFF6EFEAFFF7EFE9FFF6EFE8FFF6EEE8FFF6EEE8FFF8F6
        F4FFABA9D6FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121140720000000600000000000000000000
        00000000000500000014B78E80FFFEFDFDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F0
        EBFFF8F0ECFFF7F0EBFFF7F0EAFFF7EFEAFFF7EFE9FFF7EFE9FFF7EFE8FFF6F4
        F2FF6769D3FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFA6A4D2FFB1B0DBFF868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        00000000000500000013B88F82FFFEFDFDFFF8F2EEFFF8F1EDFFF8F2EDFFF8F1
        ECFFF8F1ECFFF8F1ECFFF8F1EBFFF7F0EBFFF7F0EAFFF7F0EAFFF6EFEAFFFAF7
        F6FFA9AAE1FF95A0EAFFC0D3F9FF7880D7FFAFADD9FFF7F5F3FFF6F3F2FFB8B8
        E3FF8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00000000000400000012BB9184FFFEFEFDFFF8F3EEFFF8F2EEFFF8F2EDFFF8F2
        EDFFF8F2ECFFF7F1ECFFF8F1ECFFF8F1ECFFF7F0EBFFF8F0EBFFF8F0EAFFF9F5
        F1FFF9F7F6FFADAFE5FF7175DDFFB5B4E0FFF8F6F4FFF8F2EEFFF8F2EEFFF9F7
        F7FFAFAAD3FF5E62CBEE31326886000000080000000100000000000000000000
        00000000000400000011BB9485FFFEFEFDFFF9F4F0FFF9F3EFFFF9F3EEFFF9F3
        EEFFF9F2EEFFF8F2EEFFF8F2EDFFF8F2ECFFF8F1ECFFF7F1ECFFF8F0EBFFF7F0
        EBFFFAF6F3FFFBF8F7FFF9F6F5FFFBF8F7FFF8F3EFFFF7EEE9FFF6EEE8FFFBF8
        F6FFE4D7D2FF0000001C0000000A000000020000000000000000000000000000
        00000000000400000010BC9788FFFEFEFDFFF9F3F0FFF9F4EFFFF9F3F0FFF9F4
        EFFFF9F3EEFFF8F3EEFFF8F3EEFFF9F2EDFFF8F2EDFFF8F1EDFFF8F1EDFFF8F0
        ECFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EBFFF7F0EAFFF6F0EAFFF7F0EAFFFBF7
        F4FFB58B7BFF0000001600000006000000010000000000000000000000000000
        0000000000040000000FBF988AFFFEFEFEFFFAF5F1FFF9F4F1FFFAF4F0FFF9F4
        EFFFF9F4EFFFF9F3EFFFF9F3EFFFF8F2EEFFF9F3EDFFF9F2EDFFF8F2EDFFF8F2
        ECFFF8F2ECFFF7F1ECFFF7F0ECFFF8F0ECFFF8F1ECFFF7F0EBFFF8F0EBFFFBF8
        F5FFB58A7AFF0000001500000005000000010000000000000000000000000000
        0000000000040000000EC0998BFFFEFEFEFFFAF5F2FFFAF5F1FFFAF5F2FFF9F4
        F0FFF9F4F0FFF9F4F0FFF9F4F0FFF9F3EFFFF9F3EFFFF9F3EEFFF9F2EEFFF9F2
        EDFFF8F1EDFFF8F2EDFFF8F1EDFFF8F2ECFFF8F1ECFFF7F0ECFFF8F0EBFFFBF8
        F6FFB58C7DFF0000001500000005000000010000000000000000000000000000
        0000000000030000000EC19C8DFFFFFEFEFFFBF6F3FFFAF6F2FFFAF6F2FFFAF5
        F2FFFAF5F1FFF9F4F1FFF9F4F0FFF9F4F0FFF9F3EFFFF9F3F0FFF8F3EFFFF9F3
        EFFFF8F2EEFFF8F2EDFFF8F2EEFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1ECFFFBF9
        F7FFB78E7FFF0000001400000005000000010000000000000000000000000000
        0000000000030000000CC49F90FFFFFEFEFFFBF7F5FFFBF7F4FFFBF6F3FFFBF7
        F3FFFBF6F3FFFAF6F3FFFAF5F3FFFAF5F1FFFAF5F1FFFAF5F1FFF9F4F1FFFAF4
        F1FFF9F4F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF8F2EEFFF8F2EEFFFAF7
        F5FFB99283FF0000001200000004000000000000000000000000000000000000
        0000000000030000000BC4A192FFFFFFFEFFFBF7F5FFFBF8F5FFFBF7F5FFFAF7
        F4FFFAF7F4FFFAF6F3FFFAF6F3FFFAF6F2FFFAF6F2FFFAF5F2FFFAF5F1FFFAF5
        F1FFFAF4F1FFFAF5F0FFFAF4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF7F1ECFFF9F4
        F3FFBB9284FF0000001100000004000000000000000000000000000000000000
        0000000000020000000AC6A294FFFFFFFEFFFCF8F6FFFBF8F5FFFBF8F5FFFCF8
        F5FFFBF7F4FFFBF8F4FFFBF7F4FFFBF6F3FFFAF6F3FFFAF6F2FFFAF5F3FFFAF6
        F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF5F1FFF9F4F1FFF7F2EDFFF6EFEAFFF7F2
        EFFFBD9486FF0000001000000004000000000000000000000000000000000000
        00000000000200000009C8A495FFFFFFFFFFFCF9F6FFFBF9F6FFFCF9F6FFFBF8
        F6FFFBF8F5FFFBF8F5FFFBF8F5FFFAF7F4FFFBF7F4FFFBF7F4FFFBF7F3FFFAF6
        F3FFF9F5F2FFFAF6F3FFF9F5F1FFF9F4F0FFF7F2EDFFF5EFEAFFF3EAE6FFF3ED
        EAFFBD9888FF0000000F00000004000000000000000000000000000000000000
        00000000000200000008C8A597FFFFFFFFFFFCFAF8FFFCFAF7FFFCF9F7FFFCF9
        F6FFFBF8F7FFFBF8F6FFFBF8F5FFFBF8F5FFFBF7F5FFFBF7F4FFFAF7F5FFFBF7
        F4FFF9F4F1FFF7F1EDFFF6EFEBFFF4ECE6FFF1E7E3FFEFE4DFFFECE0DBFFECE1
        DDFFBF988AFF0000000E00000004000000000000000000000000000000000000
        00000000000200000008C9A698FFFFFFFFFFFCFAF9FFFCFAF8FFFCF9F8FFFCF9
        F7FFFCF9F7FFFCF9F7FFFBF9F6FFFBF8F6FFFCF8F6FFFBF8F6FFFAF6F4FFFAF6
        F3FFF6EFEAFFEFE3DEFFE7D9D2FFE2D3CBFFE1CFC8FFDFCCC4FFDCC8BFFFDCC9
        C2FFC19A8CFF0000000D00000003000000000000000000000000000000000000
        00000000000200000007CBA899FFFFFFFFFFFDFAF9FFFDFAF9FFFCFAF8FFFCFA
        F8FFFCFAF7FFFDFAF7FFFCF9F7FFFCF9F7FFFCF9F6FFFBF8F6FFFCF8F6FFF9F3
        F1FFF0E7E1FFB89284FFAC7F6FFFAB7E6DFFAB7D6DFFAB7C6CFFAA7C6CFFD1B8
        AFFFC29D8DFF0000000A00000003000000000000000000000000000000000000
        00000000000100000006CBA99BFFFFFFFFFFFDFBFAFFFDFAFAFFFCFAF9FFFCFA
        F9FFFDFAF8FFFCFBF8FFFCFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFBF9F6FFF8F3
        F0FFEDE0DCFFB18676FFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFD1B7
        AEFF533C35860000000600000002000000000000000000000000000000000000
        00000000000100000005CBAA9DFFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
        FAFFFDFAF9FFFDFBF9FFFDFAF8FFFCFAF8FFFCFAF8FFFCFAF7FFFCF9F7FFF7F2
        EEFFECE0DBFFB68D7DFFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFD4BAB0FF553F
        3886000000080000000300000001000000000000000000000000000000000000
        00000000000100000005CCAB9DFFFFFFFFFFFEFCFBFFFEFCFAFFFEFBFAFFFDFB
        FBFFFDFCFAFFFDFBFAFFFDFBF9FFFDFAF9FFFCFAF8FFFCFAF9FFFAF7F5FFF6F1
        EDFFEDE2DCFFBC9485FFFFFEFEFFFDF9F6FFFBF6F3FFD6BCB4FF58433B860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000004CDAC9FFFFFFFFFFFFDFCFCFFFDFDFCFFFDFCFBFFFDFC
        FBFFFDFCFAFFFDFCFAFFFEFBFAFFFDFBF9FFFDFBF9FFFAF8F7FFF9F5F3FFF5EE
        ECFFECE2DDFFC19C8CFFFFFEFEFFFBF6F3FFD9C1B7FF5B463F85000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000003CEAD9FFFFFFFFFFFFEFCFCFFFEFDFCFFFEFDFCFFFDFC
        FCFFFDFDFCFFFEFCFBFFFEFCFBFFFDFCFAFFFBF8F7FFF9F6F4FFF7F2EFFFF3EC
        E8FFEDE2DDFFC6A293FFFFFEFEFFDBC3BAFF5D49428400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002CEADA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE5D4CEFFE0CCC4FF5F4D45830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001998076BECEAEA0FFCEADA0FFCEAE9FFFCEADA0FFCEAD
        9FFFCDAC9FFFCEACA0FFCDAC9FFFCDAC9FFFCCAC9EFFCCAB9EFFCCAA9DFFCCAB
        9CFFCBAA9CFFCBAA9CFF614F4882000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnEliminarClick
    end
    object btnAbrir: TdxBarLargeButton
      Caption = 'A&brir'
      Category = 0
      Hint = 'Abrir'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000005000000140000
        001F000000210000002100000021000000220000002200000022000000230000
        0023000000230000002300000021000000160000000500000000000000000000
        0000000000000000000100000002000000040000000600000007000000070000
        000700000007000000070000000700000007000000070000001946332CCC6045
        3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
        39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
        00000000000000000002000000070000000F00000016000000190000001A0000
        001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
        5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
        76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
        000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
        64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
        5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
        6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
        0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
        F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
        63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
        EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
        0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
        E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
        65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
        EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
        0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
        E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
        6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
        0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
        E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
        6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
        53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
        0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
        E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
        71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
        39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
        0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
        E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
        75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
        E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
        0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
        EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
        79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
        3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
        0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
        EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
        7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
        39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
        0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
        ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
        81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
        29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
        000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
        83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
        E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
        000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
        EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
        64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
        5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
        000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
        F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
        E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
        F1FFD2BCB4FF000000190000000B000000040000000100000000000000002021
        7FB72B2BAFFF2929ADFF2727ACFF2524A9FF2322A6FF2220A5FF201EA3FF1E1C
        A1FF1D1A9FFF1B189DFF19179BFF18149AFF171398FF5652B0FFF8F2EFFFF9F2
        EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
        F3FFAE8373FF0000001200000004000000000000000000000000000000003031
        B4FF585EDAFF4A4FD6FF474BD4FF4549D2FF4245D1FF4042CFFF3D3FCEFF3A3C
        CCFF383ACBFF3637C9FF3435C8FF3333C7FF3131C6FF171399FFF9F3EFFFF9F3
        EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
        F2FFB08374FF0000001100000004000000000000000000000000000000003133
        B7FF5C62DDFFFAF6F6FF4A4FD6FF474CD4FF4549D2FFF8F2F1FFF7F2EFFF7978
        D8FF3B3DCDFFF6EEEBFF3637C9FF3435C8FF3233C7FF18159AFFF9F3F1FFF9F4
        F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
        EEFFB38576FF0000001000000004000000000000000000000000000000003436
        B9FF6066DEFFFBF7F6FF4D53D8FF4A50D6FF484CD5FFF8F4F2FF4246D1FFF7F2
        EFFF3D40CDFFF6F0ECFF383ACAFF3638C9FF3435C8FF1A189CFFFAF6F1FFF9F4
        F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
        E9FFB38978FF0000000F00000004000000000000000000000000000000003638
        BCFF646BE0FFFBF8F7FFFBF7F6FF8587E1FF4A50D6FFF9F5F2FF454AD3FFF8F3
        F0FF3F43CFFFF6F1EEFFF6EFECFF383ACBFF3638C9FF1D1A9EFFF9F6F3FFFAF6
        F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E0000000400000000000000000000000000000000383B
        BEFF6770E3FFFCF8F8FF535ADBFFFBF7F6FF4E54D8FFFAF5F3FF484CD4FFF8F3
        F1FF4247D1FFF7F1EFFF3D40CEFF3A3DCDFF383ACAFF1E1CA0FFF9F5F2FFF9F5
        F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D00000003000000000000000000000000000000003A3D
        C1FF6A73E4FFFBFAF9FFFCF8F8FF898DE4FF5057DAFFFAF7F5FFFAF5F4FF8183
        DEFF454AD3FFF8F2F0FFF7F2EFFFF6F0EDFF3B3DCCFF201FA3FFFBF7F4FFF8F2
        EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A00000003000000000000000000000000000000003C40
        C3FF6E76E5FF6B74E4FF6870E3FF646CE1FF6067E0FF5D63DDFF585FDBFF555B
        D9FF5157D7FF4D52D6FF4A4FD4FF474BD2FF4347D0FF2221A5FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D860000000600000002000000000000000000000000000000002E31
        91BD3D41C3FF3B3EC2FF393CC0FF383ABDFF3538BCFF3437B9FF3234B8FF3032
        B5FF2E2FB3FF2C2DB1FF2A2BAEFF2828ACFF2626AAFF5C5BBBFFFBF8F6FFF6F1
        EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
        3086000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
        F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
        ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
        F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
        EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
        FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
        E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
        91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
        8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000200000002000000030000
        0003000000030000000300000003000000030000000300000004000000040000
        0004000000040000000400000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnAbrirClick
    end
    object btnVistaPrevia: TdxBarLargeButton
      Caption = '&Vista Previa'
      Category = 0
      Hint = 'Vista Previa'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070000
        000E00000014000000130000000C000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000008000000130E1C
        38751F4486EB1E407CDE081122510000000B0000000300000001000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000002000000030000000900000014112341842967
        B0FF4791D0FF64ADE0FF1E407DDE000000110000000400000001000000000000
        000000000000000000000000000077554AB7A57666FFA57565FFA57465FFA574
        64FFA37463FFA47363FFA37362FFA27262FFA17162FFA17161FFA07060FFA070
        60FFA06F5FFF9F6F5FFF9E6E5EFFAC8376FFBB9B90FF73768EFF2B6EB5FF4A98
        D6FF70BFEEFFB8E1F4FF224788EB000000110000000400000001000000000000
        0000000000000000000000000000A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
        F4FFFBF7F4FFF9F6F3FFF9F5F2FFF7F3EFFFF5F0EDFFF3EFEBFFF3EEEAFFF3EE
        EAFFF4EFEBFFF3EDE9FFF1EDE9FFEAE7E6FFA79694FF2767B3FF4A98D6FF70BE
        EEFFC7F0FEFF447DBAFF0F203B760000000C0000000300000001000000000000
        0000000000000000000000000001AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
        E6FFF5EBE4FFF1E8E2FFEDE5DFFFE8DFD8FFE2D9D3FFDDD5CFFFDBD2CCFFDBD3
        CDFFDED5CEFFE2DAD6FFE3DFDBFFA7908AFF7F5043FF6F5451FF5BAFE9FFC7F0
        FEFF4885C0FF1226448900000013000000060000000100000000000000000000
        0000000000000000000000000001AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF5EB
        E5FFF0E9E2FFE9E2DCFFDFD7D1FFB29A91FF906D61FF794C3EFF784B3EFF784B
        3EFF8A675DFFA6918BFF99837DFF7C4E44FFB9988EFFCCB6AEFFC9C3BDFF4181
        C0FF797D94FF000000260000000C000000020000000000000000000000000000
        0000000000000000000000000001AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF4EA
        E6FFEBE3DEFFD1C3BBFF926A5EFF9D7970FFD6C5BFFFEBDDD3FFEEDDD3FFE9D8
        CDFFC9B1A5FF916B5FFF764C3FFF9D7E73FFC8B6AEFFE1D6D1FF97746AFFAD9D
        9AFFC1A195FF0000001E00000009000000010000000000000000000000000000
        0000000000000000000000000000AD7F70FFFEFDFCFFF7F0EAFFF5EDE7FFEEE7
        E1FFD8CBC4FF9B7266FFCDB8B2FFF5EDE7FFCBA586FFBC8E65FFB38053FFBF91
        6CFFCCA88BFFE7D3C6FFB79A8DFF7F5649FFBFB0ABFF937068FFAE9690FFEEEB
        E9FFB1887BFF0000001B00000006000000010000000000000000000000000000
        0000000000000000000000000000AE8172FFFEFDFCFFF6EFE9FFF2EBE5FFE7E0
        D9FFAD897DFFDCCDC8FFE8D8CBFFB28053FFCFA574FFE5C597FFF1D8AFFFE7CE
        A8FFD5B38EFFB88C66FFDFC7B5FFC5ACA0FF7C5448FFA18C85FFE7E4E1FFF4F0
        EDFFA47565FF0000001800000006000000010000000000000000000000000000
        0000000000000000000000000000AF8475FFFEFDFDFFF6EFE9FFF0E9E4FFCFBB
        B4FFC5A79DFFF8F3EEFFB38153FFDFB780FFEAC58CFFEBC68FFFEDCE99FFF1D5
        ABFFF3DEBCFFE7D1B0FFB98E6AFFE9D8CDFF9D7A6FFFAF9B94FFE6DFDAFFF5F1
        EDFFA57667FF0000001700000006000000010000000000000000000000000000
        0000000000000000000000000000B18676FFFEFDFDFFF6EFEBFFEEE9E3FFC2A5
        9AFFE9DEDAFFD5B598FFCB9E6AFFE8BE81FFE8BE80FFE9C288FFEBC893FFECCE
        9DFFF0D5AAFFF3DEBCFFD4B38FFFC8A689FFD1BBB3FF937267FFE5DCD6FFF6F1
        EEFFA77969FF0000001600000006000000010000000000000000000000000000
        0000000000000000000000000000B48878FFFEFDFDFFF6EFEAFFEDE8E2FFBF9D
        92FFFAF8F7FFC19368FFE4BF8DFFF3DEB9FFF2DBB5FFEECF9FFFEBC78FFFECCA
        96FFECCE9DFFF0D5ABFFEBD1ADFFB2825DFFEADED6FF896153FFE5DBD7FFF6F1
        EFFFA97A6AFF0000001500000005000000010000000000000000000000000000
        0000000000000000000000000000B58979FFFEFEFDFFF7F1EEFFEDE8E3FFC4A1
        95FFFEFEFDFFBB895AFFF7EBD3FFFAF0DBFFF7E7CAFFF3DDB9FFF0D5AAFFEBC7
        91FFEBC893FFEDCD99FFF1D8AEFFAA764BFFF4EBE5FF8F675AFFE2D7D2FFF6F2
        EFFFA97D6DFF0000001500000005000000010000000000000000000000000000
        0000000000000000000000000000B78C7DFFFEFEFEFFF7F2EEFFF0EAE8FFC9AA
        9EFFFBF9F8FFC1946AFFF3EADBFFFDF8E9FFFAF0DBFFF7E7CAFFF3DEB9FFEFD0
        A0FFEAC289FFEBC58EFFE6C69AFFAF7D55FFF0E7E1FF987064FFE7DFD9FFF7F4
        F1FFAC7F6FFF0000001400000005000000010000000000000000000000000000
        0000000000000000000000000000B78E7FFFFEFEFEFFF7F2EFFFF3EEEAFFD3BA
        B2FFEFE5E2FFD5B598FFCEAC89FFFFFEF3FFFDF8E9FFFAF0DBFFF7E7CAFFF3DD
        B6FFE8BE80FFEBC68CFFCA9E6EFFC5A185FFE3D7D3FFAC8D83FFEAE3DEFFF9F5
        F3FFAD8071FF0000001300000005000000000000000000000000000000000000
        0000000000000000000000000000B98F80FFFFFEFEFFF9F3F0FFF6F2EDFFE3D5
        D0FFDAC3BBFFF9F4EFFFAC784EFFE8D9C4FFFFFEF3FFFDF8E9FFFAF0DBFFF4E0
        BCFFE8BE81FFDAB17BFFAD794FFFF6F0ECFFC4A9A0FFCCB9B2FFEFE8E4FFF8F4
        F1FFAE8373FF0000001200000004000000000000000000000000000000000000
        0000000000000000000000000000BB9182FFFFFEFEFFFAF6F3FFF7F4F0FFF3F0
        ECFFD2B9AFFFECE1DDFFE6D6C9FFAB774CFFCBA784FFECDFCCFFF8EBD2FFDEB7
        85FFC59563FFAB774CFFE6D6C9FFE7DAD6FFBD9E93FFEAE3DEFFF2EBE5FFF7F3
        F1FFB08374FF0000001100000004000000000000000000000000000000000000
        0000000000000000000000000000BC9384FFFFFEFEFFFAF7F3FFFAF6F2FFF7F3
        EFFFEEE8E2FFD0B5AAFFE8D9D4FFF5EFEAFFC7A488FFAB774DFFA56D40FFAA76
        4BFFC8A68AFFF5EFEAFFE4D5CFFFC6A99DFFE3DAD5FFF0EAE4FFF3EBE5FFF6F1
        EEFFB38576FF0000001000000004000000000000000000000000000000000000
        0000000000000000000000000000BD9685FFFFFFFEFFFBF8F4FFFAF7F4FFF9F6
        F2FFF7F4F0FFEEE8E3FFD3B9B0FFD7BEB6FFEFE6E3FFFDFBFBFFFFFFFFFFFDFB
        FBFFEFE6E3FFD7BEB6FFD0B6ACFFE7DED9FFF0EAE5FFF2EBE6FFF1E8E4FFF3EC
        E9FFB38978FF0000000F00000004000000000000000000000000000000000000
        0000000000000000000000000000BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7
        F6FFF9F6F3FFF8F5F1FFF6F3EFFFE7DCD5FFDBC7BFFFD3BAB1FFCCAEA3FFD3B9
        B0FFD8C4BCFFE1D3CCFFEEE6E3FFEFE6E2FFEEE3E0FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E00000004000000000000000000000000000000000000
        0000000000000000000000000000C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8
        F6FFFBF8F6FFFAF8F4FFFAF6F3FFF8F5F2FFF8F4F1FFF6F3F0FFF4F0EDFFF4F0
        ECFFF1EAE5FFEBDFD9FFE4D6CEFFE0D1C9FFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D00000003000000000000000000000000000000000000
        0000000000000000000000000000C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9
        F6FFFDF9F6FFFBF8F6FFFAF8F6FFFBF8F6FFFAF7F3FFF9F6F3FFFAF6F3FFF7F1
        EEFFEEE5DEFFB28A7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A00000003000000000000000000000000000000000000
        0000000000000000000000000000C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9
        F7FFFBFAF7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D860000000600000002000000000000000000000000000000000000
        0000000000000000000000000000C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9
        F8FFFDFAF8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1
        EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
        3086000000080000000300000001000000000000000000000000000000000000
        0000000000000000000000000000C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
        F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
        ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
        F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
        EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
        FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
        E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000093776CBDC6A291FFC6A192FFC6A191FFC59F
        91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
        8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000020000
        0003000000030000000300000003000000030000000300000004000000040000
        0004000000040000000400000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnVistaPreviaClick
    end
    object btnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnCerrarClick
    end
    object btnGuardarDatosBancarios: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivNever
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000300000005000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000600000004000000010000000100000000000000000000
        0001000000060000000E000000160000001A0000001B0000001B0000001B0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000
        001D0000001C0000001800000010000000070000000100000000000000010000
        00030000000E2D1F198E583E33FD593D34FF583C32FF583C32FF5A3F37FFC58D
        5DFFC18656FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D
        3DFFAF6B3AFFAC6837FFAB6535FFA96333FFA76030FF50342DFF4F342CFF4F34
        2CFF4F342DFF4E342DFD2519158B000000100000000400000001000000010000
        0005000000145C3F36FD806357FF745449FF73534AFF735349FF61473EFFE8C5
        94FFE5BE89FFE3B981FFE3B87FFFE3B67DFFE2B57AFFE1B278FFE0B175FFDFAF
        73FFDEAD71FFDEAC6FFFDDAB6DFFDDAA6CFFDDA86AFF523731FF6B4C42FF6B4C
        42FF6B4C42FF6B4D43FF4E342BFB000000170000000600000001000000010000
        0006000000175F4337FF83655AFF77574CFF76574BFF76574BFF654B41FFEAC8
        98FFE6C08CFFE5BC85FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B0
        75FFDFAF72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFF553932FF6B4C43FF6C4D
        42FF6B4C42FF6D4F45FF50362DFF0000001B0000000700000001000000010000
        000600000017624539FF87695DFF79594EFF795A4EFF795A4EFF684E44FFE1C2
        96FFDCB988FFDBB684FFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A8
        70FFD4A66EFFD4A56BFFD3A369FFD3A267FFD3A166FF583D35FF6D4F44FF6D4E
        45FF6C4D44FF6E5047FF51362FFF0000001B0000000700000001000000010000
        00060000001766483CFF8C6E63FF7D5D51FF7D5D50FF7C5C50FF6C5247FFFAF5
        F2FFF9F3F0FFF9F2EFFFF7F1ECFFF7F0EBFFF6F0EAFFF6EEE9FFF5EEE9FFF5EE
        E8FFF4EDE7FFF4ECE7FFF3ECE6FFF4EBE5FFF3EBE4FF5A3F38FF6F5046FF6E50
        46FF6E4F45FF715348FF523830FF0000001A0000000700000001000000010000
        000500000016684B3EFF917366FF816153FF816153FF7F6154FF6E554AFFFAF7
        F3FFF9F4F0FFF9F3EFFFF8F3EDFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EE
        E9FFF5EDE8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FF5E4339FF705248FF7052
        48FF6F5147FF72554BFF523A31FF000000190000000600000001000000010000
        0005000000156C4F42FF95786AFF846456FF836557FF836456FF72584DFFFAF7
        F5FFFAF5F2FFD5B8A9FFD2B4A6FFCCA899FFC9A492FFC6A090FFC39C8BFFC097
        87FFBE9283FFBA8F7FFFB88C7BFFF4EDE6FFF4ECE6FF60463DFF72544BFF7053
        4BFF705248FF75574DFF543A32FF000000190000000600000001000000010000
        0005000000156F5346FF997D6FFF87675AFF876859FF876859FF755C50FFFBF8
        F6FFFAF6F2FFFAF5F1FFF9F5F1FFF9F3EFFFF7F2EDFFF7F1EDFFF6F0EBFFF6EF
        EAFFF5EFEAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FF634940FF73564CFF7355
        4CFF72544BFF775A4FFF563D34FF000000180000000600000001000000000000
        000500000014735649FF9E8275FF8B6B5CFF8A6D5EFF8B6C5DFF796053FFFCF9
        F7FFFAF7F3FFD9BEB1FFD8BCAEFFD5BAABFFCDAC9DFFCBA797FFC8A392FFC6A0
        8FFFC39B8BFFC09787FFBD9283FFF5EEE8FFF4EDE8FF664C43FF75594EFF7458
        4DFF74574CFF795C53FF573D35FF000000180000000600000001000000000000
        00050000001376594BFFA28878FF8E7061FF8F7061FF8E7062FF7C6155FFFCF9
        F8FFFBF7F4FFFAF7F4FFF9F6F3FFF9F5F2FFF9F4F1FFF8F2EEFFF7F1EDFFF7F0
        ECFFF6F0ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FF694F46FF775B50FF7759
        4FFF75594EFF7B6056FF594037FF000000170000000600000001000000000000
        0005000000137B5D4EFFA68D7FFF937464FF937464FF917465FF7F6659FFFCFB
        F9FFFCF9F8FFFCF9F8FFFCF9F7FFFBF9F6FFFCF8F5FFF9F6F3FFF9F5F2FFF9F5
        F1FFF9F4F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFF6C5248FF785E52FF775D
        51FF775A50FF7F6359FF5C4239FF000000160000000600000001000000000000
        0005000000127E6152FFAB9182FF967767FF957A67FF957968FF876D5EFF8268
        5BFF82695AFF82685AFF81685AFF80675AFF7F6759FF7A6155FF755D51FF745B
        50FF735B50FF725A4FFF72594FFF71594EFF70574CFF72594EFF7B6055FF7A60
        54FF795E52FF81675BFF5D433AFF000000160000000500000001000000000000
        000400000012836654FFB09687FF997B6BFF9A7D6BFF9A7E6BFF9A7D6CFF997D
        6BFF997E6CFF997E6BFF997E6CFF987E6DFF997E6CFF967B6BFF82675BFF7F66
        5AFF806659FF7F6659FF7F655AFF7F6559FF7F6458FF7D6257FF7C6255FF7C61
        55FF7A6054FF826A5EFF5E463CFF000000150000000500000001000000000000
        000400000011866958FFB39B8CFF9D816FFF9D7F6EFF9D816EFF9D816FFF9D81
        70FF9D826FFF9D8270FF9D8270FF9C8170FF9B8170FF9C826FFF8D7364FF8369
        5CFF82695DFF82685CFF81675CFF81675BFF7F6659FF7F6559FF7F6458FF7D63
        58FF7D6257FF866D61FF61483EFF000000140000000500000001000000000000
        0004000000108A6C5BFFB79F91FFA08471FFA08471FFA08571FFA08573FFA085
        73FFA08574FFA08673FFA18673FFA08574FFA08673FF9F8574FF9C8271FF836A
        60FF836B60FF836A5FFF836A5DFF83695DFF82695DFF81685BFF81675AFF7F65
        59FF7F6359FF886E64FF624940FF000000140000000500000000000000000000
        0004000000108D705EFFBBA494FFA48774FFA48874FFAA927FFFAC9582FFAD94
        83FFAD9482FFAC9382FFAC9482FFAC9483FFAB9381FFAA9282FFAA9080FF9880
        71FF8E766BFF8D756AFF8D7568FF8C7468FF897167FF887065FF866E61FF8167
        5CFF806659FF8B7267FF634A40FF000000130000000500000000000000000000
        00040000000F907462FFBFA898FFA68A77FFA78B79FFB09785FF6E5449FF5439
        31FF543831FF60463EFF644A42FF634A40FF61483FFF5F473CFF5E453CFF5C44
        3BFF5B4339FF5A4139FF594137FF583F36FF563E36FF654D43FF887164FF836A
        5DFF82685CFF8D766AFF654C42FF000000120000000500000000000000000000
        00040000000E957764FFC2AD9DFFA98D7BFFAA8F7BFFB29986FF563A33FF5944
        3DFF644E47FF75594EFFE8DAD0FFDCC5B5FFDBC4B5FFDBC4B3FFDAC3B3FFDAC3
        B2FFD9C2B1FFE3D2C6FFE2D1C5FFE2D0C3FFE1CFC2FF573F37FF8A7266FF856C
        5EFF836A5EFF8F796EFF664F44FF000000120000000400000000000000000000
        00030000000E977A67FFC5B0A0FFAC907CFFAD927DFFB39C88FF573B34FF5A45
        3EFF654F48FF775B50FFEBDFD5FFDEC9BBFFDEC9B9FFDDC8B8FFDDC7B7FFDCC6
        B6FF584139FF705448FF705347FF6F5246FFE4D3C7FF594138FF8B7368FF856D
        62FF856B5FFF937B70FF685146FF000000110000000400000000000000000000
        00030000000D9B7D6AFFC8B4A3FFAE947FFFAF9480FFB79E8BFF583C34FF5B46
        3FFF655049FF795D53FFEFE4DBFFE1CEC0FFE1CDBFFFE1CDBDFFE0CBBBFFDFCA
        BBFF554038FF61473FFF654B42FF715548FFE7D8CDFF5B433AFF8C7468FF876F
        62FF876D60FF957E72FF695147FF000000100000000400000000000000000000
        00030000000C9C7F6BFFCAB6A7FFB29681FFB29782FFB89F8CFF593C35FF5B46
        40FF66514AFF7B5F55FFF2E8E0FFE5D3C5FFE4D3C4FFE3D1C2FFE3D0C1FFE2CF
        C0FF523E36FF5B413AFF5E433BFF73564BFFEBDDD4FF5E463CFF8E7469FF8871
        65FF866E64FF968075FF6B5348FF000000100000000400000000000000000000
        00030000000C9E826CFFCDBAAAFFB39983FFB49984FFBBA18DFF593D35FF5C47
        40FF68524BFF7D6157FFF4ECE5FFE8D8CAFFE8D7C9FFE7D6C8FFE6D5C7FFE6D4
        C6FF4E3C34FF553B34FF583E36FF75584DFFEEE2D9FF60483EFF8F766AFF8A72
        66FF896F65FF998377FF6C544AFF0000000F0000000400000000000000000000
        00030000000BA2836EFFCFBCACFFB69B86FFB59B86FFBBA28FFF5A3E36FF5C47
        41FF68524BFF7E6459FFF6F0EAFFEBDCCFFFEADCCEFFEADBCDFFE9DACCFFE8D9
        CBFF4B3A33FF523731FF533832FF765A4FFFF1E6DEFF624A41FF8E786AFF8A73
        67FF897165FF9B8579FF6D564BFF0000000E0000000400000000000000000000
        00030000000AA3876FFFD1BEB0FFB89D89FFB89E87FFBDA390FF5B3E37FF5C48
        42FF69524CFF80665CFFF8F3EEFFEEE1D4FFEDE0D3FFEDDFD2FFECDED1FFEBDD
        D0FF473832FF493832FF493932FF493832FFF3EBE4FF654D43FF90766CFF8D73
        68FF8A7166FF9E877DFF6D564BFF0000000D0000000300000000000000000000
        000200000008A1866EF9D2BFB0FFD3C0B2FFD3C2B1FFD6C5B6FF5B3E37FF5D48
        42FF69534CFF82675DFFF9F5F1FFF9F5F0FFF9F4EFFFF9F4EFFFF8F3EEFFF8F2
        EDFFF7F2ECFFF7F1EBFFF7F1EBFFF6F0EAFFF6EEE9FF664F46FFB4A399FFB3A0
        97FFB19D95FFB09C93FF6E564CFC0000000B0000000300000000000000000000
        00010000000552443984A48873FCA88C75FFA98D76FFA88F78FF836859FF765B
        4DFF765A4DFF80655BFFA9948BFFA89289FFA59087FFA48E85FFA28C82FFA08A
        80FF9E877EFF9C847BFF998278FF987F76FF947C73FF695148FF745F52FF745E
        51FF725B50FF6F584DFC453730A5000000070000000200000000000000000000
        0000000000020000000500000007000000090000000900000009000000090000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
        000B0000000B0000000A00000007000000030000000100000000000000000000
        0000000000000000000100000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGuardarClick
    end
    object btnGuardarCerrarDatosBancarios: TdxBarLargeButton
      Caption = 'G&uardar y Cerrar'
      Category = 0
      Hint = 'Guardar y Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0001000000010000000300000004000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        0001000000050000000B00000011000000150000001500000016000000160000
        0016000000160000001600000017000000170000001700000017000000170000
        0018000000180000001800000018000000180000001900000019000000180000
        00150000000E0000000600000001000000000000000000000000000000000000
        00020000000B2D1F1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC084
        54FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAF6B
        3AFFAC6837FFAB6535FFA96333FFA76030FFA76030FF523730FF51362EFF5035
        2EFE261915890000000E00000003000000010000000000000000000000000000
        0004000000105C4037FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC
        85FFE4BA83FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDFAF
        72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFFDCA96BFF5E423AFF6C4F44FF6F50
        48FF50352EFB0000001400000005000000010000000000000000000000000000
        00050000001260443BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B3
        7FFFD8B17DFFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD4A6
        6EFFD4A56BFFD3A369FFD3A267FFD3A166FFDEAA6BFF61443CFF6E4F45FF7253
        49FF52372FFF0000001700000006000000010000000000000000000000000000
        00050000001263473DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3
        EEFFF8F2EDFFF7F2ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF5ED
        E8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FFF3EAE5FF63473EFF6E5046FF7155
        4BFF533831FF0000001700000006000000010000000000000000000000000000
        000400000012664A40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3
        F0FFF8F2EFFFF7F2EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF5EE
        E9FFF5EEE8FFF4EDE7FFF4EDE6FFF4ECE6FFF4EBE6FF674A41FF6F5147FF7456
        4DFF543932FF0000001700000006000000010000000000000000000000000000
        0004000000116A4E42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4
        F0FFF9F3EFFFF8F3EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF5EF
        EAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FFF4EBE6FF694D43FF705248FF7558
        4EFF553A33FF0000001600000006000000010000000000000000000000000000
        0004000000106E5146FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5
        F1FFF9F4F1FFF8F3F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF6EF
        EAFFF6EFE9FFF5EEE9FFF5EEE8FFF4EDE8FFF4ECE6FF6C5046FF71534AFF765A
        50FF573C34FF0000001500000005000000010000000000000000000000000000
        000400000010715549FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5
        F2FFF9F5F1FFF8F4F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF6F0
        ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FFF5EDE7FF6F5349FF72554BFF795D
        52FF583D35FF0000001500000005000000010000000000000000000000000000
        00040000000F75594CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8
        F6FFFBF8F6FFFBF8F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF9F4
        F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFFF7F0EBFF72564BFF73564BFF7B5F
        54FF593E36FF0000001400000005000000010000000000000000000000000000
        00040000000F795C4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C
        5EFF866B5DFF856A5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D
        51FF775C50FF765B50FF765A4FFF75594EFF755A4EFF74584EFF75574DFF7D61
        56FF5A4038FF0000001300000005000000000000000000000000000000000000
        00030000000E7C5F52FFAB9386FF937768FF927767FF917566FF907565FF8F73
        65FF8E7263FF8D7163FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C
        51FF785B52FF785B51FF775B51FF765A50FF765A4FFF76594FFF75594EFF7F63
        58FF5B423AFF0000001300000005000000000000000000000000000000000000
        00030000000D806356FFB0988AFF967B6BFF957A6AFF947869FF947868FF9277
        67FF927566FF917565FF907365FF8F7363FF8D7263FF83695BFF755A50FF7057
        4DFF70564DFF6F564CFF6F554CFF6E554CFF6E544BFF6E544AFF6E5449FF775E
        55FF543D36FF00000026000000190000000D0000000300000000000000000000
        00030000000D846758FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A
        6BFF957968FF947869FF937767FF927666FF917465FF896E60FF422F6FFF3221
        7FFF33207FFF32207FFF321F7EFF311F7EFF311F7EFF311E7EFF311D7DFF311D
        7CFF301D7CFF231192FF231191FF190C68C50000000C00000000000000000000
        00030000000C886C5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA289
        79FFA08779FFA08777FF9F8476FF9D8374FF9C8272FF93786AFF362483FF384A
        D3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444D3FF3C4E
        D6FF2A3ACEFF202FC9FF1E2CC9FF251595FF0000001200000000000000000000
        00030000000C8A6F5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E44
        3CFF614840FF60483FFF5F473EFF5E463DFF5D453DFF584038FF3121A0FF4356
        D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353ABEFF2827
        ABFF3B45C9FF2F41D0FF2332CCFF291A99FF0000001200000000000000000000
        00030000000B8E7361FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D
        44FFE9D5C9FFE8D5C9FFE8D5C8FFE6D4C8FFE8D4C7FFD9C8BCFF3529A5FF4E62
        DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89CEFFEDED
        F8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF0000001100000000000000000000
        00030000000B917663FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A51
        48FFF4E4D5FFEFDED0FFEAD9CBFFE8D6C9FFE8D4C8FFDCC9BEFF392FABFF596F
        DFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1EDFFF3E9
        E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F00000000000000000000
        00020000000A957967FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F55
        4CFFF7E8D9FFF6E8D8FFF5E6D7FFF2E2D4FFECDBCFFFDECDC1FF4036B1FF657A
        E2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9E2FFEADA
        D1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E00000000000000000000
        000200000009987C69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF7359
        4FFFF8EADBFFF7E9DAFFF6E8D9FFF5E7D8FFF4E6D7FFE6D7CBFF453DB6FF6E83
        E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EBE5FF897D
        B8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D00000000000000000000
        0002000000099A7F6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D
        53FFF9ECDCFFF8EBDCFFF7EADBFFF6E8DAFFF5E7D9FFEBDDD0FF4A44BCFF788F
        E8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7EDE8FF9087
        C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000000000000000000
        0002000000089D816DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A60
        56FFFAEDDEFFF9ECDDFFF8EBDCFFF8EADBFFF7E9DAFFECDFD1FF504CC2FF92A7
        EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0EAFFFAF5
        F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B00000000000000000000
        000200000008A0846FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E64
        5AFFFBEEDEFFFAEDDEFFF9EDDDFFF8ECDDFFF8EADBFFEFE2D4FF6B6AD0FFADC1
        F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDFD8FFF4EC
        E7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A00000000000000000000
        000100000006A08570FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF8065
        5CFFFCEFDFFFFBEEDFFFFAEEDEFFFAEDDEFFF9ECDDFFF1E5D6FF7577D6FFB1C6
        F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68A8FFCBB5
        BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000000000000000000
        00010000000451433983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C
        53FFA9948BFFA8938AFFA69188FFA58F86FFA38D83FF9D887EFF797BDAFFB5CA
        F6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555BCFF2E21
        9BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF0000000800000000000000000000
        0000000000010000000400000006000000070000000700000007000000070000
        000800000008000000080000000800000008000000080000000D7D80DEFFB9CD
        F6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CCF6FFB7CB
        F6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF0000000600000000000000000000
        0000000000000000000100000001000000020000000200000002000000020000
        00020000000200000002000000020000000000000002000000056062A6C08184
        E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81DEFF7D81
        DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C10000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0003000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGuardarCerrarClick
    end
    object btn1: TdxBarLargeButton
      Caption = '&Agregar Cuenta'
      Category = 0
      Hint = 'Agregar Cuenta'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000171E11094D4C2B1795744223D17A4425D996542DFF96542DFF7A44
        25D9744223D14C2A17961E11094F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B00000015321C
        0F6B824928E19F6137FFB47B4BFFC4915CFFC99560FFD3A36BFFD3A46BFFC895
        60FFC5905CFFB47B4CFFA06238FF814929E2321C0F6D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D120A0636754325CFA76A
        3EFFC7935EFFD5A56CFFD4A46DFFD4A56CFFD4A56CFFD4A56CFFD4A56CFFD5A5
        6CFFD4A56CFFD5A56DFFD4A66DFFC7945FFFA76A3FFF764426D1120A063A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E26160C5590552FF0BE8956FFD6A6
        6EFFD5A56DFFD5A56DFFD5A66DFFD6A76EFFD5A76EFFD5A76EFFD5A76FFFD6A7
        6FFFD6A76EFFD5A76EFFD5A66EFFD5A66DFFD6A66FFFBE8957FF91542FF12616
        0C5A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C26160C539B5F38FAC79560FFD5A76EFFD6A6
        6EFFD5A76FFFD6A770FFD6A870FFD6A871FFD6A871FFD6A871FFD7A871FFD7A9
        71FFD6A870FFD6A870FFD6A871FFD6A86FFFD6A76FFFD5A86FFFC79562FF9A5F
        38FA26160D590000001000000005000000010000000000000000000000000000
        00000000000200000009160D0738925934EECA9A64FFD6A870FFD6A76FFFD6A8
        70FFD7A972FFD7A972FFD7AA73FFDAB17BFFE0BC8DFFE1BE91FFE1BF91FFE0BD
        8EFFDAB07BFFD8AB73FFD7AA73FFD7A972FFD7A971FFD7A870FFD6A970FFCA9A
        65FF925934EF160D073E0000000C000000030000000100000000000000000000
        00010000000500000010774829CBC08C5CFFD8A972FFD6A872FFD8A972FFD8AA
        74FFD8AB74FFD8AB75FFD8AC75FFCEA478FFA46E45FF9E653DFF9E653DFFA46E
        45FFD0A97EFFDAAE79FFD8AC76FFD8AC75FFD8AA74FFD8AB73FFD7AA72FFD7AA
        73FFC08D5DFF7A492AD000000016000000070000000100000000000000000000
        00020000000A34201365AB734AFFD8AD76FFD7AA73FFD8AB74FFD8AB75FFD9AC
        76FFDAAD77FFDAAD78FFDAAF79FFA46D44FFD9C3B4FFF8F2EDFFF9F3EFFFE1CF
        C1FFA67047FFDDB683FFDAAF78FFDAAD78FFDAAD77FFD9AC76FFD8AB75FFD8AA
        74FFD9AD78FFAC744BFF341F126B0000000E0000000300000001000000010000
        00040000000F875332DDCC9B6AFFD8AB76FFD8AB75FFD9AC77FFD9AF78FFDAB0
        79FFDAB07AFFDBB17BFFDBB17CFF9C633AFFECDFD8FFF1E6DDFFF2E6DDFFF9F4
        F0FF9E673EFFE0BA88FFDCB27CFFDBB17BFFDAB07AFFDAB079FFDAAF78FFD9AD
        77FFD9AC77FFCC9C6BFF885432DF000000160000000700000001000000020000
        000727190F4EAF7852FFDAB17BFFD8AC76FFDAAD78FFDBB079FFDBB17BFFDBB2
        7CFFDCB27FFFDCB37FFFDCB480FF9C633AFFEADDD4FFF2E7E0FFF2E8DFFFF8F3
        EEFF9F6840FFE1BC8CFFDEB480FFDCB380FFDCB37EFFDCB27CFFDBB17BFFDAB0
        79FFD9AD77FFDBB17DFFAF7952FF2A1A10570000000B00000002000000020000
        000956362192C5976EFFDBAF7BFFDAB079FFDBB07BFFDBB27CFFDEB886FFE5C4
        98FFE6C69CFFE7C79CFFE7C79CFF9C633AFFEBDED6FFF3EAE2FFF3E9E2FFF9F4
        F0FFA06A42FFE9CEA5FFE7C89DFFE6C79CFFE5C599FFE0B988FFDCB37FFFDCB1
        7EFFDBB17AFFDBB27EFFC5986FFF563722980000000E00000003000000020000
        000B7B4F32C6D1A77AFFDBB17CFFDBB27BFFDCB27FFFDEB480FFD0AA7EFFA46E
        44FF9E673EFFA06A42FFA26D45FFA57049FFF4ECE5FFF5ECE5FFF5ECE5FFF9F5
        F1FFA26C44FFA26E46FFA36F48FFA47049FFAC7B54FFD6B28BFFDFB785FFDCB4
        80FFDCB27FFFDCB37EFFD2A97BFF7C5032CA0000001100000004000000030000
        000C99633EECD8B281FFDBB27DFFDCB37FFFDEB482FFDFB683FFA46E45FFD4BC
        AEFFF9F5F1FFF9F5F2FFFAF6F3FFFAF6F3FFF6EEE8FFF6EEE8FFF5EEE8FFF5ED
        E7FFFAF6F2FFFAF5F2FFF9F5F1FFFAF5F2FFE1CFC3FFA57047FFE3BE8EFFDFB6
        83FFDEB481FFDCB580FFDAB483FF99643FED0000001300000005000000030000
        000CA46D46FADEBA8AFFDEB480FFDEB581FFDFB784FFE0B887FF9C633AFFE6D9
        D3FFF5EDE7FFF5EEE8FFF7EFE9FFF7EFEBFFF7F1EBFFF7F1EBFFF6F1ECFFF7F0
        EBFFF6EFE9FFF6EEE8FFF5EDE7FFF5EBE5FFFAF6F3FF9E653DFFE4C192FFE0B8
        86FFDFB784FFDEB582FFDFBD8CFFA56E47FA0000001300000005000000030000
        000BA67049FAE4C297FFDEB582FFE0B785FFE0B987FFE3C08FFF9C633AFFDFCF
        C7FFF2EAE4FFF6F0EBFFF7F1EDFFF8F2EEFFF9F3EEFFF9F3EEFFF8F2EEFFF8F2
        EDFFF7F1EDFFF7F0EBFFF6EFE9FFF5EDE7FFF5EFEBFF9E653DFFE6C698FFE2BB
        89FFE0B987FFDFB784FFE4C398FFA7714AFA0000001200000005000000020000
        000A9E6B45ECE3C69DFFDFB986FFE2BD8CFFE6CB9EFFE8D1A6FFA36E45FFBE9E
        8CFFCCB6AEFFCFBAB1FFD1BDB5FFD4C1BAFFEDE3DEFFF9F5F2FFFAF5F1FFF9F4
        F0FFE5D7D1FFDDCDC5FFDDCCC4FFDDCEC6FFCFB5A7FFA57047FFE9D0A5FFE6C6
        97FFE2BD8BFFE0BA8AFFE4C69FFF9E6D47ED0000001100000004000000020000
        0008835A3BC5DEC19FFFE6C79AFFE9D1A5FFE9D2A8FFEAD5AAFFD7B990FFAD7C
        53FF9C633AFF9C633AFF9C633AFF9C633AFFECE4E0FFFAF8F4FFFAF7F4FFFCFB
        F9FF9C633AFF9C633AFF9C633AFF9C633AFFAD7B52FFD8B78EFFEACFA3FFE8CC
        9EFFE6C89BFFE4C394FFDFC2A1FF835A3CC80000000E00000003000000010000
        00065D422C8FD8BB9DFFEBD7AFFFEAD3AAFFEBD6ACFFEBD7AEFFECD9AFFFEDDA
        B0FFEDDAB2FFEEDBB4FFEEDCB4FF9C633AFFECE4E1FFFBFAF8FFFCF9F7FFFDFB
        FAFFA7754EFFF0DDB7FFEDD8B0FFEDD7AEFFECD5ABFFEBD2A7FFEAD1A5FFE9CE
        A2FFE8CC9FFFE9CCA2FFD7B898FF5D422D940000000B00000003000000010000
        00042D221848C6A07DFFF2E3C5FFEBD6AEFFECD9AFFFECDAB2FFEDDBB3FFEEDC
        B4FFEFDDB6FFEFDDB7FFF0DFB8FF9C633AFFECE5E1FFFCFCFAFFFCFBF9FFFDFC
        FBFFA57049FFF1DFBBFFEFDBB4FFEED9B1FFEDD7AFFFECD6ABFFEBD3A9FFEAD1
        A5FFE9CEA3FFF0DDBBFFC49B77FF2D20174E0000000700000002000000000000
        000200000007A07A5ADAE9D9BFFFEDDCB5FFEDDCB4FFEDDDB5FFEEDEB8FFEFDF
        B9FFF0E0BAFFF0E1BBFFF1E2BBFF9C633AFFE5D9D5FFF9F6F6FFFDFCFBFFF5F2
        F0FFA26C45FFF2E2BEFFF1DEB7FFEFDCB5FFEEDBB3FFEDD8B0FFECD5ADFFEBD4
        A9FFEBD3A9FFE8D4BAFF9C7453DC0000000E0000000400000001000000000000
        0001000000043E31245BCBA885FFF5ECD1FFEEDDB7FFEEDFB8FFEFE0BBFFF0E2
        BCFFF1E3BDFFF1E4BFFFF2E4BFFFA46F47FFC0A392FFCFBAB4FFCFBBB5FFC3A6
        97FFA7744DFFF3E5C1FFF2E1BBFFF1DFB8FFEFDCB6FFEFDBB3FFEDD9B0FFECD6
        ACFFF4E6CAFFC9A27EFF3E2E2161000000080000000200000000000000000000
        00000000000200000006947457C6E4D1B6FFF2E7C9FFEFE2BCFFF1E3BEFFF1E4
        BFFFF2E5C1FFF2E6C2FFF3E6C3FFDEC6A1FFAF7F57FF9C633AFF9C633AFFAF7F
        58FFDEC7A2FFF3E5C1FFF2E3BDFFF2E1BBFFF0DFB8FFEFDDB6FFEEDAB3FFF2E2
        C2FFE3CDB1FF926F51C80000000C000000040000000100000000000000000000
        0000000000010000000319140F28B6936FECEFE3CCFFF5EACDFFF1E5C1FFF2E7
        C2FFF2E8C3FFF3E8C4FFF3E9C5FFF4E9C5FFF4EAC7FFF4EAC7FFF4E9C6FFF5E9
        C6FFF4E8C5FFF3E6C2FFF3E6C1FFF3E4BEFFF1E1BCFFF0DFB9FFF4E5C6FFEFE1
        CAFFB28D6AED19130E2D00000006000000020000000000000000000000000000
        000000000000000000010000000431271E46C6A27EF9EFE3CBFFF8F1D8FFF3E8
        C4FFF3E9C5FFF4EAC7FFF4EAC8FFF4EBC8FFF5EBC9FFF5ECC9FFF5EBC9FFF5EB
        C8FFF4EAC7FFF4E8C5FFF3E7C4FFF3E5C0FFF2E3BEFFF7EDD3FFEEE0C8FFC39D
        78FA30251B4A0000000700000002000000000000000000000000000000000000
        00000000000000000000000000010000000432281F45BB9876EEE6D5BAFFFBF7
        E3FFF7F0D3FFF4EBC8FFF5ECCBFFF5EDCBFFF6EDCBFFF5EDCCFFF5EDCBFFF5EC
        CBFFF5EBC9FFF5EAC7FFF4E8C5FFF6EDCFFFFBF5E1FFE6D2B7FFB99471EE3127
        1D4A000000070000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000318130F239E8163C8D8BA
        98FFF1E5CFFFFCF9E7FFFBF6E0FFF8F2D8FFF8F3D6FFF6EFCDFFF6EFCDFFF8F2
        D6FFF8F1D6FFFBF5DEFFFCF8E6FFF1E5CEFFD7B896FF9C7E5FCA17130E280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000054136
        2956AE916EDAD4B591FFE5D1B4FFF1E6CFFFF4EAD5FFFCF9E8FFFDF9E8FFF5EA
        D5FFF1E5CEFFE4CFB1FFD3B38EFFAD8E6CDA4336295B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        000300000004251E1832665642829F8465C5A78C6BCECFAC85FCCFAC85FCA68A
        6ACF9F8366C666544184251E1734000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn1Click
    end
    object btnEditarCuenta: TdxBarLargeButton
      Caption = '&Editar Cuenta'
      Category = 0
      Hint = 'Editar Cuenta'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000004000000070000000A0000000B0000000B0000
        000B0000000B0000000C0000000B0000000A0000000800000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000300000007000000100000001B0000002200000027000000280000
        0028000000280000002800000028000000240000001C00000011000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000200000007000000121D130A476D4626BA986234F2A36937FFA26836FF9E6C
        41FF91857CFF9A704EFF9E6332FF985E30F8653E1FB71D12094D000000150000
        0009000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0007000000135239237CCF935BFBE2A76EFFE9B47DFFD0965AFFB5783BFFB679
        3AFFB98D63FFC3B9B3FFBB9168FFB57839FFA46A31FF8F5525FD3E230F8D0000
        00190000000A0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000060000
        0012523A237CDA9E67FFEBB37CFFECB47DFFECB47CFFEEB984FFD1975CFFB578
        3BFFB5783BFFBA8E64FFC4BAB7FFBB926AFFB4783BFFB4783BFF9D622DFF4427
        1095000000180000000900000002000000010000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000C5138
        2375DA9F68FFEDB77FFFECB67FFFEDB67FFFEDB67FFFECB67FFFEFBD89FFD198
        5DFFB5793BFFB5793BFFBB8F65FFC6BCB9FFBB926BFFB5783BFFB5783BFFA064
        2FFF44281194000000180000000A000000020000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000010C38A
        57F1ECB781FFEDB882FFEDB882FFEDB981FFEDB882FFEDB882FFEFB882FFEFC0
        8EFFD2995FFFB6793CFFB6793CFFBB9066FFC8C0BAFFBC946DFFB77A3BFFB77A
        3BFF2229A5FF02064B9600000017000000090000000200000000000000000000
        00000000000000000000000000000000000000000000000000000000000FCA99
        6AF0F1C594FFEFBA85FFEFBA84FFEFBA84FFEFBA85FFEFBA84FFEFBA84FFEFBA
        84FFF1C492FFD39A61FFB67A3DFFB6793DFFBD9168FFCBC2BCFFBE956EFF4147
        B7FF3140C8FF1B28AFFF02074C96000000170000000900000002000000000000
        00000000000000000000000000000000000000000000000000000000000A5541
        2D73DFAB77FFF3CB9DFFF0BB87FFEFBB87FFF0BC87FFF0BB87FFF0BC87FFF0BC
        87FFF0BB87FFF2C797FFD39B63FFB67A3EFFB67A3EFFBE9469FFCBC4C2FF6D74
        C7FF3342C9FF3342C9FF1C29B1FF02084D950000001600000009000000020000
        0000000000000000000000000000000000000000000000000000000000040000
        000D543D2877E0AD7BFFF5D0A2FFF0BF8BFFF1BE8BFFF1BE8BFFF1BF8BFFF1BF
        8BFFF1BE8BFFF0BF8BFFF3CB9EFFD49D65FFB67B3FFF464BBAFF6870C9FFCEC6
        C5FF6F76C8FF3545CBFF3645CBFF1E2BB2FF03094D9400000015000000080000
        0002000000000000000000000000000000000000000000000000000000010000
        00050000000D543E2976E1B07FFFF6D4A9FFF1C08DFFF1C08DFFF1C18DFFF1C0
        8DFFF1C18DFFF2C18DFFF1C18EFFF5CEA2FF6374D7FF3748CDFF3747CCFF6A73
        CBFFCFC9C7FF717ACBFF3748CDFF3747CDFF1F2EB3FF030A4D94000000140000
        0008000000020000000000000000000000000000000000000000000000000000
        0001000000050000000D553F2A75E1B384FFF7D7AEFFF2C290FFF2C290FFF2C2
        90FFF2C290FFF2C290FFF2C290FF8EA1E5FF99B1F4FF576FDFFF394AD0FF3A4A
        CFFF6C75CDFFD3CCC9FF747CCDFF394ACFFF394ACFFF212FB6FF040A4E930000
        0014000000080000000200000000000000000000000000000000000000000000
        000000000001000000050000000C55402C74E3B687FFF8DBB4FFF3C492FFF3C4
        93FFF3C493FFF3C493FF95A8E6FF7C99F0FF7B98F0FF9EB7F4FF5B72E0FF3C4D
        D1FF3C4DD1FF6F78D0FFD4CECEFF767ECFFF3C4DD1FF3C4DD1FF2332B7FF050B
        5092000000130000000700000002000000000000000000000000000000000000
        00000000000000000001000000040000000B56412D74E3B88BFFF9DEB7FFF4C6
        96FFF3C695FF9BADE8FF839EF1FF829DF1FF7F9CF1FF7F9BF0FFA4BDF6FF5E76
        E2FF4050D3FF4050D3FF727BD2FFD6D0D0FF7A81D2FF4050D3FF4050D3FF2534
        B9FF050B50920000001200000007000000020000000000000000000000000000
        0000000000000000000000000001000000040000000B56422E73E4BA8FFFFAE1
        BCFFA1B2E8FF88A4F2FF87A2F2FF87A2F2FF85A0F1FF839FF2FF829EF1FFAAC1
        F7FF6178E3FF4355D5FF4355D6FF757FD4FFD9D4D2FF7E87D4FF4355D5FF4355
        D5FF2737BBFF060C519100000011000000070000000100000000000000000000
        000000000000000000000000000000000001000000040000000A56432E728B99
        D6FFB9D1F9FF8DA7F3FF8CA6F2FF8AA5F2FF89A4F2FF88A3F2FF86A2F2FF86A1
        F2FFB0C6F8FF657BE4FF4657D7FF4657D7FF7781D7FFDBD6D6FF808AD7FF4658
        D7FF4657D7FF293ABDFF060D51900000000F0000000500000001000000000000
        00000000000000000000000000000000000000000001000000040000000A2029
        52717A8EDEFFBED4FAFF91AAF3FF8EA9F3FF8DA9F3FF8CA7F3FF8BA6F3FF8AA5
        F3FF89A4F2FFB5CAF8FF687FE6FF475BDAFF475BDAFF7985DAFFDED9D9FF838D
        D9FF475AD9FF485BDAFF2333B7FF050A3E6E0000000900000002000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0009212B52717F94DEFFC5DBFAFF9DB6F5FF9CB7F5FF9AB3F4FF97B2F4FF95AE
        F4FF8FABF4FF8DA8F3FFB9CEF9FF6A82E7FF4A5EDBFF4A5EDBFF7B88DBFFDFDC
        DCFF8590DBFF4A5EDBFF4357D2FF0A0F70CD0000000A00000002000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000008252F53708CA1E3FFC9DFFBFFA1BAF5FFA0BAF5FF9FB8F5FF9DB7
        F5FF9CB5F5FF9BB4F5FF95AFF4FFBED4F9FF6C85E8FF4B61DCFF4B61DCFF7D8B
        DEFFE2DEDFFF8A97DEFF3444C1FF090D51890000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000003000000082C36567093A8E5FFCCE2FBFFA5BEF6FFA4BCF6FFA3BB
        F5FFA1BBF6FFA0BAF5FF9FB8F5FF9EB7F5FFC5D8F9FF6E86E9FF4D63DEFF4D63
        DFFF8694E1FFDBD8D7FF3B3F77B4000002100000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000003000000072E38576F98ADE7FFCFE4FCFFA8C1F7FFA7C0
        F7FFA6BEF6FFA5BEF6FFA4BDF6FFA2BBF6FFA1BAF5FFC9DDFBFF738BEAFF5B71
        E3FF5162D3FF353978B402020210000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003000000072F39576E9BB0E7FFD0E5FDFFABC5
        F8FFAAC3F7FFA9C2F7FFA8C2F7FFA7BFF6FFA6BEF6FFA5BEF6FFD7EAFDFF8398
        E6FF121B77B30000020F00000005000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000200000006313B586D9DB3E7FFD1E7
        FDFFAEC7F8FFADC6F8FFACC5F8FFABC4F7FFAAC2F7FFC6DDFBFFAABEEEFF4858
        90B20101020E0000000500000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006333D586DA0B5
        E8FFD2E7FDFFB1C8F8FFAFC7F8FFAFC7F8FFCBE2FCFFB2C5F0FF4E5F93B20102
        030D000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010000000200000005343E
        586DA3B7E8FFD5E9FDFFBAD0F9FFD1E7FDFFB7C9F0FF536595B10102030B0000
        0004000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0005343F596B9DB2E6FFC9DDF7FFA7BCEBFF576896B00102030A000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000200000004293044535B6D9AB23B4663760202030800000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000200000003000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnEditarCuentaClick
    end
    object btnEliminarCuenta: TdxBarLargeButton
      Caption = 'E&liminar Cuenta'
      Category = 0
      Hint = 'Eliminar Cuenta'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000002000000070000000B00000007000000020000
        00000000000000000002000000070000000C0000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000A0F08438A1E0F7DED060334710000000A0000
        0002000000020000000A080434731D0F7EEE0F08418B0000000D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000006120B478C3233AFFF3648CCFF1D1EA5FF060334720000
        000A0000000A070435731F20A5FF3747CCFF2D2FAEFF120A458C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000008281C8DEF596CD8FF3B51D3FF3A4FD2FF1E22A6FF0502
        3474050235742022A6FF3A50D3FF3A50D3FF4C5FD4FF281D8BF0000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        00030000000300000008130F3C6F4D4FBAFF667EE0FF415AD6FF415AD7FF1F24
        A7FF2529A8FF415AD7FF415AD7FF5B72DEFF484AB8FF130F3C71000000000000
        0000000000000000000000000000000000000000000100000004000000070000
        0009000000090000000A0000000A0000000A0000000A0000000A0000000B0000
        000B0000000B0000000C0000001215133F74585CC1FF758DE6FF4A64DBFF4A65
        DBFF4A65DBFF4A64DBFF6983E3FF5356C0FF16133F7100000008000000000000
        000000000000000000000000000000000001000000033225214E9F7669E8AF83
        73FFAF8273FFAE8272FFAE8272FFAE8171FFAD8171FFAD8070FFAD8070FFAD7F
        70FFAD7F70FFAC7F6FFFBB9689FFD0BAB2FF9283AAFF5D63C7FF6783E5FF5774
        E2FF5774E2FF5774E2FF565CC6FF191642740000000900000001000000000000
        000000000000000000000000000000000001000000059F786BE5E9DDD9FFFBF8
        F6FFFBF8F6FFFAF7F5FFFBF7F5FFFAF7F5FFFAF7F4FFFBF7F4FFFAF6F4FFFAF6
        F4FFFAF6F4FFFAF6F3FFFAF7F5FFF6F5F3FFA09CCBFF4A50BEFF7492EBFF6383
        E7FF6483E7FF6383E7FF3840B6FF0B0939750000000A00000001000000000000
        00000000000000000000000000000000000100000005B48A7AFFFFFFFFFFF8F2
        EEFFF7F1EDFFF8F2EDFFF7F2EDFFF7F1EDFFF7F1EDFFF7F1EDFFF7F1EDFFF7F1
        EDFFF6F1ECFFF8F2EFFFF6F3F1FFA7A4D1FF555CC5FF85A1EFFF7897EDFF9CB6
        F4FF9DB7F5FF7997EEFF7796EDFF414ABCFF0E0C3C6E00000006000000000000
        00000000000000000000000000000000000100000005B68D7DFFFFFFFFFFF9F3
        F0FFF8F3EFFFF8F3F0FFF8F3F0FFF8F3EFFFF8F3EFFFF8F3EFFFF8F2EFFFF7F2
        EFFFF7F2EFFFF8F5F3FFADABD8FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676D
        CAFF7E87DDFFAFC7F8FF83A3F2FF83A1F1FF5058C4FF1210406B000000000000
        00000000000000000000000000000000000100000004B99080FFFFFFFFFFF9F5
        F2FFF9F5F2FFF9F5F1FFF9F4F2FFF9F4F1FFF9F4F1FFF8F4F1FFF9F4F1FFF8F4
        F0FFF8F4F1FFF7F5F4FF686AD4FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFAAA8
        D6FFB7B7E1FF868EE1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF000000000000
        00000000000000000000000000000000000100000003BB9384FFFFFFFFFFFBF7
        F4FFFAF6F4FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF6F3FFFAF5
        F2FFF9F6F2FFFAF8F7FFABACE4FF95A0EAFFC0D3F9FF7880D7FFB2B0DCFFF8F6
        F4FFFAF9F8FFA69AC1FF8B93E6FFC1D3F9FF949EE9FF30316883000000000000
        00000000000000000000000000000000000100000003BD9788FFFFFFFFFFFBF9
        F6FFFCF9F5FFFBF8F5FFFAF8F5FFFBF7F5FFFBF8F5FFFBF7F6FFFBF7F5FFFBF7
        F5FFFAF7F5FFFCF9F7FFFAF8F7FFB0B1E7FF7276DEFFB8B7E3FFFAF8F7FFFAF8
        F5FFFCFCFAFFD7C3BBFF2729536E5E62CBEC3132688000000005000000020000
        00040000000200000000000000000000000000000002BF9A8AFFFFFFFFFFFDFB
        FAFFFCFAF8FFFCFAF7FFFCFAF7FFFCFAF7FFFCF9F7FFFCFAF7FFFCF9F6FFFBF9
        F7FFFBF9F6FFFBF8F6FFFCFAF8FFFBFAF8FFFAF8F7FFFBF9F8FFFCF9F8FFFBF8
        F6FFFEFDFCFFC4A497FF0000000C000000090000000400000001000000065031
        1D8A0000000B00000001000000000000000000000001B08E81E7EFE5E1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDE3DFFFA98577E8000000070000000300000001000000000000000AA063
        3CFF51321E8E0000000A000000010000000000000001302823419A7E72CAC39F
        90FFC39F90FFC29F8FFFC29E8EFFC19D8EFFC19C8DFFC19C8DFFC09C8DFFC19C
        8CFFC09B8CFFBF9B8BFFBF9A8AFFBF998AFFBF998AFFBF9989FFBE9889FFBD98
        88FF9F7E72D72F252144000000040000000200000000000000000000000AA165
        3FFFBC8554FF5133208D00000009000000010000000000000000000000010000
        0001000000010000000100000001000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000030000
        000300000002000000020000000100000001000000000000000000000008A368
        42FFDAA76DFFBE8757FF5234208B000000060000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000100000000000000000000000000000000000000000000000000000007A66B
        45FFDBAA72FFDAA971FFB27A4EFF2A1B11490000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000005A76F
        48FFDDAE76FFC18C5DFF52352285000000040000000000000001000000020000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000030000000300000003000000030000
        000400000003000000030000000200000001000000000000000000000004AA71
        4BFFC49162FF5337258400000004000000010000000100000004000000070000
        0009000000090000000A0000000A0000000A0000000A0000000A0000000B0000
        000B0000000B0000000B0000000C0000000C0000000C0000000C0000000D0000
        000D0000000D0000000A0000000600000002000000010000000000000002AC75
        50FF553A2782000000030000000000000001000000033529244EAB8374E8BC91
        80FFBC9080FFBB907FFFBB907FFFBB8F7EFFBA8F7EFFBA8E7DFFBA8E7DFFBA8D
        7DFFBA8D7DFFB98D7CFFB98D7CFFB98C7BFFB88C7AFFB88C7AFFB88C7AFFB88B
        7AFFAB8172F0342722570000000E00000006000000010000000000000001563C
        297F0000000100000000000000000000000100000005AB8577E5EDE1DDFFFBF8
        F6FFFBF8F6FFFAF7F5FFFBF7F5FFFAF7F5FFFAF7F4FFFBF7F4FFFAF6F4FFFAF6
        F4FFFAF6F4FFFAF6F3FFFAF6F4FFF9F6F3FFF9F5F3FFF9F5F3FFFAF5F2FFF9F5
        F2FFE7D7D1FFA57E6FE700000013000000090000000200000000000000000000
        00000000000000000000000000000000000100000005C19888FFFFFFFFFFF8F2
        EEFFF7F1EDFFF8F2EDFFF7F2EDFFF7F1EDFFF7F1EDFFF7F1EDFFF7F1EDFFF7F1
        EDFFF6F1ECFFF7F0ECFFF6F0ECFFF6F1ECFFF6F0ECFFF6F0ECFFF6F0ECFFF7F0
        ECFFFAF6F4FFBA8E7EFF000000150000000A0000000200000000000000000000
        00000000000000000000000000000000000100000005C39B8BFFFFFFFFFFF9F3
        F0FFF8F3EFFFF8F3F0FFF8F3F0FFF8F3EFFFF8F3EFFFF8F3EFFFF8F2EFFFF7F2
        EFFFF7F2EFFFF7F2EFFFF7F2EEFFF8F2EEFFF8F2EEFFF7F1EEFFF7F2EEFFF7F1
        EDFFFBF8F6FFBC9181FF00000013000000090000000200000000000000000000
        00000000000000000000000000000000000100000004C59E8EFFFFFFFFFFF9F5
        F2FFF9F5F2FFF9F5F1FFF9F4F2FFF9F4F1FFF9F4F1FFF8F4F1FFF9F4F1FFF8F4
        F0FFF8F4F1FFF8F3F1FFF8F3F1FFF8F4F0FFF8F3F0FFF8F4F0FFF8F3EFFFF8F3
        EFFFFCF9F7FFBE9585FF00000011000000080000000200000000000000000000
        00000000000000000000000000000000000100000003C7A192FFFFFFFFFFFBF7
        F4FFFAF6F4FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF6F3FFFAF5
        F2FFF9F6F2FFFAF5F3FFF9F5F2FFF9F5F2FFF9F5F2FFFAF5F2FFF9F5F1FFF9F4
        F1FFFCFBF9FFC19787FF0000000F000000070000000200000000000000000000
        00000000000000000000000000000000000100000003C9A596FFFFFFFFFFFBF9
        F6FFFCF9F5FFFBF8F5FFFAF8F5FFFBF7F5FFFBF8F5FFFBF7F6FFFBF7F5FFFBF7
        F5FFFAF7F5FFFBF7F4FFFBF7F4FFFBF7F4FFFAF6F4FFFAF7F4FFFAF7F4FFFAF7
        F4FFFDFCFAFFC29B8BFF0000000D000000060000000200000000000000000000
        00000000000000000000000000000000000000000002CBA898FFFFFFFFFFFDFB
        FAFFFCFAF8FFFCFAF7FFFCFAF7FFFCFAF7FFFCF9F7FFFCFAF7FFFCF9F6FFFBF9
        F7FFFBF9F6FFFBF8F6FFFBF8F6FFFBF9F6FFFCF8F6FFFBF8F6FFFBF8F6FFFBF8
        F6FFFEFDFCFFC49E8EFF0000000A000000050000000100000000000000000000
        00000000000000000000000000000000000000000001BA9B8DE7F2E9E5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E7E3FFB49284E800000007000000030000000100000000000000000000
        00000000000000000000000000000000000000000001332B2741A2897DCACEAD
        9EFFCEAD9EFFCDAD9DFFCDAC9CFFCCAB9CFFCCAA9BFFCCAA9BFFCCAA9BFFCCAA
        9AFFCCA99AFFCBA999FFCBA898FFCBA798FFCBA798FFCBA797FFCAA697FFC9A6
        96FFA98A7ED73229254400000004000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000001000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000030000
        0003000000020000000200000001000000010000000000000000}
      OnClick = btnEliminarCuentaClick
    end
    object btn2: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnCerrarClick
    end
    object DxBarBtnCopiarImagen: TdxBarLargeButton
      Caption = '&Copiar Imagen'
      Category = 0
      Hint = 'Copiar Imagen'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0002000000090000000E0000000F0000000F0000001000000010000000110000
        0011000000100000000B00000003000000000000000000000000000000000000
        00087C5345C0AD725EFFAC725DFFAC715DFFAC6F5BFFAB705CFFAB705CFFAB6E
        5CFFAB6E5AFF7A4E41C30000000B000000000000000000000000000000000000
        000BAF7462FFFDFBF9FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2
        EEFFFAF2ECFFAC715DFF0000000F000000000000000000000000000000000000
        000BB17964FFFDFBFAFFF7EEE7FFF8EDE7FFF7EDE7FFF7EDE6FFF6ECE5FFF6EC
        E5FFFAF2EEFFAE7260FF01010120010101100101010B00000003000000000000
        000BB37C69FFFDFCFBFFF8EFE8FFF7EEE8FFF7EEE8FFF8EEE7FFF7EEE7FFF7EC
        E6FFFAF3EFFFB07863FFC19D92FFB57D6AFF815A4EC30101010B000000000000
        000AB57F6CFFFEFCFBFFF9F0EAFFF8F0EAFFF8EFE9FFF8EFE8FFF8EEE9FFF8EE
        E7FFFBF5F1FFB27A66FFEBE6E2FFFAF3EDFFB6806DFF0101010F000000000000
        0009B98270FFFEFDFCFFF9F2EDFFF9F2EDFFF9F0EBFFF9F0EAFFF8F0EAFFF8F0
        E9FFFBF6F3FFB37D6AFFE9E1DAFFFAF3EFFFB88170FF01010110000000000000
        0008BB8775FFFEFDFDFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF9F1EBFFF9F0
        EBFFFCF8F5FFB6806DFFEAE1DBFFFAF4F0FFB98673FF0101010F000000000000
        0007BF8B78FFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF9F3
        EDFFFCF9F7FFBA8471FFECE4DDFFFBF5F2FFBB8876FF0101010E000000000000
        0007C18E7EFFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFDFAF8FFBC8978FFEDE7E0FFFBF6F4FFBC8B7AFF0101010D000000000000
        0006C49382FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFDFBF9FFBF8C7CFFEFE8E3FFFCF8F5FFBF8E7CFF0101010D000000000000
        0005C49785FFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFDFDFFFEFD
        FDFFFEFDFCFFC2907FFFF0EBE6FFFCF9F7FFC29180FF0101010C000000000000
        0003967265C0C89988FFC99887FFC79887FFC59786FFC79785FFC79784FFC596
        84FFC59683FFCDA79AFFF4EFEAFFFDFAF8FFC49686FF0101010B000000000000
        000100000003000000040000000BD8BBB0FFF8F8F8FFF5F0EFFFF5F0EFFFF5EF
        EDFFF5EFEDFFF7F0EEFFFAF4F1FFFDFBF9FFC7998AFF0000000A000000000000
        0000000000000000000000000005CCA392FFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFCFFCA9D8DFF00000009000000000000
        00000000000000000000000000039A7B6FC0CEA495FFCFA494FFCDA494FFCCA3
        93FFCDA392FFCDA391FFCCA291FFCCA290FF97776BC200000006}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000010000000200000004000000060000000600000006000000060000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000002000000070000000E000000150000001800000019000000190000
        0019000000190000001A0000001A0000001A0000001A0000001B0000001B0000
        001B0000001B0000001C0000001C0000001B0000001900000011000000080000
        0002000000000000000000000000000000000000000000000000000000000000
        0001000000030000000E78564BC0A77868FFA77867FFA77666FFA67766FFA675
        65FFA67666FFA57565FFA47464FFA47464FFA47363FFA37363FFA37262FFA371
        61FFA27161FFA17061FFA17160FFA1705FFF9F705FFF725044C2000000110000
        0004000000010000000000000000000000000000000000000000000000000000
        00010000000500000013AA7A6CFFFCF9F7FFFCF8F6FFFBF8F6FFFBF8F5FFFBF7
        F5FFFBF7F4FFFAF7F3FFFAF6F3FFFAF6F3FFFAF6F2FFFAF5F2FFF9F4F1FFF9F4
        F0FFF9F3F0FFF8F3EFFFF8F3EFFFF8F2EEFFF8F2EEFFA17060FF000000180000
        0006000000010000000000000000000000000000000000000000000000000000
        00010000000500000014AB7D6DFFFCF9F8FFF7EDE9FFF6EDE8FFF6EDE6FFF6ED
        E6FFF6ECE6FFF6ECE5FFF6ECE5FFF6ECE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EA
        E3FFF4EAE3FFF4EAE3FFF4EAE3FFF3E9E3FFF8F2EEFFA37262FF0000001A0000
        0008000000020000000100000001000000000000000000000000000000000000
        00000000000500000014AB7F6FFFFDFAF8FFF7EFE9FFF7EFE9FFF7EFE8FFF6ED
        E8FFF6EDE8FFF6EDE6FFF6EDE6FFF4ECE6FFF6ECE6FFF4ECE5FFF4EBE5FFF4EB
        E4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EAE3FFF9F3EFFFA37363FF0000001F0000
        000D000000080000000700000004000000020000000100000000000000000000
        00000000000500000013AD8071FFFDFBF9FFF7F0E9FFF6EFE9FFF7EFE9FFF7EF
        E8FFF7EFE9FFF6EDE8FFF7EDE8FFF7EDE6FFF6EDE6FFF6EDE6FFF6ECE5FFF4EC
        E5FFF6ECE5FFF4EBE5FFF4EBE4FFF4EBE4FFF9F4F0FFA57565FF010101310101
        01210101011C0101011901010111000000080000000200000000000000000000
        00000000000500000012AF8273FFFDFBFAFFF8F0EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0E9FFF7EFE9FFF6EFE9FFF7EDE8FFF6EDE8FFF6EDE8FFF6EDE8FFF6EC
        E6FFF6EDE6FFF4ECE5FFF6EBE5FFF4EBE4FFF9F5F1FFA67667FFB89D94FFAD84
        74FFB08576FFB08676FF7F6055C2010101110000000400000001000000000000
        00000000000400000011B08375FFFDFCFAFFF8F1EBFFF7F1EBFFF7F1EBFFF7F0
        EBFFF8F0EAFFF7F0EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EFE8FFF6ED
        E8FFF7EDE8FFF6EDE6FFF4EDE6FFF6EDE6FFFAF5F2FFA87969FFE4E0DDFFF3EF
        ECFFF8F4F0FFFAF5F1FFB18677FF010101180000000600000001000000000000
        00000000000400000010B18677FFFDFCFAFFF8F2ECFFF8F1ECFFF8F1ECFFF7F1
        ECFFF7F0EBFFF8F1EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EFE9FFF6ED
        E9FFF7EDE9FFF7EFE9FFF6EDE8FFF7EDE8FFFBF6F4FFAA7A6AFFE2DAD5FFF1E9
        E3FFF4ECE7FFF9F5F2FFB38879FF010101190000000700000001000000000000
        0000000000040000000FB48878FFFDFCFBFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1
        EDFFF8F1ECFFF8F1ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0EAFFF7EF
        EAFFF7F0E9FFF7EFE9FFF6EDE9FFF7EDE8FFFBF7F4FFAA7D6DFFE2DBD6FFF1EA
        E4FFF5EDE7FFFAF5F3FFB3897AFF010101190000000600000001000000000000
        0000000000040000000FB5897AFFFEFDFCFFF9F3EFFFF8F2EFFFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F1ECFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0EAFFF7F0
        EBFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFE9FFFBF8F5FFAC7F6FFFE3DCD8FFF1EA
        E4FFF5EEE8FFFAF5F4FFB58B7BFF010101180000000600000001000000000000
        0000000000030000000EB68D7EFFFEFDFCFFF9F3F1FFF9F3F0FFF8F3EFFFF8F2
        EFFFF9F2EFFFF8F3EFFFF8F2EFFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1ECFFF8F1
        EBFFF8F1EBFFF7F0EBFFF7F0EBFFF7EFEAFFFCF8F6FFAD8071FFE4DED9FFF2EA
        E5FFF6EFE9FFFAF6F4FFB68C7DFF010101170000000600000001000000000000
        0000000000030000000DB88F80FFFEFDFDFFFAF4F1FFF9F4F1FFF9F3F1FFF9F3
        F0FFF9F3EFFFF9F3EFFFF9F3EFFFF8F2EFFFF9F2EFFFF8F2EFFFF8F2EDFFF8F1
        ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6F3FFAE8373FFE6E0DAFFF2ED
        E7FFF7F1EBFFFBF7F5FFB88F7FFF010101160000000600000001000000000000
        0000000000030000000CB99081FFFEFEFDFFF9F6F2FFF9F4F1FFF9F4F1FFFAF4
        F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2EFFFF9F3EDFFF9F2
        EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4F2FFB08374FFE7E2DDFFF3ED
        E8FFF8F1ECFFFBF8F5FFB89080FF010101150000000500000001000000000000
        0000000000030000000BBC9283FFFEFEFDFFFAF6F2FFFAF7F2FFFAF6F2FFFAF6
        F2FFFAF4F1FFF9F4F1FFF9F4F0FFF9F3F1FFF9F4F0FFF9F3F0FFF9F3F0FFF9F3
        EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1EEFFB38576FFE8E3DEFFF3ED
        E9FFF8F1ECFFFBF8F6FFB89183FF010101150000000500000001000000000000
        0000000000020000000ABD9384FFFEFEFEFFFAF7F3FFFAF7F3FFFAF7F3FFFAF6
        F3FFF9F6F2FFFAF6F2FFFAF6F2FFFAF6F1FFF9F4F1FFF8F3F0FFF9F4F1FFF8F3
        EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB38978FFE9E4E0FFF4EE
        EAFFF8F2EDFFFBF9F7FFBA9385FF010101140000000500000001000000000000
        00000000000200000009BE9686FFFFFEFEFFFAF7F6FFFAF7F4FFFAF7F3FFFAF7
        F3FFFAF7F3FFFAF6F3FFFAF6F2FFF9F6F3FFFAF6F2FFF8F2EFFFF6EFEBFFF5ED
        E9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB5897AFFEAE6E2FFF4EF
        EBFFF8F2EEFFFCF9F7FFBB9487FF010101130000000500000000000000000000
        00000000000200000008BF9787FFFFFEFEFFFBF8F6FFFBF8F6FFFAF8F4FFFBF7
        F4FFFAF7F4FFFBF7F4FFFAF7F4FFF9F5F2FFF9F5F1FFF5EEE9FFEEE2DCFFE6D8
        D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C7DFFEBE8E4FFF5F0
        ECFFF8F3EFFFFAF7F5FFBC9789FF010101120000000400000000000000000000
        00000000000200000008C09989FFFFFEFEFFFBF9F6FFFDF9F6FFFBF8F6FFFAF8
        F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6DFFFB38B7CFFA577
        66FFA47564FFA47464FFA47363FFA37363FFCEB3AAFFB88F7EFFEFEAE7FFF6F1
        EDFFF7F2EDFFF9F5F4FFBE978AFF010101110000000400000000000000000000
        00000000000200000007C19A8BFFFFFFFEFFFDF9F7FFFBFAF7FFFBF9F7FFFBF9
        F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDFDAFFAB7E6DFFFFFF
        FFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FFC2A9A0FFF3EFECFFF5F1
        ECFFF6F0EBFFF7F3F0FFC0998CFF010101100000000400000000000000000000
        00000000000100000006C39B8CFFFFFFFFFFFDF9F8FFFDFAF8FFFDF9F7FFFDF9
        F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDFDBFFB08574FFFFFE
        FEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FFC5ACA3FFF1EDE9FFF4F0EBFFF4EF
        EAFFF4EBE7FFF4EEEBFFC09D8EFF0101010F0000000400000000000000000000
        00000000000100000005C39D8EFFFFFFFFFFFDFBF9FFFDFAF9FFFDFAF8FFFDFA
        F9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1DBFFB68C7DFFFFFE
        FEFFFDF9F6FFFBF6F3FFD1B5ACFFC8AFA5FFEEE8E5FFF2EAE4FFF1E7E3FFF0E5
        E1FFEDE1DDFFEDE2DFFFC29D90FF0101010E0000000400000000000000000000
        00000000000100000005C49E8FFFFFFFFFFFFDFBF9FFFDFBF9FFFEFAF9FFFDFA
        F9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1DDFFBC9584FFFFFE
        FEFFFBF6F3FFD4BAAFFFCBB2A7FFE9DEDAFFE5D8D2FFE2D4CCFFE2D1CBFFE1CE
        C7FFDECBC2FFDECCC5FFC49F91FF0101010D0000000300000000000000000000
        00000000000100000004C59F90FFFFFFFFFFFDFDFBFFFEFBFAFFFEFBFAFFFDFB
        F9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1DCFFC19B8BFFFFFE
        FEFFD6BCB2FFD1B8B0FFEBE3DDFFBA9689FFAF8476FFAF8474FFAF8374FFAF82
        73FFAE8273FFD1B8AFFFC49F91FF0000000A0000000300000000000000000000
        00000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3E0FFE3D2CBFFDBC5
        BDFFD4BFB5FFF3EFECFFECDFDCFFB48B7CFFFFFFFFFFFFFEFEFFFFFDFCFFFEFC
        FAFFFCF9F7FFD3BAB2FF55403886000000060000000200000000000000000000
        0000000000000000000293776CBEC6A191FFC59F91FFC69F92FFC59F91FFC59F
        90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D8EFFC39D8EFFD8C3
        BAFFF8F5F3FFF5F1EDFFECE0DCFFB99283FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6
        F4FFD6BDB4FF57423B8600000008000000030000000100000000000000000000
        000000000000000000010000000100000002000000030000000400000008DAC6
        BDFFFCFCFCFFFAF9F7FFF9F7F6FFF9F7F5FFF9F7F6FFF9F6F5FFF8F6F4FFF9F7
        F6FFF9F6F4FFF6F2EEFFEEE3DEFFBF998BFFFFFEFEFFFDF9F6FFFBF6F4FFD8BF
        B8FF5A463F860000000800000003000000010000000000000000000000000000
        000000000000000000000000000000000000000000010000000200000006CDAE
        A1FFFEFEFEFFFCFBF9FFFCFBF9FFFDFAF9FFFCFAF9FFFCFAF8FFFCFAF8FFF9F7
        F6FFF9F5F4FFF5EFEDFFEDE3DFFFC4A191FFFFFEFEFFFBF6F4FFDBC4BAFF5D49
        4285000000070000000300000001000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000004CFB0
        A3FFFFFFFFFFFDFDFCFFFEFCFBFFFEFCFBFFFDFCFAFFFDFCFAFFFBF8F7FFF9F6
        F5FFF7F3F0FFF4EDE9FFEEE3DFFFC9A698FFFFFEFEFFDDC6BDFF5F4C45840000
        0006000000020000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000003D0B1
        A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6
        F5FFF6F2F1FFF3EDEAFFEFE4E1FFE5D4CFFFE1CEC7FF604F4883000000050000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000029A83
        7ABED0B1A4FFCFB0A4FFD0B0A4FFCFB0A4FFCFB0A3FFCFB0A4FFCEB0A3FFCEAF
        A3FFCEAEA2FFCEAFA1FFCDAEA1FFCDAEA1FF63524A8200000004000000020000
        0001000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnCopiarImagenClick
    end
    object dxbrbtn1: TdxBarButton
      Category = 0
      Visible = ivAlways
      ShortCut = 49225
      OnClick = dxbrbtn1Click
    end
  end
  object cdPais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 504
  end
  object dsPais: TDataSource
    DataSet = cdPais
    Left = 608
    Top = 504
  end
  object cdContratosRH: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 504
  end
  object dsContratosRH: TDataSource
    DataSet = cdContratosRH
    Left = 672
    Top = 504
  end
  object cdPersonalRH: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 504
  end
  object dsPersonalRh: TDataSource
    DataSet = cdPersonalRH
    Left = 576
    Top = 504
  end
  object cdPersonalGeneral: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    Left = 368
    Top = 504
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 512
    PixelsPerInch = 96
    object cxstylGridBackground: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle1: TcxStyle
    end
  end
  object cdDoctosPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdDoctosPostulanteAfterScroll
    Left = 304
    Top = 504
  end
  object dsDoctosPostulante: TDataSource
    DataSet = cdDoctosPostulante
    Left = 672
    Top = 472
  end
  object MemArchivosNuevos: TJvMemoryData
    FieldDefs = <
      item
        Name = 'NombreArchivo'
        DataType = ftString
        Size = 200
      end>
    Left = 232
    Top = 512
  end
  object DsEliminarDocumento: TDataSource
    Left = 640
    Top = 472
  end
  object dsdatosbancarios: TDataSource
    DataSet = cddatosbancarios
    Left = 592
    Top = 80
  end
  object cddatosbancarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 80
  end
end
