object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistemas de Aplica'#231#245'es Gerais'
  ClientHeight = 478
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 459
    Width = 834
    Height = 19
    Panels = <>
    ExplicitTop = 643
    ExplicitWidth = 584
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 8
    object C1: TMenuItem
      Caption = 'Clientes'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object Aplicaes1: TMenuItem
      Caption = 'Aplica'#231#245'es'
      object CalculodeVolumes1: TMenuItem
        Caption = 'Calculo de Volumes'
        OnClick = CalculodeVolumes1Click
      end
      object CalculodeIMC1: TMenuItem
        Caption = 'Calculo de IMC'
        OnClick = CalculodeIMC1Click
      end
      object abuada1: TMenuItem
        Caption = 'Tabuada'
        OnClick = abuada1Click
      end
      object ringulo1: TMenuItem
        Caption = 'Tri'#226'ngulo'
        OnClick = ringulo1Click
      end
      object Banco1: TMenuItem
        Caption = 'Banco'
        OnClick = Banco1Click
      end
    end
    object Utilitrios1: TMenuItem
      Caption = 'Utilit'#225'rios'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
      end
      object Calendrio1: TMenuItem
        Caption = 'Calend'#225'rio'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
