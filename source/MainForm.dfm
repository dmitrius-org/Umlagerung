object Form1: TForm1
  Left = 0
  Top = 0
  Caption = ' Umlagerung'
  ClientHeight = 633
  ClientWidth = 1444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1444
    Height = 633
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsUmlagerung
    Properties.CustomButtons.Buttons = <>
    Properties.Images = cxImageList1
    ClientRectBottom = 629
    ClientRectLeft = 4
    ClientRectRight = 1440
    ClientRectTop = 26
    object tsUmlagerung: TcxTabSheet
      Caption = ' Umlagerung'
      ImageIndex = 1
      OnShow = tsUmlagerungShow
    end
    object tsLink: TcxTabSheet
      Caption = 'Link'
      ImageIndex = 4
      OnShow = tsLinkShow
    end
    object tsDeleted: TcxTabSheet
      Caption = 'Ausgeblendete Artikeln einblenden'
      ImageIndex = 3
      OnShow = tsDeletedShow
    end
    object tsSettings: TcxTabSheet
      Caption = 'Settings'
      ImageIndex = 0
      OnShow = tsSettingsShow
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMinimize = ApplicationEventsMinimize
    Left = 44
    Top = 356
  end
  object TrayIcon: TTrayIcon
    Icons = cxImageList1
    IconIndex = 2
    OnClick = TrayIconClick
    Left = 41
    Top = 424
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    DrawingStyle = dsTransparent
    FormatVersion = 1
    Left = 148
    Top = 355
    Bitmap = {
      494C010105000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000020000
      000A000000140000001B000000170000000D000000060000000E0000001D0000
      00250000001F0000001100000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000020000000E130F
      0B7C3D2F23CD634A37F93C2E22D0140F0B8600000029140F0A8B3C2C1FD75B45
      30FA3B2C20DA140F0A930000001D000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007130F0B789A89
      7CFCC6BFB8FFE3E1DEFFC3BCB5FF958577FD32251BC9928375FDBEB6AFFFDAD7
      D5FFBBB3ADFF8D7D6FFD140F0A92000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E423226CACAC1
      BBFF9F8A79FF7C604BFF775D47FF735844FF6E5440FF6A513CFF674D39FF644B
      36FF857263FFBCB3ADFF3C2C1FD90000001F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000303010032735743FDE8E6
      E4FF896D55FFA8A29DFF826550FFFFFFFFFFDAD8D5FFD4D3D1FF795E48FF9B95
      90FF674D39FFDBD8D6FF5C4632FA000000230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C492618AC885C45FFCDC5
      BEFFA89382FF8D7059FF896C55FF866953FF81644FFF7C604BFF785D47FF7358
      43FF8D7868FFBFB7B0FF3C2C20D50000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000170C0664C56A44FEA56546FFA494
      85FFCDC4BEFFE8E6E4FFCBC2BCFF9E8E80FF734C36FF9C8B7CFFC5BCB6FFE0DE
      DCFFC2B9B3FF948375FD140F0B870000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B2715AAD17A4CFF9E703EFF6C5B
      32FF5E5835FF735B44FF6D573AFF975F41FFBF6743FF6C552CFF5F5231FF6C51
      3CFF704B39FC16100C8E00000014000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000884627DDA77E45FF53681CFFC193
      5BFFBE9159FFC5905AFFD6945EFFE2925EFFCE7C4EFF3F6A10FF2E8F27FF5580
      43FFB7614EFD0000002700000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B46034FB617026FF9D8C4FFFAE9D
      5AFFE3BC79FFF2BF7DFFF1B677FFEEA86EFFCE8B57FF438026FF49B25AFF6690
      5BFFC86D55FF0000002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A4928DC627B29FF3B721CFF2D7D
      14FFA5A45FFFE9C986FFF3C684FFF1BA79FFD59963FF678744FF5EC886FF7C8B
      5FFFBD674DF90000001A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B2816A592853FFF288817FF2797
      1BFF42892AFFAFAA6AFFE5C785FFF1C382FFD8A56AFF80955CFF7E8F5FFFB872
      4FFF864835D80000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000160C065BB7703EFC6D9C42FF42A1
      37FF5DB555FF77B96DFFA9AA6FFFDEC07DFFB6985AFF417C13FF8E7835FFCD76
      51FE26140D800000000900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000053C201194B4834BFF96B7
      72FF81AE78FF94B087FFA8B592FFA39C5CFF3B8212FF5A7E22FFC87E51FF5A32
      21B7000000110000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010101001C3C201194BA76
      45FCC4AE82FFB6B38EFFBDBFA7FF8A9B66FF8E8E4CFFBE7B4AFE4B2A19A90201
      0027000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000100000005160C
      065B4B2816A58A4928DCB56135FB894727DD4B2715AA170C06640000000C0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      18771C1C1C7F1C1C1C7F1C1C1C7F191919790000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF666666F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C140B65B47E4AFC160F09590000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017171774717171FF717171FF000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      00002222228E6E6E6EFC262626950000000000000000000000002222228E6E6E
      6EFC2626269500000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0A06484F38
      21A80906033966472ABEB8824CFF634528BB0A07043E563C24AF0F0A06490000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000606063F656565F1717171FF000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      0000676767F4717171FF6E6E6EFC000000000000000000000000676767F47171
      71FF6E6E6EFC00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000553C24AEB882
      4CFFB6804CFEB8824CFFB8824CFFB8824CFFB6804CFEB8824CFF4E3720A70000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606063F5E5E5EE90606063F17171774000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      00001F1F1F86676767F42222228E0000000000000000000000001F1F1F866767
      67F42222228E00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF0000000000000000000000000B07043FB580
      4BFDB6804CFE46311D9E150E085746311D9EB6804CFEB5804BFD0906043A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001414146C0606063F0000000000000000000000001818
      18751C1C1C7F1C1C1C7F1C1C1C7F181818770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF00000000000000001610095A624528BAB882
      4CFF412D1B98000000000000000000000000412D1B98B8824CFF67482BBF1C14
      0B6500000000000000000000000000000000C0690FF1D77610FFD77610FFD776
      10FFD77610FFC66D0FF500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000000000000000000000000001B07B48F9B8824CFFB882
      4CFF160F0959000000000000000000000000160F0959B8824CFFB8824CFFB07B
      48F900000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000606060EB717171FF7171
      71FF717171FF717171FF717171FF636363EE0000000000000000000000000000
      0000000000000000000000000000000000000000000018110A5D644629BCB882
      4CFF412D1B98000000000000000000000000412D1B98B8824CFF604328B8160F
      095900000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000129EE3F114B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF13A3EBF50000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000906043AB580
      4BFDB6804CFE46311D9E150E085746311D9EB6804CFEB6804CFE0B0804400000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF666666F20000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C3620A5B882
      4CFFB5804BFDB8824CFFB8824CFFB8824CFFB5804BFDB8824CFF593F25B20000
      0000100B074D000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0A0648573D
      24B00A07043E634528BBB8824CFF644629BC090603394B3520A42E2013802E20
      1380B8824DFF2E201380100B074D00000000BB670EEED77610FFD77610FFD776
      10FFD77610FFC16A0FF200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000717171FF000000000000
      00000929018409290184000000005E5E5EE80000000000000000717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000000000000000
      0000000000001610095AB07C49FA1B130B6300000000000000002E201380B882
      4DFF604328B8B8824DFF2E201380000000000000000000000000000000000000
      0000000000000000000018181877080808450000000000000000000000001919
      19781C1C1C7F1C1C1C7F1C1C1C7F1A1A1A7A00000000717171FF717171FF7171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000717171FF000000000929
      0184197502DD197502DD092901840303032B0000000000000000717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000100B074DB8824DFF6043
      28B800000000604328B8B8824DFF100B074D0000000000000000000000000000
      000000000000000000000505053A5E5E5EE8080808451E1E1E84000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      00000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000717171FF000000001975
      02DD0002001E0002001E197502DD092901840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E201380B882
      4DFF604328B8B8824DFF2E201380000000000000000000000000000000000000
      00000000000000000000000000000505053A686868F5717171FF000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      0000000000001198DCED14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF129EE3F100000000000000000000000000000000717171FF000000000002
      001E00000000000000000002001E197502DD0929018400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100B074D2E20
      1380B8824DFF2E201380100B074D000000000000000000000000000000000000
      00000000000000000000000000001E1E1E84717171FF717171FF000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000606060EB717171FF7171
      71FF717171FF717171FF2D2D2DA100020021197502DD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000100B074D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      18761C1C1C7F1C1C1C7F1C1C1C7F191919780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002001E00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 23265428
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650053657474696E67733B0E6B2757000000D3
          49444154785EA5D0B18AC2401485E1F1B16211B7748BD9560C5849DE63F129B6
          B252B452B10A46F4B9B26C72FD8B1391214E942DBE0C17720E97EBCCEC2D5F8B
          C2E33EBF1BFC86E9F570CEF3E9A382365CB4252F17686D85995502FF2C94E117
          7315BCB4C11807A428613823C14A81E80DD60AD57A2D988FDAC4EB850A64A870
          8325267A1BF9080F8B7BC14CEB1A7EE05A9A0D05A65D0503540A433F896693EA
          D906194E3D1B5C917716C82872831A43B858C10EA680C9E3BCE92B18638B0417
          854AA4D8E3335610CAF1171EB4B380CFBFDC00878E26CDBB1558410000000049
          454E44AE426082}
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
          3744373B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E353B7D3C2F7374796C653E0D0A3C672069643D224D616E6167655F52656C
          6174696F6E73223E0D0A09093C6720636C6173733D22737430223E0D0A090909
          3C7061746820636C6173733D22426C61636B2220643D224D33312C3332682D38
          632D302E352C302D312D302E352D312D31762D3863302D302E352C302E352D31
          2C312D31683863302E352C302C312C302E352C312C3176384333322C33312E35
          2C33312E352C33322C33312C33327A204D33322C39563120202623393B262339
          3B2623393B63302D302E362D302E352D312D312D31682D38632D302E352C302D
          312C302E342D312C31763863302C302E362C302E352C312C312C316838433331
          2E352C31302C33322C392E362C33322C397A222F3E0D0A09093C2F673E0D0A09
          093C7061746820636C6173733D22426C75652220643D224D31312C3232483163
          2D302E362C302D312D302E352D312D3156313163302D302E362C302E342D312C
          312D3168313063302E362C302C312C302E342C312C317631304331322C32312E
          352C31312E362C32322C31312C32327A222F3E0D0A09093C7061746820636C61
          73733D22426C61636B2220643D224D32302C3276366C2D322E332D322E336C2D
          342C346C2D312E342D312E346C342D344C31342C324832307A204D31372E372C
          32362E336C2D342D346C2D312E342C312E346C342C344C31342C33306836762D
          364C31372E372C32362E337A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
          696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
          23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
          2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
          6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
          393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
          6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
          393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C672069643D224F72646572223E0D0A09
          093C7061746820636C6173733D22426C61636B2220643D224D32332C32346331
          2E372C302C332C312E332C332C33732D312E332C332D332C33732D332D312E33
          2D332D335332312E332C32342C32332C32347A204D382C323056313056384832
          76326834763132683232762D3248387A204D31312C323420202623393B262339
          3B63312E372C302C332C312E332C332C33732D312E332C332D332C33732D332D
          312E332D332D3353392E332C32342C31312C32347A222F3E0D0A09093C706174
          6820636C6173733D2259656C6C6F772220643D224D31312C313868313463302E
          362C302C312D302E352C312D31563563302D302E352D302E342D312D312D3148
          3131632D302E362C302D312C302E352D312C317631324331302C31372E352C31
          302E342C31382C31312C31387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
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
          63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
          333B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E59656C6C6F777B66696C
          6C3A234646423131353B7D262331333B262331303B2623393B2E426C75657B66
          696C6C3A233131373744373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D224974656D54797065436865636B6564223E0D0A09093C673E0D0A0909093C
          673E0D0A090909093C7265637420783D2232302220793D22382220636C617373
          3D22426C61636B222077696474683D22313022206865696768743D2234222F3E
          0D0A090909093C7265637420783D2232302220793D2232322220636C6173733D
          22426C61636B222077696474683D22313022206865696768743D2234222F3E0D
          0A090909093C7061746820636C6173733D22426C61636B2220643D224D31352C
          31384833632D302E352C302D312C302E352D312C3176313263302C302E352C30
          2E352C312C312C3168313263302E352C302C312D302E352C312D315631394331
          362C31382E352C31352E352C31382C31352C31387A204D31342C333048345632
          3020202623393B2623393B2623393B2623393B6831305633307A222F3E0D0A09
          0909093C7061746820636C6173733D22426C61636B2220643D224D31342C3130
          2E385631344834563468382E326C322D32483343322E352C322C322C322E352C
          322C3376313263302C302E352C302E352C312C312C3168313263302E352C302C
          312D302E352C312D3156382E384C31342C31302E387A222F3E0D0A0909093C2F
          673E0D0A0909093C673E0D0A090909093C7265637420783D2232302220793D22
          382220636C6173733D22426C61636B222077696474683D223130222068656967
          68743D2234222F3E0D0A090909093C7265637420783D2232302220793D223232
          2220636C6173733D22426C61636B222077696474683D22313022206865696768
          743D2234222F3E0D0A090909093C7061746820636C6173733D22426C61636B22
          20643D224D31352C31384833632D302E352C302D312C302E352D312C31763132
          63302C302E352C302E352C312C312C3168313263302E352C302C312D302E352C
          312D315631394331362C31382E352C31352E352C31382C31352C31387A204D31
          342C3330483456323020202623393B2623393B2623393B2623393B6831305633
          307A222F3E0D0A090909093C7061746820636C6173733D22426C61636B222064
          3D224D31342C31302E385631344834563468382E326C322D32483343322E352C
          322C322C322E352C322C3376313263302C302E352C302E352C312C312C316831
          3263302E352C302C312D302E352C312D3156382E384C31342C31302E387A222F
          3E0D0A0909093C2F673E0D0A09093C2F673E0D0A09093C706F6C79676F6E2063
          6C6173733D22477265656E2220706F696E74733D22362C3520362C382031302C
          31322031382C342031382C312031302C39202623393B222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000014744558745469746C650048797065726C696E6B3B5765623B06FEA0
          CE0000036F49444154785E5DD26B4C5B651C06F0BA8966662ED9C4B828642A59
          28B30C033B2D816119D0C2904BE95837DA420FAC3046D34E2CD1B6A3B4AB16C6
          2A05A183192E8B73CDA099ECC25A06AD2DB7029B61BA281B2223EAD4E81713F4
          D336CAE37B0CABC637793E9D3CBFFFFF9CF3B252D44116394F914424290665DC
          72B793A71C594AAEF43EA668CFFD44A9CBC529EC5292E79B493652F2EB2C00E1
          FC534E38742E8AAA703B72F4FE55CBE014EC431E5C0C7C81A3DDA7916FB7E3ED
          FAB1B554FAD2C00E6E4D2C83FC1F88D843CA791F5C8776B813FAC19368BAE240
          BBBB1FA53D9FE105CB5EC49864109B669151717598005B4936840166ED74AD77
          35B34783E44F332171974133A2C33BAE01348C2D4376D683486306B87A3BC4EF
          7FB54689CE9A09B0290C702BDCCE746B3BB69F8A4354171B6F346742E5BA0CEB
          CC2FB04CAE40E55C40E91933E8561344DA1BC8ADF22E10605B18E01D1959DA55
          7F04D1DABD78B16137E80B4E34DEFC1D1F4EFF05C3E80A949FCC43D0548DC659
          05689B1162F5CC4302BCFC2FA01C7D1C5B5B01D147BD90F50EC2E07B8086C09F
          D0795670BCFF0F1CB6DD46AC390BB26BB990B71D8544330B02BC1A062885FBBE
          D07411D1C78A21EF1887F4633F646D41281C77A168FF0985C6DBD8AA4A07BB35
          0159660944CAD11001C27F83955832E0CA3F7107FCDA3E24C9D5E096282090D7
          21F5B006197417B2AA038897A8917880469A588DD402ED2A9B9B6D27402483B0
          38059D4A816A662DBBCA09ABE302FC5373F8F9D7DFE09BF812667B1F78F97530
          DA7AE0F105B1B4FC03864626A0B37686D8BC9C26026C21616DA68ACF5F12969E
          823F38074B473FA4B52D90A89B515CD30851E549E4951B9153A64756491D8EE9
          5B70653880847D87E609F00A036CDCCE16250AA4EF8598C9124D337ACFF7A3A8
          CA02E6CC2F2CE2CE37DF62BFC280B633DD4829A8C6DD85EF41ED2F7F44801816
          25BBC6205BDE2AAAB9E51DBF05C3E973EB1375109089FB0E1E27EFAE628AE0E5
          5542A9B5E2F3211F386907BE23C08E27F7F9594A28D5995AFA566F04A6B1FCE3
          03B87D933034758538694537755647E8B2C78FF97B8BA4ECC5BBE6D6D0EB09FC
          76E65A3F0136305BBC995E5CCFCBA5E7520AAB1F2609E55FC7F1721B091EB773
          8FD016CF3F782F29877EC449132FBEB69BDF413AD1244F33C07F91E74822D73F
          CE4B24CF933CC3E0EB859DCCDACC64A6CCF4FE06A358007EE055FFED00000000
          49454E44AE426082}
        FileName = 'Images\RichEdit\Hyperlink_16x16.png'
        Keywords = 'RichEdit;Hyperlink'
      end>
  end
end
