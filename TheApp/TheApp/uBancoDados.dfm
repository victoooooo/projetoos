object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 277
  Width = 605
  object conecxao: TFDConnection
    Params.Strings = (
      'Database=siscom'
      'DriverID=MySQL'
      'Server=localhost'
      'User_Name=root')
    Left = 232
    Top = 104
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'G:\ETEC2019\1Modulo\Wagner\TheApp\libmysql.dll'
    Left = 400
    Top = 112
  end
end
