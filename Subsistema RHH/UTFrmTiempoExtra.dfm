object FrmTiempoExtra: TFrmTiempoExtra
  Left = 0
  Top = 0
  Caption = 'Tiempo Extra'
  ClientHeight = 393
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 92
    Width = 607
    Height = 37
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 8
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'NombreCompleto'
      DataSource = dsPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 607
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Btn_Cancelar2: TAdvGlowButton
      Left = 506
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Caption = '  &Cancelar'
      ImageIndex = 16
      Images = ClientModule1.Lista16
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = Btn_Cancelar2Click
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
      ExplicitLeft = 498
      ExplicitTop = 6
    end
    object Panel4: TPanel
      Left = 492
      Top = 1
      Width = 14
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Btn_Grabar: TAdvGlowButton
      Left = 392
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Caption = '  &Grabar'
      ImageIndex = 6
      Images = ClientModule1.ImageList1
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = Btn_GrabarClick
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
      ExplicitLeft = 386
      ExplicitTop = 6
    end
  end
  object GridDatos: TJvDBGrid
    Left = 0
    Top = 129
    Width = 607
    Height = 223
    Align = alClient
    DataSource = dsPersonalTE
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridDatosDrawColumnCell
    OnDblClick = GridDatosDblClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 152
        Visible = True
      end>
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 92
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clNone
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.0.9.6'
    Align = alTop
    TabOrder = 3
    object Panel_Menu_Edicion: TAdvSmoothPanel
      Left = 165
      Top = 0
      Width = 268
      Height = 92
      Cursor = crDefault
      Caption.Text = 'Selecci'#243'n de datos'
      Caption.Location = plBottomCenter
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 16764057
      Fill.Rounding = 10
      Fill.RoundingType = rtNone
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.0.9.6'
      Align = alLeft
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 6
        Top = 3
        Width = 102
        Height = 13
        Caption = 'Buscar tiempo extra:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object dDesde: TAdvDateTimePicker
        Left = 131
        Top = 22
        Width = 126
        Height = 21
        Date = 41557.660428240740000000
        Time = 41557.660428240740000000
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnCloseUp = dDesdeCloseUp
        OnExit = dDesdeExit
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41557.660428240740000000
        Version = '1.1.0.1'
        LabelCaption = 'Desde:'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object dHasta: TAdvDateTimePicker
        Left = 131
        Top = 49
        Width = 126
        Height = 21
        Date = 41557.660428240740000000
        Time = 41557.660428240740000000
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnCloseUp = dDesdeCloseUp
        OnExit = dDesdeExit
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41557.660428240740000000
        Version = '1.1.0.1'
        LabelCaption = 'Hasta:'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
    end
    object AdvSmoothPanel2: TAdvSmoothPanel
      Left = 0
      Top = 0
      Width = 165
      Height = 92
      Cursor = crDefault
      Caption.Text = 'Edici'#243'n'
      Caption.Location = plBottomCenter
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 16764057
      Fill.Rounding = 10
      Fill.RoundingType = rtNone
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.0.9.6'
      Align = alLeft
      TabOrder = 1
      object Btn_Editar: TAdvSmoothButton
        Left = 6
        Top = 3
        Width = 59
        Height = 70
        Hint = 'Ag'
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Bevel = False
        Color = clBtnFace
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000002B744558744372656174696F6E2054696D65004D6F20313520417567
          20323030352031313A33313A3134202B30313030D9FE197A0000000774494D45
          07D3081A152B1AC6555D93000000097048597300000AF000000AF00142AC3498
          0000000467414D410000B18F0BFC610500000ACE4944415478DAED597B8C5D45
          19FFCDB9E79C7BEFBEEEDEED3EBA6D770BDB6E6979B7D082A052B590D4A00926
          605404FF10135A51090625D144C06048748534850A4630316A30268AA884409A
          B4418328D5D85228A58FBBDBEDDEEEDE7DDDF7EB8C337366CE9973F7DEBBDB15
          A27F7036A73367E6DC39DFE3F7FDBE6FA6C007D7FFF6228D26BE78EFD3945240
          DCEC4F5C94FA3F64BF741C2AFB94F5798782B03187AFCA5A35EEB654FC86B0B5
          DAC2E5370D23B3FDE9910727DF37056EDBBD8FEE79E42E26B32304503A18F0BA
          DE028E108C40EA207575D596BA8867770103DF7BE459940BF3B35D71FB929187
          EE19FF6F14301A4F39304815F156825894A0B335C46E033176776A77076F5BD8
          7894B55120D60274B0B6838DF1B63DEA3FF37EBCD5C4F5D76E44CE68ED4CCD14
          DEDA7DDF0F2F7C5F14A09408C898CC62966920C45BC36D43A6BC59DF54E366CD
          BC6C4D35168268B937D75FB01256670CD1AB3ED63E97750EDFFBED3D1BDF7B0F
          F08F19C4C5005346C088B8D8175D2AFBC4C509C7367F20FCA62EEE09FB1D95F3
          A2435C28856D13A16A0503975C84E8A55B5B92339937BEF99DBDCBF24443050C
          4A216596C10757B84677ED7BDE73B06FB8EE85CD067AC304835B36A3E3AA1BA2
          6727D387773DB0F7BC3DD11842E01E080ADDEC52F3BE12B2ADE953C325012BC4
          146071D113713070D926C43EB4A3653A357768D7FD7BAE7C8F20C454A0E43C96
          AA55C2B5BCF68F680CEA7ED262F05CD966A1376AA2D7A658B3711DE257DF1049
          4D675EBBEBBEC7AE5BEA37CD86338C1BA9B1D465824A08CA948213459FC4CF29
          3C27844D821EE6815229E4C651AE02E3F28B61D8B63DF5EACBFBF75DF7915DED
          475EFF7A3157192A952B6FB3377EC608EEA93B80F2921410AC4EB1AC4B78420A
          4E950338117060B2B989E42CD60DF6604D3BB39063C336AB30CD10CC7C15A14B
          37A27F36610FBEFAC44FD76C1B12EB24CFCC6E197B77724BA154B9ED59E0535F
          02E61755C0393FF42CEE11F5CC644E677378E7E4045E7CF91F48172AC8961C64
          CA54B4A1D9496CFFC3F731BC6D10ADAD61CCA6B2028C9615C2A963131F2D162A
          BFF933F0C99D40B5B9079C659A3FE846E10202DF994ED5C1D0DA3E542A552427
          E75165CF1546A926FB5E17A3BD4D3D45AC34B3E85DB55AFC88C3AD542A21970D
          A3BB2F86B3A333379D769CAFB2A51E5FC403B449A1B1FC8B2BB275F330AED932
          2CEAA42A2B55CAC50A0AE50A4E1D3F8662B507919B6E41EA9FFBB162B017D156
          1BE14818563824BC60474C1472A5DD8B2A208A3167E1F06BAF9F80417C6154C1
          E7C8BE239FABEC1F475890F7E5387BA7CA3AEEBC7B531E6D6CACC59A471B9DC3
          FAE1F588ED7E08A587EFC2CCD83174AE8CB39CEA721A09199044D7A2E469CC33
          0DAC5F8FE7419A3BABEE9CC214D366267A04A7E9F3686FE940573C8E8869A2FD
          A16790EF1D42E2E818CAA50A2853B25A61702B556904F8C1A20AF01FD4FDB22A
          4CA926070D1296AA44977215AC49FCDD7814C9A1C378F7E43B9849CDC26496CE
          6632C8DFF32826377F1CC977CF223393412E9307AB2B9FBD13D8AB7EDF1842BC
          94A8A34124627916F720A44189434787158B510F3E8E0C4A3ECEA155A6451CA4
          8FA2A3AF15ED7D36A66E3C88179E9BC6B6ADD7A2AFBF1713890446AFD88E94DD
          8DF04B2FA0259DF85B3599BE5B97A7A102946F42C4A74281F1CB2F1B68A2B3CF
          FD54F390AF24F59E1DD67BE6F8032897A7B0AA7F2D6CC384D95D44FED637F0E2
          CFCFA1B76D35BA7ABA30393E8ED3337398DDB439655E79EDED3F79FCF1E29214
          10794C9612FCC38BD5428B0A5FF3FE2BC96770686E3FD65D32CCB2B285A86DA1
          C812598EE4317BCB219CFD6302F67E16C016413A9745ACADE5D6919191776ABF
          DBD40344B39ABE9DACFBBE8FBC058AA8093576387710BF4DECC5BA4D1B10B62C
          11B46596C472B92232E922A6531924D72730C770669D8CA18B6EC353233FDA5F
          EFBB4D1399234DE7C9C1343AF0D713C1E0D682DAA353F8B8A71AEE793F1D1AC3
          4BB81F6B36AC450BE3F72853A0CA726A2E57402653C0F4744628904A6671627A
          1C9FF9F03730FABCDDD0700D59882732FE574510BB1C4906FC5B3C138D4EFDC2
          D31D93851DEF578C2C0E388FA07B4D17E2B10E4498F0FCCAE74BC8664B9899C9
          626A6A5EDC89D349DC38FC05DCBAE16B7500B80405DC18D085A7321634E93C29
          95369AF0C417DED5A38ABF600446579E314C0FC3BD29B698F95C99095FF484E7
          1E38756A02DB567D02BBAF7AD03BCD386F0508753DE02A41BC0C5B6B0CA23D7B
          822B3C11FF9D7F477E8954E4282E58B716E190C93634214FF8B9B91C135C099F
          C486CE2BF0F0CE27D95A21F754C341C3AB09841CAF7EE7472BDCFA9CFA3C0811
          1F422A2B7B09406923F7CE89C8011C29FD1EC36CD3C22D1FB6583DC3AA501EB4
          F3F37961F914C3FDE8E839AC08ADC6939FFD15A3D5A858C0957D1910228E9690
          A8CE2A2AB2E9C2BE72B5567ECE98277120BB07EB2F1E42246C0BDC978A55217C
          3A5DF06033363685C29C8DA73EFF1C62912E914455CC35AB539A57A392C4A947
          357253AE65E24049A109AF9EDFC69FB062551CB18E764419DF97CB9C2E4B4278
          059BF1F169C63A457CEBBA5F6075FB20FFBA4CA22E7C9A95F64D3C400403A9D2
          409DAE51DDCAF2124748AAAF29C3C79DCAB45B6DDA61B10E671C4E973C68396C
          92C9198C8D4EE3CB97FF18836D17F9C94F5BB34908348901EA68250009404917
          94929A674D034E04AB6723387AEC9418E354E90B3FC7849FC30956A8DD7EE9C3
          B828764DA0DC208EA2ED7A797C291E20D4A34E15C4626945AF356D6DBD200AB7
          720603935DE8ADC4F0BB170EB2C02D89A04DA5D20CFB191C3F7E069FDE702FAE
          5EB1D3F7A6349823B1481D2C33061C3F79A9435A297F609BE81767359B1B7697
          B253CCE2597C77E80EEC7A731F7E7DE615F47675239F2D63343189EB073E871D
          FD777AEF7BECCB1990DF9007C74D62A07129213DA082D83B69AEB1885E4E2B41
          14931E7DEB287A0D8AD7FE750E5B8F5D8F23A1C3488427D0D2B70ADB076FC6CD
          ABEF0EC04E9583BA6739949AC580D964CEADEF354A115B42049357A068D39561
          F7D9E4380E25461131CAAC341EC0F60BBF82FE755722D2160F7AB85679AD2469
          26FC2210225EF0FAABFA160F28A02941A5C5F85D2CB22DA01147B47F10AD7D83
          18D8740DDB9887997241E175F8B87DE27E5FFC91A0C5960E2141C0AE1290A7CF
          7223EE9D166AB53E95C2EBB0BA6CEB0E9C193B25CC695936CE4D8CA17FCD902B
          1445207107CA711503321E481337340DE2AA4302428A71EA07B46717FD1D2DA0
          E32B7A587D3F2F04366D1BA19085423E0F3BD2E2B2945A131A84E462CA183CE6
          E8F23CE0D2679533ADB633A94708FAC69EAA3D31EB8723ADE888778B31831570
          A61D45C8B47DD681AF2CC4310C951E20DE899EC833CBF100BC5A28087AA74683
          9A4D57C0135C90CECE6E94AA15563A9B6C7B6889637BF59EA329ED0462801512
          8E2361496ABEB244059425A04A08C3CD7AE1A8E5B1A80E21DD138EA648246CB9
          8798704F2894A71C69242E1F1FE790B123217FD744F49CB01C0FC8FF1ACD162B
          FE1139BB862F5CB1F055DD71F0839C3AFE1B54123AF5E6885B2CCBF71C0E1B66
          F53CFB1E657DA1943CB5C37212193FD8E28BA5B3155FC04696A8AD48BD94B470
          4E95E47ADCB8E3B4868954894ED08C861A2A60B00C9A66656FB5525960EB9A3D
          3DEA61B46EA95D57F085E37E0CC942B2C9597F934C4C50AC9A22A1D41EA92C54
          A07652C223A0805FB6064A865A43E84A382E7B19CBA1518B31C6138F3D21A8AD
          3E090437C3D46936A73F533F165455E8481FA87765A2518632E5E9C507D7FFE3
          F51FCFB34E1C2FC1A2500000000049454E44AE426082}
        TabOrder = 0
        Version = '1.6.9.4'
        OnClick = Btn_EditarClick
      end
      object Btn_Agregar: TAdvSmoothButton
        Left = 71
        Top = 3
        Width = 88
        Height = 32
        Hint = 'Nueva Nomina'
        Appearance.PictureAlignment = taCenter
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Bevel = False
        Color = clBtnFace
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000473424954080808087C086488000000017352474200AECE1CE90000
          000467414D410000B18F0BFC6105000000097048597300000EC400000EC40195
          2B0E1B0000001974455874536F667477617265007777772E696E6B7363617065
          2E6F72679BEE3C1A0000042D49444154484BA5565B6F545514FECE991B6D8776
          2274E4329D760A33839714C40795624980D207138CF18D84077D2D971878843F
          6002C4A811FF803135441F94B6FA40EA242D3A914A2232A163EFC04843A73D9D
          69CF5C8F6BED73F6993394F141D7C94AF79CBDF7FAD6F7ADB5F7A96290E13FDA
          506A0817EF5C84C7E341AE92434009E0D2FE4B38BDEFB41D5191008944021B1B
          1BA8560D284A634497EA46B3D284DE442FBA0F74E3D3BECF00CA51A1A7EA3630
          F8D320E61667617C64E66D038C8C8CE0E8B163C86657E072A904A240555D028C
          C7E2B7A2C2EF6FC1D62FB622B2A71BE75E3B87D4E3BB381FBE20827DBE7005B1
          9DFB71E5D76BF873E61E8C4103AACC950394CB1562C05E155EA994C92BB637A9
          4DB83A7115397A0EC50EE1EEFA2D3C5C9D4047A05378469B405ABF85A32FBF0D
          78811B7FDCA831181D1D45DF9123D0348D1870E666D6B653266DCD6D087E19C4
          527C09DB9F3663B7A782E5D902E62F9872ECFB4441B0CB874CD985A99675C4B3
          F11A03A197AA922CA63CCFBA4AA028004BF4E02930F66A12BFBFAFDBC1797FEA
          BC819FDFD5F16D3C0968C062F6613D00EB55D39B6B6002B2BBB818155AC08BC8
          B9D88D4C55688E4815FDC5FA1A70455551DC7A16FC8ED9F16A771B6D6E25396E
          C711FA4AC18E8F6B2D17BBA6E0C0370A7A27E34000087BC3CF486405E22D422E
          0B50B2E2C29D6D3E0B9488413BB0AD1308522C69DB63C00B114A7E1BBDD1810F
          5FFCC001C0BD2CB5B7828BDF8EB1E13570F9A5CBA216952A707F0E9827ADE7B2
          0F304F3EB3064C4E032B149CE53CD371A606C07D203277662D835B9295CB6504
          A201FC480F7C446407B04A9BBABE8EA373288E0C8D57483E669AF025D0BAB7B5
          5E22D1494E168EDF5206433170FCBDE348569238F9E0247CED8414A5D91EDADB
          A2E2D4F2295C4F5EC7E1770E8B2DF649E673D07FE204F2F93C75081599B3B76A
          C10BB9F07C6D9927DCEC2C2DA361FADE349E3C7E02AFC70B7F9B1F3D6FF6602C
          3986FEFE7E3327BE8BD8E8AA30E8F41AB95CCE58CFE78D0D5D370A8582512C16
          6D27898C52A964D0E916DEC8868787ED29FBAAB05BC1D9498E5B4F3270326146
          4EE7EBC54ADA0E570FC0C1CD420829A42472EC049181F8AE2296D0751D3ADDC6
          6CFC4E5A1D80EC22596CB948169E0119441A7715D72C93F91B5353692C3ECAE0
          BBEF7FC0EB070F6E06E02036AA3596194B40E71ACE3A97CBE3B7C93B48A5EEC3
          B7650BD27FA5F14A3C869DBB76359048A8634A638359DDE364C55A5303209D9E
          42C7EE1006060630373B83287D23A251EED99A6D2E32CD393397819DA0AC3175
          1BE61716100A857073E4262291C8A6E0BCF7B900752958ACE43B066206DADA1A
          DADB8398F8E536A27BA3CF0D5E072033F47ABDE223CE7FDD6EB7F8F888EBDAFA
          08F1D82BE67D585ED5D015EE14008DCC3EC9E3E3E382B66C4DE706092E8B5CA2
          9B2EABADA1EFAD37100E871B0617F2FE9F7F5BFE35B235F90F9CC9F95DDA486B
          0E0000000049454E44AE426082}
        TabOrder = 1
        Version = '1.6.9.4'
        OnClick = Btn_AgregarClick
      end
      object Btn_Eliminar: TAdvSmoothButton
        Left = 71
        Top = 41
        Width = 88
        Height = 32
        Hint = 'Borrar Nomina'
        Appearance.PictureAlignment = taCenter
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Bevel = False
        Color = clBtnFace
        Picture.Data = {
          FFD8FFE000104A46494600010100000100010000FFDB00840009060608060509
          0807080A09090A0D160E0D0C0C0D1A131410161F1C21201F1C1E1E2327322A23
          252F252A1A2B3B2C2F332938342C212036353036352B2C442901090A0A0D0B0D
          190E0E1935241E24353535353535353535353535353535353535352E35353535
          3535353535353535353535353535353535353535352935352931FFC000110800
          1F001A03012200021101031101FFC40019000003000300000000000000000000
          0000050607010408FFC4002D10000201040003040B0100000000000000010203
          00040511062131415161911216535564718192A3D1D213FFC400170101010101
          00000000000000000000000005030402FFC4001F110001040203010100000000
          0000000000010002031104121331516105FFDA000C03010002110311003F00B5
          4D70B1920689036767400F13429B8A71C92FA07216E1B7D02B11F774A5DE2EBC
          BDBBBAB2C3D82969AF50CECA1802E39E86CF6681A09EA67117BBFF003C7FD549
          CF20D0093831237303A57D5FD54F82F126552194AB8DABA36D5BEB5B553AE176
          C86233E30B918CC66EA232C685C3688D904689EE6A798AF43C28DDEA0D76D76C
          164C88785FA8363B054F78F70F7F3A5BE4F1524C97B8D43148202564119DE997
          5CFA120FCEA7E78AB3C0E8E6B2608F8B93F75D017B8E170E248DDA2997A3A9E7
          429F02EF3FFA3D9E2E497DB35A2993CEA6F8ACD8291C4FD26C31F1C8CDABA48D
          C038FC9DC5F9E20CB4D71332C661B4370ECECE5B972DF3F44027CEA991591585
          17B940AC5A630C7289AE64334A06813D14780ECA21546375148FCAC839126E45
          783C5FFFD9}
        TabOrder = 2
        Enabled = False
        Version = '1.6.9.4'
        OnClick = Btn_EliminarClick
      end
    end
  end
  object Panel_Captura: TPanel
    Left = 8
    Top = 152
    Width = 481
    Height = 129
    TabOrder = 4
    object JvLabel1: TJvLabel
      Left = 49
      Top = 51
      Width = 63
      Height = 13
      Caption = 'Horas extra:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Fecha: TAdvDBDateTimePicker
      Left = 115
      Top = 24
      Width = 97
      Height = 21
      Date = 41557.835706018520000000
      Time = 41557.835706018520000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 41557.835706018520000000
      Version = '1.1.0.1'
      LabelCaption = 'Fecha de Jornada:'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'Fecha'
      DataSource = dsPersonalTEUpt
    end
    object Horas: TAdvDateTimePicker
      Left = 115
      Top = 51
      Width = 68
      Height = 21
      Date = 41564.000000000000000000
      Format = 'HH:mm'
      Time = 41564.000000000000000000
      DoubleBuffered = True
      Kind = dkTime
      ParentDoubleBuffered = False
      TabOrder = 1
      OnExit = HorasExit
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 41564.000000000000000000
      Version = '1.1.0.1'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
  end
  object Panel_Botones: TPanel
    Left = 8
    Top = 287
    Width = 481
    Height = 50
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    TabOrder = 5
    object Btn_Cancelar: TAdvGlowButton
      Left = 380
      Top = 7
      Width = 94
      Height = 36
      Align = alRight
      Caption = '  &Cancelar'
      Images = ClientModule1.Lista16
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = Btn_CancelarClick
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
    object Panel3: TPanel
      Left = 366
      Top = 7
      Width = 14
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Btn_Aceptar: TAdvGlowButton
      Left = 272
      Top = 7
      Width = 94
      Height = 36
      Align = alRight
      Caption = '  &Aceptar'
      ImageIndex = 33
      Images = ClientModule1.ImagelistMenu
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = Btn_AceptarClick
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
      ExplicitLeft = 266
      ExplicitTop = 0
    end
  end
  object dsPersonal: TDataSource
    Left = 88
    Top = 264
  end
  object dsPersonalTEUpt: TDataSource
    Left = 152
    Top = 280
  end
  object dsPersonalTE: TDataSource
    Left = 320
    Top = 104
  end
  object cdBuscar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 104
  end
end
