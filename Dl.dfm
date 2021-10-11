object Form1: TForm1
  Left = 192
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'My Word '
  ClientHeight = 560
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 457
    Height = 545
    HideSelection = False
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Button2: TButton
    Left = 480
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 480
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Open Pict.'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Save Pict.'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 480
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Font size'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 480
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Font color'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 480
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 480
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Print. Setup'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 480
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 480
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Replase'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 480
    Top = 528
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 11
    OnClick = Button11Click
  end
  object Panel1: TPanel
    Left = 568
    Top = 8
    Width = 441
    Height = 545
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 12
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 441
      Height = 545
      Stretch = True
    end
  end
  object Button12: TButton
    Left = 480
    Top = 8
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 13
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 480
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Backgr. col.'
    TabOrder = 14
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 480
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Save As...'
    TabOrder = 15
    OnClick = Button14Click
  end
  object Button1: TButton
    Left = 480
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'TXT'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099' (*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofHideReadOnly]
    Left = 432
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'TXT'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099' (*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofHideReadOnly]
    Left = 432
    Top = 80
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Options = [ofHideReadOnly]
    Left = 432
    Top = 440
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'BMP'
    Options = [ofHideReadOnly]
    Left = 432
    Top = 480
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 432
    Top = 160
  end
  object ColorDialog1: TColorDialog
    Left = 432
    Top = 200
  end
  object PrintDialog1: TPrintDialog
    Left = 432
    Top = 280
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 432
    Top = 320
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 432
    Top = 360
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = ReplaceDialog1Find
    OnReplace = ReplaceDialog1Replace
    Left = 432
    Top = 400
  end
end
