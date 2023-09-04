object DiffForm: TDiffForm
  Left = 0
  Top = 0
  Caption = 'DiffForm'
  ClientHeight = 569
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnClose = FormClose
  DesignSize = (
    745
    569)
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 48
    Width = 721
    Height = 520
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
    ExplicitWidth = 717
    ExplicitHeight = 519
  end
  object Button1: TButton
    Left = 0
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
