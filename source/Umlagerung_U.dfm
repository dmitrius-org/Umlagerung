object Umlagerung_T: TUmlagerung_T
  Left = 0
  Top = 0
  Caption = 'Umlagerung_T'
  ClientHeight = 560
  ClientWidth = 1646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1646
    Height = 139
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1642
    object dxPanel1: TdxPanel
      Left = 1
      Top = 1
      Width = 1644
      Height = 31
      Align = alTop
      Frame.Borders = []
      Frame.DrawInNonClientArea = False
      TabOrder = 0
      ExplicitWidth = 1640
      object btnDataLoad: TcxButton
        Left = 3
        Top = 5
        Width = 166
        Height = 25
        Caption = 'Daten neu laden'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList
        TabOrder = 0
        OnClick = btnDataLoadClick
      end
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 35
      Align = alLeft
      Caption = 'Marken'
      TabOrder = 1
      DesignSize = (
        334
        100)
      Height = 100
      Width = 334
      object btnSelectClear: TcxButton
        Left = 142
        Top = 15
        Width = 185
        Height = 27
        Caption = 'Markierte Zeilen deaktivieren'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = cxImageList
        TabOrder = 0
        OnClick = btnSelectClearClick
      end
      object cxButton1: TcxButton
        Left = 75
        Top = 15
        Width = 61
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Alle P-'
        TabOrder = 1
        OnClick = cxButton1Click
      end
      object bntCheckedAllClear: TcxButton
        Left = 8
        Top = 15
        Width = 61
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Alle U-'
        TabOrder = 2
        OnClick = bntCheckedAllClearClick
      end
      object btnU: TcxButton
        Left = 8
        Top = 42
        Width = 30
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'U+'
        TabOrder = 3
        OnClick = btnUClick
      end
      object btnUclear: TcxButton
        Left = 8
        Top = 69
        Width = 30
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'U-'
        TabOrder = 4
        OnClick = btnUclearClick
      end
      object btnPClear: TcxButton
        Left = 75
        Top = 69
        Width = 30
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'P-'
        TabOrder = 5
        OnClick = btnPClearClick
      end
      object btnP: TcxButton
        Left = 75
        Top = 42
        Width = 30
        Height = 27
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'P+'
        TabOrder = 6
        OnClick = btnPClick
      end
    end
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 344
      Top = 35
      Align = alLeft
      Caption = 'Filter:'
      TabOrder = 2
      Height = 100
      Width = 556
      object btnHersteller: TcxButton
        Left = 398
        Top = 18
        Width = 34
        Height = 25
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = cxImageList
        TabOrder = 0
        OnClick = btnHerstellerClick
      end
      object btnWarengruppe: TcxButton
        Left = 398
        Top = 43
        Width = 34
        Height = 25
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = cxImageList
        TabOrder = 1
        OnClick = btnWarengruppeClick
      end
      object btnArtike: TcxButton
        Left = 398
        Top = 69
        Width = 34
        Height = 25
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = cxImageList
        TabOrder = 2
        OnClick = btnArtikeClick
      end
      object cbArtikel: TcxLookupComboBox
        Left = 143
        Top = 70
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
        Properties.KeyFieldNames = 'kArtikel'
        Properties.ListColumns = <
          item
            Caption = 'Artikel w'#228'hlen'
            HeaderAlignment = taCenter
            FieldName = 'cName'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListSource = dsArtike
        Properties.OnEditValueChanged = cbHerstellerPropertiesEditValueChanged
        TabOrder = 3
        Width = 249
      end
      object cbWarengruppe: TcxLookupComboBox
        Left = 143
        Top = 44
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
        Properties.KeyFieldNames = 'kWarengruppe'
        Properties.ListColumns = <
          item
            Caption = 'Warengruppe w'#228'hlen'
            HeaderAlignment = taCenter
            FieldName = 'cName'
          end>
        Properties.ListSource = dsWarengruppe
        Properties.OnEditValueChanged = cbHerstellerPropertiesEditValueChanged
        TabOrder = 4
        Width = 249
      end
      object cbHersteller: TcxLookupComboBox
        Left = 143
        Top = 18
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
        Properties.KeyFieldNames = 'kHersteller'
        Properties.ListColumns = <
          item
            Caption = 'Hersteller w'#228'hlen'
            HeaderAlignment = taCenter
            FieldName = 'cName'
          end>
        Properties.ListSource = dsHersteller
        Properties.OnEditValueChanged = cbHerstellerPropertiesEditValueChanged
        TabOrder = 5
        Width = 249
      end
      object lblHersteller: TcxLabel
        Left = 8
        Top = 20
        Caption = 'Hersteller w'#228'hlen:'
      end
      object lblWarengruppe: TcxLabel
        Left = 8
        Top = 45
        Caption = 'Warengruppe w'#228'hlen:'
      end
      object lblArtike: TcxLabel
        Left = 8
        Top = 70
        Caption = 'Artikel w'#228'hlen:'
      end
      object btnAnlieferungTage: TcxButton
        Left = 440
        Top = 43
        Width = 107
        Height = 25
        Caption = 'Anlieferung, Tage:'
        TabOrder = 9
        OnClick = btnAnlieferungTageClick
      end
      object AnlieferungTage: TcxSpinEdit
        Left = 440
        Top = 70
        TabOrder = 10
        Width = 107
      end
    end
    object cxGroupBox3: TcxGroupBox
      AlignWithMargins = True
      Left = 906
      Top = 35
      Align = alLeft
      Caption = 'Drucken'
      TabOrder = 3
      Height = 100
      Width = 90
      object btnPrint39: TcxButton
        Left = 8
        Top = 44
        Width = 75
        Height = 25
        Caption = '39'#1093'39'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = cxImageList
        TabOrder = 0
        OnClick = btnPrint39Click
      end
      object bntPrintA4: TcxButton
        AlignWithMargins = True
        Left = 9
        Top = 18
        Width = 75
        Height = 25
        Caption = #1040'4'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = cxImageList
        TabOrder = 1
        OnClick = bntPrintA4Click
      end
    end
    object cxGroupBox4: TcxGroupBox
      AlignWithMargins = True
      Left = 1002
      Top = 35
      Align = alLeft
      TabOrder = 4
      Height = 100
      Width = 246
      object edtUMenge: TcxSpinEdit
        Left = 8
        Top = 70
        TabOrder = 0
        Width = 81
      end
      object btnUMengeClear: TcxButton
        Left = 8
        Top = 18
        Width = 81
        Height = 25
        Caption = 'U-Menge = 0'
        TabOrder = 1
        OnClick = btnUMengeClearClick
      end
      object btnUMenge: TcxButton
        Left = 8
        Top = 44
        Width = 81
        Height = 25
        Caption = 'U-Menge'
        TabOrder = 2
        OnClick = btnUMengeClick
      end
      object btnUbertragen: TcxButton
        Left = 95
        Top = 18
        Width = 148
        Height = 25
        Caption = 'Umlagerung erstellen'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = cxImageList
        TabOrder = 3
        OnClick = btnUbertragenClick
      end
    end
    object cxGroupBox5: TcxGroupBox
      AlignWithMargins = True
      Left = 1254
      Top = 35
      Align = alLeft
      TabOrder = 5
      Height = 100
      Width = 201
      object cxButton2: TcxButton
        Left = 8
        Top = 18
        Width = 183
        Height = 25
        Caption = 'Preis'#228'nderung bei Amazon'
        OptionsImage.ImageIndex = 10
        OptionsImage.Images = cxImageList
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object btnNeuerPreis: TcxButton
        Left = 8
        Top = 44
        Width = 146
        Height = 25
        Caption = 'Neuer Preis auf Amazon:'
        TabOrder = 1
        OnClick = btnNeuerPreisClick
      end
      object edtNeuerPreis: TcxCalcEdit
        Left = 8
        Top = 70
        EditValue = 0.000000000000000000
        TabOrder = 2
        Width = 146
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 139
    Width = 1646
    Height = 421
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 1642
    ExplicitHeight = 420
    object Grid: TcxGrid
      Left = 1
      Top = 1
      Width = 1644
      Height = 373
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ExplicitWidth = 1640
      ExplicitHeight = 372
      object TableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCanFocusRecord = TableViewCanFocusRecord
        DataController.DataSource = DataSource
        DataController.KeyFieldNames = 'id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopupMode = fpmExcel
        FilterRow.OperatorCustomization = True
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = ContentEven
        Styles.Header = StyleHeader
        object TableViewid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = id
        end
        object TableViewu: TcxGridDBColumn
          Caption = 'U'
          DataBinding.FieldName = 'u'
          PropertiesClassName = 'TcxCheckBoxProperties'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = u
          Width = 37
        end
        object TableViewp: TcxGridDBColumn
          Caption = 'P'
          DataBinding.FieldName = 'p'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnEditValueChanged = TableViewpPropertiesEditValueChanged
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = p
          Width = 34
        end
        object TableViewkArtikel: TcxGridDBColumn
          DataBinding.FieldName = 'kArtikel'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = kArtikel
          Width = 76
        end
        object TableViewcArtNr: TcxGridDBColumn
          DataBinding.FieldName = 'cArtNr'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = cArtNr
          Width = 191
        end
        object TableViewcName: TcxGridDBColumn
          DataBinding.FieldName = 'cName'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = cName
          Styles.Header = StyleHeader
          Width = 401
        end
        object TableViewKarton: TcxGridDBColumn
          DataBinding.FieldName = 'Karton'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object TableViewRQty: TcxGridDBColumn
          DataBinding.FieldName = 'RQty'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object TableViewDatum: TcxGridDBColumn
          DataBinding.FieldName = 'Datum'
          HeaderAlignmentHorz = taCenter
        end
        object TableViewVPEMenge: TcxGridDBColumn
          DataBinding.FieldName = 'VPEMenge'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object TableViewFBA: TcxGridDBColumn
          DataBinding.FieldName = 'FBA'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA
          Width = 154
        end
        object TableViewUMenge: TcxGridDBColumn
          DataBinding.FieldName = 'U-Menge'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.OnEditValueChanged = TableViewUMengePropertiesEditValueChanged
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = U_Menge
          Styles.OnGetContentStyle = TableViewUMengeStylesGetContentStyle
        end
        object TableViewFBABestand: TcxGridDBColumn
          DataBinding.FieldName = 'FBA-Bestand'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_Bestand
        end
        object TableViewFBABestandaktuell: TcxGridDBColumn
          DataBinding.FieldName = 'FBA Bestand aktuell'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_Bestand_aktuell
        end
        object TableViewFbmBestand: TcxGridDBColumn
          DataBinding.FieldName = 'Fbm-Bestand'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = Fbm_Bestand
        end
        object TableViewFBAEingang: TcxGridDBColumn
          DataBinding.FieldName = 'FBA-Eingang'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_Eingang
        end
        object TableViewReserviert: TcxGridDBColumn
          DataBinding.FieldName = 'Reserviert'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = Reserviert
        end
        object TableViewDefekt: TcxGridDBColumn
          DataBinding.FieldName = 'Defekt'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = Defekt
        end
        object TableViewFBA030T: TcxGridDBColumn
          DataBinding.FieldName = 'FBA 0-30T'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_0_30T
        end
        object TableViewFBA3060T: TcxGridDBColumn
          DataBinding.FieldName = 'FBA 30-60T'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_30_60T
        end
        object TableViewFBA6090T: TcxGridDBColumn
          DataBinding.FieldName = 'FBA 60-90T'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBA_60_90T
        end
        object TableViewFBM030T: TcxGridDBColumn
          DataBinding.FieldName = 'FBM 0-30T'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBM_0_30T
        end
        object TableViewFBM3060T: TcxGridDBColumn
          DataBinding.FieldName = 'FBM 30-60T'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = FBM_30_60T
        end
        object TableViewUmlagMenge: TcxGridDBColumn
          DataBinding.FieldName = 'UmlagMenge'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = UmlagMenge
        end
        object TableViewUmlagDatum: TcxGridDBColumn
          DataBinding.FieldName = 'UmlagDatum'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = UmlagDatum
          Width = 90
        end
        object TableViewAmaBestAlter: TcxGridDBColumn
          DataBinding.FieldName = 'AmaBestAlter'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = AmaBestAlter
        end
        object TableViewAmaPreis: TcxGridDBColumn
          DataBinding.FieldName = 'AmaPreis'
          OnGetStoredProperties = TableViewkArtikelGetStoredProperties
          OnGetStoredPropertyValue = TableViewkArtikelGetStoredPropertyValue
          OnSetStoredPropertyValue = TableViewcArtNrSetStoredPropertyValue
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Content = AmaPreis
        end
      end
      object GridLevel: TcxGridLevel
        GridView = TableView
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 374
      Width = 1644
      Height = 46
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 373
      ExplicitWidth = 1640
      object Label1: TLabel
        Left = 5
        Top = 16
        Width = 118
        Height = 15
        Caption = 'Anzahl der Positionen:'
      end
      object Label2: TLabel
        Left = 753
        Top = 16
        Width = 121
        Height = 15
        Caption = 'Gesamtzahl der Artikel:'
      end
      object edtCountChecked: TcxTextEdit
        Left = 129
        Top = 13
        AutoSize = False
        BeepOnEnter = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.AutoSelect = False
        Properties.IncrementalSearch = False
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.ValidationOptions = []
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 23
        Width = 67
      end
      object edtSumme: TcxTextEdit
        Left = 880
        Top = 13
        AutoSize = False
        BeepOnEnter = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.AutoSelect = False
        Properties.IncrementalSearch = False
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.ValidationOptions = []
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 23
        Width = 113
      end
    end
    object dxColorGallery1: TdxColorGallery
      Left = 160
      Top = 24
      Width = 184
      Height = 152
      PopupMenu = pmColorGallery
      Visible = False
      TabOrder = 2
      OnItemClick = dxColorGallery1ItemClick
    end
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 632
    Top = 305
  end
  object cxImageList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 18940784
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E477265656E7B
          66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22477265656E2220643D224D31362C3236632D332E332C302D362E32
          2D312E362D382D346C342D3448362E32682D3448327631306C332E322D332E32
          43372E372C32382C31312E362C33302C31362C333063372E312C302C31322E39
          2D352E322C31332E382D3132682D3420202623393B4332342E392C32322E362C
          32302E382C32362C31362C32367A222F3E0D0A3C7061746820636C6173733D22
          477265656E2220643D224D32362E382C372E324332342E332C342C32302E342C
          322C31362C3243382E392C322C332E312C372E322C322E322C3134683463302E
          392D342E362C352D382C392E382D3863332E332C302C362E322C312E362C382C
          346C2D342C3468352E386834483330563420202623393B4C32362E382C372E32
          7A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000033049444154785EA5D36B4C9B6518C6F1FFF3B6141898AC12B032E83C
          944DA79B46409481E812D1C9FCB2B8983199D190785896910C678CA7EC839992
          38A68BCBDC21A2411C043721CE39214491052D9B035182C23646070506E5D4D2
          BE7DDBF7B61F24C17DF5975CB9727DBBBFDC0AB01C7F29C7E9581E5F1667D51E
          45E4168B526B44201235FB4CD39C0847E447EF4CA8EE95CFBA2F03A6C4B0A8B9
          327FB7FB93E7F4EBBF374870E23709CF0E8A11188E65488CB93E59F0B6CBC4F9
          63D259BD456FD8915B09584484C56889366DEFFDA56FD8E64667E9AE39C4D7CF
          E67172CB7D3497E6F05DF906069A6A3116A23C5056614BB26A6F021696B08682
          D1B6C9DE534F67E616715B5109B93BDE01150504119DA07788C0B57E3C3F7C4A
          508F767003CD1F32BE1FFBB397A8BF0FD0B1C4A7A08F37E2BBB80B4FD36BFC71
          780F236DB54C5C1A662E689C054C96D04E5D18ADF70E0C8FFBBDE344E606308D
          2990B8589BD8EC6B497FA40C47611949594FCC9DFD7BBE1E88B28402AC47B6AF
          2BBD7B75FAE7F7141790B4B2087DA68BC8C23C463083C19A167C3D57D0F25C1F
          977CF465E509D7EABB802653E4B408150A5040DCA1ADF796B99CF6C3CE756BAC
          292E075A422A3DFBDBC8287C8A5B0BF369AFD83333D9FF5779CAAAACA385FBF7
          D947DA3B70BF5F5DC3372F672F5E62DBBB296B635DE91DE273BF2E93BF1E90FA
          EC6C993E734242ADB512E8754BEB0B2F9AFE9E4E09B57C21BED3757224F3CEAB
          9AC3B582F31F140860BCFBEDC03914D8921D68161BE9DB8A697CBB6A2630E241
          5DB940C1AEE795367411BFC743C35B55D3DE85C0262DAC873123065DEF3D2400
          4A29B4E40C74EF2F2C4BBB89EB23933B3BBF6A15C33749B8E767C2B13E17DBE1
          B199F2E5B6845EAB110A136F8D000A4069160DB1A691E07C0CFDA74B386F771E
          CCD95AA2162E776346A2282077F30635E56B3EEABB36D1AFCEEC5E0F0028367E
          D8911CDBF3B3E3B3AC2ADE465755034FBEFA0C71A37D8466FDB83B8724F7C14C
          15BF2C11FDE6953456370C2AFECB0A24FEDBEC4BCD3CF070BE6B7B5A8A8D8E8E
          ABD33E5FA0DC6E4F3CB63E6F857D6C2A4497DB735C2D7DAC1B55A53A2D020745
          78DC546A3348AFC05A444E022D82EC5422C2FFF10FA16591D8F5846D3B000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001F744558745469746C65005072696E743B4469616C6F673B5072696E
          74204469616C6F6746B79BCF000002C349444154785EA5935D68145718869F33
          3B751362A420B117213791A63F37AD4D2BB968A318B13F245A682582429BDA42
          20DA1FC9458A4884946092121B82457B51E94584D67A211424ADA52462624C42
          DA148A12A3458D44C96EB3D9D9D99DD939E7EB323BA0F1D6075ECEF7BD705ECE
          E1E35322C2936013A10A0056A8C802A87EA52CB6EDA38A36CB527B8097813F81
          33C040CFC7E774F88228C0EE3F3DF17B2C66D71B119480C170D3E9A4AA32CE8E
          DA66AA366CE4CE83797E9DFA916BB7674680069B875822AAFEC0DE4D0880C0F9
          2B83E4164A68DEB197964FBF60F6AFBBBC51FF2CDF7475737638BE65E6FA58C7
          AA80401B8C0889540E102E8C0FF1E17B7B985D3A4D6FCF3E4AEDA7D9DED811F6
          752F6D656CFAD27E4B1589017690D718230519B486C5FBF75892711C2FCD5CF2
          326FEFFE92AF8F7D10F64926C9BABAD2EA3E39DA70FC879989E6D663E97F6FFD
          833682D6426034255605F377E7C8F84E4119BA3A776355DC0EEB1B053FEBE805
          6BCD9AB2A1E6776A6A5D2783E779C50063305A78F5B94626FF4891F15C1CCFA1
          F7DB9F79E0DC0BEBE9D11439D79C51DDA7A6A4BD6513FB5ABB48241D10420982
          48403A7681676A123CBF39CE9BAFD5313C35CEB5099F85B9E02AB055750E8ECB
          A1965AAE5CFD9B8193432413CB182D514051F17577285BBFCCC2FD1BAC2BAF66
          39357FD88AA99ECBE747B4EAE81B95CFF6D7E27A1A05800223E12996440E848E
          8181EF271938D2505ED3B0D601B03D3F209D0DC8647C3E39D84F11E171BE1B6C
          4729C1F73480BA7E310D8055305871F2FCE7E4D8D5D4C8C5B34779F7D0019A3E
          6FE3AD836D0CFF74945D3B1B49AEB8ACB879F2F90040116127138B23C74FFCB6
          C5F73D5E7CA19AC0185A37AF471420C5890481A1B76F08CBB2C9FBEE25202042
          01A5C0534049FB57BF9C8B9796BDCEEA9F937557C6FA8FEC7C1FC8023E901311
          03F0E8325940491466F11001F2D125CD63FC0FC01F6E3B6021D8CC0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C65004578706F72743B4353563B45
          78706F7274546F4353563B61685AF00000005F49444154785EDD92C109C03008
          453B752670878ED01DB2428E19E817412A4541FFA950E1211A784AF000F04244
          C0900A9AF13F81C309C67582240AE65E4F33A9D3EC027F30424D0A7C03CDB4A0
          9ADCFB030BED878D5201497D07DF9F32C30DC0BE48132C19B076000000004945
          4E44AE426082}
        FileName = 'Office 2013\Export\ExportToCSV_16x16.png'
        Keywords = 'Export;ExportToCSV'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23
          3033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B6669
          6C6C3A234646423131353B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C672069
          643D22426172436F646553686F7754657874223E0D0A09093C70617468206964
          3D22426172636F64655F315F2220636C6173733D22426C61636B2220643D224D
          322C326834763136483256327A204D382C326832763136483856327A204D3138
          2C326832763136682D3256327A204D32362C326834763136682D3456327A204D
          32322C326832763136682D3256327A204D31322C32683420202623393B262339
          3B763136682D3456327A222F3E0D0A09093C7061746820636C6173733D22426C
          75652220643D224D342C3330762D362E3548312E3556323263302E342C302C30
          2E372C302C312D302E3163302E332D302E312C302E362D302E322C302E392D30
          2E3343332E362C32312E342C332E382C32312E322C342C323163302E322D302E
          332C302E332D302E362C302E342D3120202623393B2623393B48367631304834
          7A204D31312E322C32322E3463302E312D302E352C302E342D302E392C302E37
          2D312E3363302E332D302E342C302E372D302E362C312E312D302E3863302E35
          2D302E322C312D302E332C312E362D302E3363302E342C302C302E392C302E31
          2C312E332C302E3220202623393B2623393B63302E342C302E312C302E382C30
          2E332C312E312C302E3663302E332C302E332C302E362C302E362C302E372C31
          63302E322C302E342C302E332C302E382C302E332C312E3363302C302E352D30
          2E312C302E392D302E322C312E33632D302E322C302E342D302E342C302E372D
          302E362C302E3920202623393B2623393B632D302E332C302E332D302E362C30
          2E352D302E392C302E37632D302E332C302E322D302E372C302E342D312C302E
          37632D302E332C302E322D302E372C302E352D312C302E37632D302E332C302E
          332D302E362C302E352D302E382C302E39483138563330682D372E3220202623
          393B2623393B63302D302E362C302E312D312E312C302E322D312E3573302E34
          2D302E382C302E372D312E3163302E332D302E332C302E362D302E362C312D30
          2E3963302E342D302E332C302E382D302E362C312E322D302E3963302E322D30
          2E312C302E342D302E332C302E372D302E3520202623393B2623393B63302E32
          2D302E322C302E352D302E332C302E372D302E3563302E322D302E322C302E34
          2D302E342C302E352D302E3663302E312D302E322C302E322D302E352C302E32
          2D302E3863302D302E352D302E312D302E382D302E342D312E31632D302E332D
          302E332D302E362D302E342D312E312D302E3420202623393B2623393B632D30
          2E332C302D302E352C302E312D302E372C302E32632D302E322C302E312D302E
          342C302E332D302E352C302E35632D302E312C302E322D302E322C302E352D30
          2E332C302E37632D302E312C302E332D302E312C302E362D302E312C302E3848
          313120202623393B2623393B4331312C32332E342C31312E312C32322E392C31
          312E322C32322E347A204D32362E332C32342E3163302E322C302C302E352D30
          2E312C302E372D302E3263302E322D302E312C302E342D302E322C302E352D30
          2E3463302E312D302E322C302E322D302E342C302E322D302E3720202623393B
          2623393B63302D302E342D302E312D302E372D302E342D302E39632D302E332D
          302E322D302E362D302E332D312D302E33632D302E352C302D302E392C302E32
          2D312E322C302E35632D302E332C302E332D302E342C302E372D302E342C312E
          32682D312E3963302D302E352C302E312D302E392C302E332D312E3420202623
          393B2623393B63302E322D302E342C302E342D302E382C302E372D312E316330
          2E332D302E332C302E372D302E352C312E312D302E3763302E342D302E322C30
          2E392D302E322C312E342D302E3263302E342C302C302E382C302E312C312E32
          2C302E3263302E342C302E312C302E382C302E332C312E312C302E3520202623
          393B2623393B63302E332C302E322C302E362C302E352C302E382C302E387330
          2E332C302E372C302E332C312E3163302C302E352D302E312C302E392D302E33
          2C312E32632D302E322C302E342D302E362C302E362D312C302E37763063302E
          362C302E312C312C302E342C312E332C302E3820202623393B2623393B63302E
          332C302E342C302E352C302E392C302E352C312E3463302C302E352D302E312C
          312D302E332C312E33632D302E322C302E342D302E352C302E372D302E382C31
          632D302E332C302E332D302E372C302E352D312E322C302E36632D302E342C30
          2E312D302E392C302E322D312E342C302E3220202623393B2623393B632D302E
          362C302D312E312D302E312D312E352D302E32632D302E352D302E322D302E39
          2D302E342D312E322D302E37632D302E332D302E332D302E362D302E372D302E
          372D312E31632D302E322D302E342D302E332D302E392D302E322D312E356831
          2E3963302C302E332C302E312C302E352C302E312C302E3720202623393B2623
          393B63302E312C302E322C302E322C302E342C302E332C302E3663302E312C30
          2E322C302E332C302E332C302E352C302E3463302E322C302E312C302E352C30
          2E322C302E382C302E3263302E352C302C302E382D302E312C312E322D302E34
          63302E332D302E332C302E352D302E362C302E352D312E3120202623393B2623
          393B63302D302E342D302E312D302E362D302E322D302E38632D302E312D302E
          322D302E332D302E332D302E362D302E34632D302E322D302E312D302E352D30
          2E312D302E372D302E32632D302E332C302D302E352C302D302E382C30762D31
          2E344332352E382C32342E312C32362C32342E312C32362E332C32342E317A22
          2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C650050726F66696C655265706F72743B507269
          6E7450726F66696C655265706F72743BFFB8F6F30000004E49444154785EE591
          410A00200804FB609F0A1FD5D5976D0875CA5408EC9030E0611D162C008ED4D6
          21CC5DCDA8471647011141F0042BA70A64020D4C81478280992D7E6C90FC85F7
          82209BE08A014CE535C8BC24CB3C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002D744558745469746C6500466C6F6174696E674F626A65637446696C
          6C436F6C6F723B466C6F6174696E674F626A6563743BBF70600F000002574944
          4154785EA5925D48536118C7FFE79CCD69CED9C89C95A38F9B2EB4A6A64B4D4C
          2C96A625D6451FD007652BBAF0A3222149D909CA4AECA2A451040B4409C21B25
          67454C88C2BC0845E82224A9D96C0ACDBEE68EEE3C31CE399E43445EF4833FE7
          3DCFFBBE3F78791E06009EBA76010C1671340F4875BE8CA40A01604020382E7B
          A1450700426401313E0C8D5358886EE9B95892CDB26C91A3D95B0340EC6B2A25
          D9F1777ACE15838870A3D89AD356944E2FDA4F466921408F6A8B3A01C4016062
          677ACE4BE7B49190DCBA073579A79F5D3F4EAE9C54FAF4A69BA2E109F238EDDD
          009601E000B0D01013B0CAE5DB876D4E738AD56DDE908FECBD55B873F40C4263
          3CAA2FB51EEC68C99CB9EA5BF799F7A5DF3DD0BCC2A43E4632726DFB329C99F9
          051D552E37B22A7663E7B14DB8E0A940E8FD34C63D4D28DF5693A0F7C6A5FEFC
          3EEF4CB3B1F701E8B4025D3C88B71F6A00C3E8217CE9C58F491F42EFA6117CFB
          110C3B8FC1CE7B34F624D410989AC3AF3961BFADD260D20AC460287C6BF87117
          C2FE2ECC4EF461663408FFD004384EC4AB91AFD4FF3A50FF7034D835E98FE0DB
          ACC04584A81E328AC4D85868BDD2DB984523ED79D47F642DBDACDB4837CBAD62
          A5D5581BDB07909C718AA5ED8DBA11F99F2122AD04A6BADC55D7DC65E9347062
          3DF12516B174657C3D8024793FD1E2C0A0D98E6AB9B56A1BF9C2358A64F9D9CD
          96D696ADABA70A92F58B97F7A41820B73141990B59202D5A72D30086816B38C0
          0130C8890098DB61E24468783EBB0015D9249B1935D27C2C51638928C0CAEF48
          FC478C7F24498D3A1046C5BAE457BB565AF13FFC060A4EE9688669A38D000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000011744558745469746C650046696C6C3B436F6C6F723B9C
          37B6DE000000A549444154785EED90B10A02310C86CF5570F449FA1C0AB7381D
          E22838B9CA4D6D67DFC0F55C6F10F46D7C02B7DB637EE810230DA5383A7C2429
          FC5F431A22FA20C6E8184A38BC597C0B5290E9D0A75A2520815BF94723B00552
          728AE77DEB6FB4F6F7898323B3CC0A10923FA247DD86EB9105E8C1C51220DC21
          A4D985E1B0F123042F66660974586F06C9BC7803CCEA90CFE21BE839D15B0219
          A2CC4D165A50C32F057FC11B5C0B990E8462DEF60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D22436C6F7365223E0D0A09093C7061
          746820636C6173733D225265642220643D224D31362C3243382E332C322C322C
          382E332C322C313673362E332C31342C31342C31347331342D362E332C31342D
          31345332332E372C322C31362C327A204D32332E372C32312E3763302E342C30
          2E342C302E342C312C302C312E346C2D302E362C302E3620202623393B262339
          3B632D302E342C302E342D312C302E342D312E342C304C31362C31386C2D352E
          372C352E37632D302E342C302E342D312C302E342D312E342C306C2D302E362D
          302E36632D302E342D302E342D302E342D312C302D312E344C31342C31366C2D
          352E372D352E37632D302E342D302E342D302E342D312C302D312E3420202623
          393B2623393B6C302E362D302E3663302E342D302E342C312D302E342C312E34
          2C304C31362C31346C352E372D352E3763302E342D302E342C312D302E342C31
          2E342C306C302E362C302E3663302E342C302E342C302E342C312C302C312E34
          4C31382C31364C32332E372C32312E377A222F3E0D0A093C2F673E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001E744558745469746C65005269636845646974436C6561725461626C
          655374796C653BCC726CCB000002F949444154785E5592616855651CC67FEFB9
          F76C764DD966F36E9399CE55BA79B7B96C6AB619CC598B22625088D0C7C0302C
          889C84561FCC2F496C2A038BD18731883E64231CB2495356235B732D5A0E861A
          AB737787DC2BBBBBD773EF39E7FD7739DDCBE88197FFF387F7F93FCF9FF755EF
          F54F8D1901E3008008E05741F00922ABBD68C173DD1B7D6FEF6D1711172098B6
          9D03C7DF88F822057CF7E3022F3F5B4D5ECFF7B9FEA57DF91E383730D5060480
          FF06B8AE26ED68EEC41F82407C39CB6C2C9D7755C45732CC2EA500D852BA06C7
          F1000C80FC008FE19CCB8354B6E0CACFBF5A28A4E0CAE42DCB27732193DC7D00
          35FD7A27A23586E3689EDFBD895D0D153445C288D67E6DD81926B2B3024F0B91
          FA3007736BBCD95E43D7FECD004636E3F03077FC04AED638AE46C017B89E4644
          2168B42794AF35297F2440E6DA104DD787196ADF776ACFD0B50F014FBDF6C9A8
          6CAFDD4832ED8002048402159EA85CC7B67088F5BF5C651BF7D9D0DCC89D9131
          66AE8C9C3D3C31F551D0753C9E6BAE62216123C0CCEFD15CF44A9F57AD3731D2
          361BA647A8CA5A94EC780AF77E8C2D2D4DD846D1C9F3CB6943759E1C96B78EEC
          06400B8C4F2EB0FFE94D3C1632292D56C4BE1E60ABB3C8C61DB590F54D306BEB
          983FD3CBFCA245309D4CDEE8ED9F6823FF617CA452D43D5E827D7B8683CBF728
          DB5E839B488008665D23B3DD67595A49321F5BFA5C0121C05C7D5B1450D47562
          F074E3330D473B8A2C6AFEBA895250D4D0CCDCC73DFCFD20CE54F49F0B67A256
          B7EF5A38473E1D05305F3DF14D6FF7C0B45CFA292A17C7A3F2C3E065895FBD2C
          13AD8764B0BE498E95965D041E058C203E0AC9330041DB09BC13AE2E2799F100
          B0EAF6F06DFF15762D46B96EDDBDF4556AA51B481F368BB5C12A98FBED3680FE
          F3E644CFF8E82419C7A36C2D9CEB1963D472B99032BFCC893F0052E37B0FE9A4
          EBF2BF15AA5B4F0118C0BACA9677CFD777F5C993AFF4C8D68ECFA4A2E5FD2F80
          12C0E854062FA0E840A1448402CA1B8FE3790E893FFA0CA018580304000DD880
          FD2286F658D5FC0B7404837728D1CCDD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C65004578706F72743B4353563B4578706F7274
          546F4353563B61685AF00000020C49444154785E8D933D6B544114869FB9C68F
          C2CA5A89105289A8681209C88AC108011BFD07C982010329446C244534454A21
          88B0F90B2E22229242C807BB91A028961A4940BBC5147EC4ECCE9C57380C97C5
          3472997BDEB99CF3CC7B997302F0EFA28CFB3580802849003D4098AFADBF2E42
          510110427202267F230590210231FE599D99BA3C027432800285CA9DEA40C92F
          C5FE2D738F1B978003DD80106520D86B270428439485080838722890A2011400
          2520B513004902511641C0D941191C88C97343378014132094010AC1B5726AD6
          0EAB0CF53207D0EDA0930C01332B9B2C6FB7200AC9308B98EB845942D1FC7BFF
          83FACFFED9A760A95E00C11D002BDB3B54CF1EA731314CA33A8C24AA177A599F
          BC4263720461AC4F5D03196FA6C730B31BEEA0DD4948208B8C9F39C1506D0DAC
          83A2183F7F92C185257760660E953BC67501D0C90E64C21F455214A6486D6393
          E6EDAB5407FA72A130093340C90121A5EC40C263F434DF2F363F33F8E8251383
          7DBE7FF7F53BD58BFDBCFFD642829E0C002F4E2C6E6CD1BC554188A185253FDD
          10B5E62777F0FCE316F747CF31FBEA2D921180A3E3F79EFD78F2F03AD32F3EB0
          FAA5855904FF67F3E5D653BE090999504C48A95EF68180F9D1D3E52CE47BCFDA
          7284D5C62637C74E1D93B493FB80D8DEFDBD3C71B75E3141911BC704210859E8
          EA4ED1DEFBB506B4BB47B5000E0307FF63A4958768575202F80BB14381F3D6DB
          90F20000000049454E44AE426082}
        FileName = 'Images\Export\ExportToCSV_16x16.png'
        Keywords = 'Export;ExportToCSV'
      end>
  end
  object qHersteller: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'SELECT [kHersteller]'
      '      ,[cName]'
      '  FROM [eazybusiness].[dbo].[tHersteller]'
      '')
    Left = 784
    Top = 272
  end
  object PopupMenu: TPopupMenu
    Images = cxImageList
    Left = 64
    Top = 249
    object pmRefresh: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 0
      OnClick = pmRefreshClick
    end
  end
  object FDQuery: TFDQuery
    AutoCalcFields = False
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      '')
    Left = 952
    Top = 289
  end
  object dsHersteller: TDataSource
    DataSet = qHersteller
    Left = 712
    Top = 272
  end
  object dsWarengruppe: TDataSource
    DataSet = qWarengruppe
    Left = 712
    Top = 208
  end
  object qWarengruppe: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'SELECT  [kWarengruppe]'
      '      ,[cName]'
      '  FROM [eazybusiness].[dbo].[tWarengruppe]'
      '')
    Left = 784
    Top = 208
  end
  object qArtike: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'SELECT art.[kArtikel]'
      ',artname.cName'
      '  FROM [eazybusiness].[dbo].[tArtikel] as art'
      '   left Join ('
      '  SELECT [kArtikel]'
      '      ,[kSprache]'
      '      ,[kPlattform]'
      '      ,[kShop]'
      '      ,[cName]'
      '  FROM [eazybusiness].[dbo].[tArtikelBeschreibung]'
      '  where kSprache = 1'
      '  and kPlattform = 1'
      '  ) as ArtName'
      '  ON art.kArtikel = ArtName.kArtikel'
      '  where nIstVater = 1'
      '  and kStueckliste = 0'
      '')
    Left = 656
    Top = 200
  end
  object dsArtike: TDataSource
    DataSet = qArtike
    Left = 656
    Top = 136
  end
  object FDTable: TFDTable
    AfterPost = FDTableAfterPost
    IndexFieldNames = 'id'
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evAutoFetchAll]
    ResourceOptions.AssignedValues = [rvEscapeExpand, rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = '[Umlagerung].[dbo].[pArtikel] '
    UpdateOptions.KeyFields = 'id'
    TableName = 'Umlagerung.dbo.[pArtikel]'
    Left = 640
    Top = 369
    object FDTableu: TBooleanField
      FieldName = 'u'
      KeyFields = 'id'
      Origin = 'u'
    end
    object FDTablep: TBooleanField
      FieldName = 'p'
      KeyFields = 'id'
      Origin = 'p'
    end
    object FDTablekArtikel: TIntegerField
      FieldName = 'kArtikel'
      Origin = 'kArtikel'
      ReadOnly = True
    end
    object FDTablecArtNr: TWideStringField
      FieldName = 'cArtNr'
      Origin = 'cArtNr'
      ReadOnly = True
      Size = 200
    end
    object FDTablecName: TWideStringField
      FieldName = 'cName'
      Origin = 'cName'
      ReadOnly = True
      Size = 510
    end
    object FDTableFBA: TWideStringField
      FieldName = 'FBA'
      Origin = 'FBA'
      ReadOnly = True
      Size = 200
    end
    object FDTableUMenge: TIntegerField
      FieldName = 'U-Menge'
      Origin = '[U-Menge]'
    end
    object FDTableFBABestand: TIntegerField
      FieldName = 'FBA-Bestand'
      Origin = '[FBA-Bestand]'
      ReadOnly = True
    end
    object FDTableFBABestandaktuell: TIntegerField
      FieldName = 'FBA Bestand aktuell'
      Origin = '[FBA Bestand aktuell]'
      ReadOnly = True
    end
    object FDTableFbmBestand: TIntegerField
      FieldName = 'Fbm-Bestand'
      Origin = '[Fbm-Bestand]'
      ReadOnly = True
    end
    object FDTableFBAEingang: TIntegerField
      FieldName = 'FBA-Eingang'
      Origin = '[FBA-Eingang]'
      ReadOnly = True
    end
    object FDTableReserviert: TIntegerField
      FieldName = 'Reserviert'
      Origin = 'Reserviert'
      ReadOnly = True
    end
    object FDTableDefekt: TIntegerField
      FieldName = 'Defekt'
      Origin = 'Defekt'
      ReadOnly = True
    end
    object FDTableFBA030T: TIntegerField
      FieldName = 'FBA 0-30T'
      Origin = '[FBA 0-30T]'
      ReadOnly = True
    end
    object FDTableFBA3060T: TIntegerField
      FieldName = 'FBA 30-60T'
      Origin = '[FBA 30-60T]'
      ReadOnly = True
    end
    object FDTableFBA6090T: TIntegerField
      FieldName = 'FBA 60-90T'
      Origin = '[FBA 60-90T]'
      ReadOnly = True
    end
    object FDTableFBM030T: TIntegerField
      FieldName = 'FBM 0-30T'
      Origin = '[FBM 0-30T]'
      ReadOnly = True
    end
    object FDTableFBM3060T: TIntegerField
      FieldName = 'FBM 30-60T'
      Origin = '[FBM 30-60T]'
      ReadOnly = True
    end
    object FDTableUmlagMenge: TIntegerField
      FieldName = 'UmlagMenge'
      Origin = 'UmlagMenge'
      ReadOnly = True
    end
    object FDTableAmaBestAlter: TIntegerField
      FieldName = 'AmaBestAlter'
      Origin = 'AmaBestAlter'
      ReadOnly = True
    end
    object FDTableAmaPreis: TFloatField
      FieldName = 'AmaPreis'
      Origin = 'AmaPreis'
      ReadOnly = True
    end
    object FDTablekWarengruppe: TIntegerField
      FieldName = 'kWarengruppe'
      Origin = 'kWarengruppe'
      ReadOnly = True
    end
    object FDTablekHersteller: TIntegerField
      FieldName = 'kHersteller'
      Origin = 'kHersteller'
      ReadOnly = True
    end
    object FDTablekVaterArtikel: TIntegerField
      FieldName = 'kVaterArtikel'
      Origin = 'kVaterArtikel'
      ReadOnly = True
    end
    object FDTablecBarcode: TWideStringField
      FieldName = 'cBarcode'
      Origin = 'cBarcode'
      Size = 510
    end
    object FDTableid: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      Precision = 18
      Size = 0
    end
    object FDTableUmlagDatum: TDateField
      FieldName = 'UmlagDatum'
      Origin = 'UmlagDatum'
    end
    object FDTableRQty: TIntegerField
      FieldName = 'RQty'
    end
    object FDTableDatum: TDateField
      FieldName = 'Datum'
    end
    object FDTableKarton: TFloatField
      FieldName = 'Karton'
    end
    object FDTableVPEMenge: TFloatField
      FieldName = 'VPEMenge'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14536130
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindowText
    end
    object StyleHeader: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object kArtikel: TcxStyle
    end
    object cArtNr: TcxStyle
    end
    object cName: TcxStyle
    end
    object FBA: TcxStyle
    end
    object U_Menge: TcxStyle
    end
    object FBA_Bestand: TcxStyle
    end
    object FBA_Bestand_aktuell: TcxStyle
    end
    object Fbm_Bestand: TcxStyle
    end
    object FBA_Eingang: TcxStyle
    end
    object Reserviert: TcxStyle
    end
    object Defekt: TcxStyle
    end
    object FBA_0_30T: TcxStyle
    end
    object FBA_30_60T: TcxStyle
    end
    object FBA_60_90T: TcxStyle
    end
    object FBM_0_30T: TcxStyle
    end
    object FBM_30_60T: TcxStyle
    end
    object UmlagMenge: TcxStyle
    end
    object UmlagDatum: TcxStyle
    end
    object AmaBestAlter: TcxStyle
    end
    object AmaPreis: TcxStyle
    end
    object id: TcxStyle
    end
    object u: TcxStyle
    end
    object p: TcxStyle
    end
    object ContentEven: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyleMenge: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object qReportA4: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use [Umlagerung];'
      ''
      ''
      
        'SELECT a.[id],a.[cName],a.[U-Menge] UMenge, a.cBarcode, (a.[U-Me' +
        'nge] / a.VPEMenge) as Kartons'
      '  FROM [pArtikel] a (nolock) '
      ' inner join tMark t (nolock) '
      '         on t.id = a.id'
      ' where a.[p] = 1'
      ' order by a.[cName]')
    Left = 232
    Top = 392
  end
  object dsReportA4: TDataSource
    DataSet = qReportA4
    Left = 304
    Top = 392
  end
  object ppDBreportA4: TppDBPipeline
    DataSource = dsReportA4
    UserName = 'DBreportA4'
    Left = 480
    Top = 390
  end
  object ppReport39x39: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline39
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 38000
    PrinterSetup.mmPaperWidth = 38000
    PrinterSetup.PaperSize = 256
    PrinterSetup.DevMode = {00000000}
    Template.FileName = 'D:\dev\Umlagerung\Win32\rep39x39.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 392
    Top = 326
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline39'
    object ppHeaderBand1: TppHeaderBand
      Visible = False
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 38000
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'DBBarCode1'
        AlignBarCode = ahCenter
        BarCodeType = bcEAN_13
        BarColor = clBlack
        Border.mmPadding = 0
        DataField = 'cBarcode'
        DataPipeline = ppDBPipeline39
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline39'
        mmHeight = 17060
        mmLeft = 1588
        mmTop = 18855
        mmWidth = 36015
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 300
        mmWideBarRatio = 50800
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'cName'
        DataPipeline = ppDBPipeline39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline39'
        mmHeight = 18007
        mmLeft = 1588
        mmTop = 1074
        mmWidth = 35983
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Visible = False
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReportA4: TppReport
    AutoStop = False
    DataPipeline = ppDBreportA4
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 392
    Top = 390
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBreportA4'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'cName'
        Color = clInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 0
        mmTop = 8202
        mmWidth = 121444
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'U-Menge'
        Color = clInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 121444
        mmTop = 8202
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Kartons'
        Color = clInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 159279
        mmTop = 8202
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background2.Brush.Color = clBtnFace
      Background2.Brush.Style = bsSolid
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'cName'
        DataPipeline = ppDBreportA4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBreportA4'
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 794
        mmWidth = 120386
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'UMenge'
        DataPipeline = ppDBreportA4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBreportA4'
        mmHeight = 5027
        mmLeft = 121444
        mmTop = 794
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Kartons'
        DataPipeline = ppDBreportA4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBreportA4'
        mmHeight = 5027
        mmLeft = 159279
        mmTop = 794
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 188384
        mmTop = -529
        mmWidth = 2381
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dsReport39x39: TDataSource
    DataSet = qReport39x39
    Left = 304
    Top = 328
  end
  object qReport39x39: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use [Umlagerung];'
      ''
      'declare @i  int'
      '       ,@i2 int'
      '       ,@ID int'
      '       '
      'declare @T2 table(ID int)'
      ''
      'SELECT @ID = min(a.id)'
      '  FROM [pArtikel] a (nolock) '
      ' inner join tMark t (nolock) '
      '         on t.id = a.id  '
      ' where a.[p] = 1'
      ''
      'while @ID is not null'
      'begin    '
      '  SELECT @i = [U-Menge]'
      '    FROM [pArtikel] a (nolock) '
      '   where ID = @ID'
      ''
      '  set @i2 = 0'
      '  while @i2<@i'
      '  begin'
      '    insert into @T2(ID) '
      '    values (@ID)'
      '    '
      '    set @i2 = @i2 + 1'
      '  end'
      ''
      '  SELECT @ID = min(a.id)'
      '    FROM [pArtikel] a (nolock) '
      '   inner join tMark t (nolock) '
      '           on t.id = a.id  '
      '   where a.ID > @ID'
      '     and a.[p] = 1'
      'end'
      ''
      'SELECT a.[id], a.[cName], a.[U-Menge] UMenge, a.cBarcode'
      '  FROM [pArtikel] a (nolock) '
      ' inner join @T2 t'
      '         on t.id = a.id'
      ' where [p] = 1'
      ' order by a.[cName]'
      '')
    Left = 232
    Top = 328
  end
  object ppDBPipeline39: TppDBPipeline
    DataSource = dsReport39x39
    UserName = 'DBreport39x39'
    Left = 480
    Top = 326
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection
    Left = 392
    Top = 182
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = Grid
    PopupMenus = <
      item
        GridView = TableView
        HitTypes = [gvhtGridNone, gvhtNone, gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = PopupMenu
      end
      item
        GridView = TableView
        HitTypes = [gvhtColumnHeader]
        Index = 1
        PopupMenu = pmGridHeader
      end>
    OnPopup = cxGridPopupMenu1Popup
    Left = 64
    Top = 190
  end
  object pmGridHeader: TPopupMenu
    Images = cxImageList
    Left = 64
    Top = 305
    object setColor: TMenuItem
      Caption = 'Farblich hervorheben'
      ImageIndex = 6
      OnClick = setColorClick
    end
    object ClearColor: TMenuItem
      Caption = 'Klare Farbe'
      ImageIndex = 7
      OnClick = ClearColorClick
    end
  end
  object pmColorGallery: TPopupMenu
    Images = cxImageList
    Left = 64
    Top = 361
    object MenuItem1: TMenuItem
      Caption = 'Close'
      ImageIndex = 8
      OnClick = MenuItem1Click
    end
  end
end
