object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Formulario de Ingreso'
  ClientHeight = 447
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 193
    Top = 8
    Width = 267
    Height = 32
    Align = alCustom
    Alignment = taCenter
    Caption = 'LISTA DE USUARIOS'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 82
    Top = 96
    Width = 497
    Height = 313
    TabOrder = 7
    Visible = False
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 495
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Listado de usuarios que pueden loguearse.'
      ExplicitWidth = 206
    end
    object Label3: TLabel
      Left = 1
      Top = 91
      Width = 495
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'DIRECTORIO TELEFONICO'
      ExplicitWidth = 130
    end
    object DBGridDirectorio: TDBGrid
      Left = 1
      Top = 104
      Width = 495
      Height = 166
      Align = alClient
      Color = clInactiveCaption
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object DBNavigatorDirectorio: TDBNavigator
      Left = 1
      Top = 270
      Width = 495
      Height = 42
      Align = alBottom
      TabOrder = 1
      Visible = False
    end
    object DBGridPerfil: TDBGrid
      Left = 1
      Top = 14
      Width = 495
      Height = 59
      Align = alTop
      DataSource = DataSourcePerfil
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object DBNavigatorPerfil: TDBNavigator
      Left = 1
      Top = 73
      Width = 495
      Height = 18
      DataSource = DataSourcePerfil
      Align = alTop
      TabOrder = 3
      Visible = False
    end
  end
  object BitBtnClose: TBitBtn
    Left = 584
    Top = 308
    Width = 81
    Height = 60
    Caption = '&Close'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
    TabOrder = 6
    Visible = False
    OnClick = BitBtnCloseClick
  end
  object BitBtnVer: TBitBtn
    Left = 584
    Top = 96
    Width = 81
    Height = 60
    Caption = 'VER'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 4
    Visible = False
    OnClick = BitBtnVerClick
  end
  object BitBtnDatos: TBitBtn
    Left = 585
    Top = 162
    Width = 81
    Height = 60
    Caption = '&DATOS'
    Kind = bkAll
    NumGlyphs = 2
    TabOrder = 5
    Visible = False
    OnClick = BitBtnDatosClick
  end
  object Edit1: TEdit
    Left = 82
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Usuario'
  end
  object Edit2: TEdit
    Left = 232
    Top = 56
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'contrase'#241'a'
  end
  object ComboBox1: TComboBox
    Left = 384
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 2
    TextHint = 'perfil'
    Items.Strings = (
      'Usuario'
      'Aministrador')
  end
  object Button1: TButton
    Left = 544
    Top = 54
    Width = 121
    Height = 25
    Caption = 'Validar Usuario'
    TabOrder = 3
    OnClick = Button1Click
  end
  object IBDatabaseDirectorio: TIBDatabase
    DatabaseName = 
      'Localhost:D:\Documents\Embarcadero\Studio\Projects\directorio_si' +
      'mple\DIRE.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransactionDirectorio
    ServerType = 'IBServer'
    Left = 8
    Top = 8
  end
  object IBTransactionDirectorio: TIBTransaction
    DefaultDatabase = IBDatabaseDirectorio
    Left = 8
    Top = 48
  end
  object IBQueryDirectorio: TIBQuery
    Database = IBDatabaseDirectorio
    Transaction = IBTransactionDirectorio
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 8
    Top = 88
    object IBQueryDirectorioID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Origin = 'USUARIOS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object IBQueryDirectorioNOMBRE: TIBStringField
      Alignment = taCenter
      FieldName = 'NOMBRE'
      Origin = 'USUARIOS.NOMBRE'
      Required = True
      Size = 40
    end
    object IBQueryDirectorioTELEF_FIJO: TIBStringField
      Alignment = taCenter
      FieldName = 'TELEF_FIJO'
      Origin = 'USUARIOS.TELEF_FIJO'
      Size = 15
    end
    object IBQueryDirectorioEXTENSION: TIBStringField
      Alignment = taCenter
      FieldName = 'EXTENSION'
      Origin = 'USUARIOS.EXTENSION'
      FixedChar = True
      Size = 4
    end
    object IBQueryDirectorioCELULAR: TIBStringField
      Alignment = taCenter
      FieldName = 'CELULAR'
      Origin = 'USUARIOS.CELULAR'
      Required = True
      Size = 15
    end
    object IBQueryDirectorioCARGO_USU: TIBStringField
      Alignment = taCenter
      FieldName = 'CARGO_USU'
      Origin = 'USUARIOS.CARGO_USU'
      Required = True
    end
    object IBQueryDirectorioPERFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'PERFIL'
      Origin = 'USUARIOS.PERFIL'
      Required = True
    end
  end
  object DataSourceDirectorio: TDataSource
    DataSet = IBQueryDirectorio
    Left = 8
    Top = 136
  end
  object DataSourceDirectorio2: TDataSource
    DataSet = IBDataSetDirectorio
    Left = 16
    Top = 352
  end
  object IBTransactionDirectorio2: TIBTransaction
    DefaultDatabase = IBDatabaseDirectorio2
    Left = 16
    Top = 264
  end
  object IBDatabaseDirectorio2: TIBDatabase
    DatabaseName = 
      'localhost:D:\Documents\Embarcadero\Studio\Projects\directorio_si' +
      'mple\DIRE.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransactionDirectorio2
    ServerType = 'IBServer'
    Left = 16
    Top = 216
  end
  object IBDataSetDirectorio: TIBDataSet
    Database = IBDatabaseDirectorio2
    Transaction = IBTransactionDirectorio2
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (NOMBRE, TELEF_FIJO, EXTENSION, CELULAR, CARGO_USU, PERFIL, HA' +
        'BILITAR)'
      'values'
      
        '  (:NOMBRE, :TELEF_FIJO, :EXTENSION, :CELULAR, :CARGO_USU, :PERF' +
        'IL, :HABILITAR)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NOMBRE,'
      '  TELEF_FIJO,'
      '  EXTENSION,'
      '  CELULAR,'
      '  CARGO_USU,'
      '  PERFIL,'
      '  HABILITAR'
      'from USUARIOS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select ID, NOMBRE, TELEF_FIJO, EXTENSION, CELULAR, '
      'CARGO_USU, PERFIL, HABILITAR'
      'from USUARIOS')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  NOMBRE = :NOMBRE,'
      '  TELEF_FIJO = :TELEF_FIJO,'
      '  EXTENSION = :EXTENSION,'
      '  CELULAR = :CELULAR,'
      '  CARGO_USU = :CARGO_USU,'
      '  PERFIL = :PERFIL,'
      '  HABILITAR = :HABILITAR'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    Left = 16
    Top = 312
    object IBDataSetDirectorioID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Origin = 'USUARIOS.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBDataSetDirectorioNOMBRE: TIBStringField
      Alignment = taCenter
      FieldName = 'NOMBRE'
      Origin = 'USUARIOS.NOMBRE'
      Required = True
      Size = 40
    end
    object IBDataSetDirectorioTELEF_FIJO: TIBStringField
      Alignment = taCenter
      FieldName = 'TELEF_FIJO'
      Origin = 'USUARIOS.TELEF_FIJO'
      Size = 15
    end
    object IBDataSetDirectorioEXTENSION: TIBStringField
      Alignment = taCenter
      FieldName = 'EXTENSION'
      Origin = 'USUARIOS.EXTENSION'
      FixedChar = True
      Size = 4
    end
    object IBDataSetDirectorioCELULAR: TIBStringField
      Alignment = taCenter
      FieldName = 'CELULAR'
      Origin = 'USUARIOS.CELULAR'
      Size = 15
    end
    object IBDataSetDirectorioCARGO_USU: TIBStringField
      Alignment = taCenter
      FieldName = 'CARGO_USU'
      Origin = 'USUARIOS.CARGO_USU'
    end
    object IBDataSetDirectorioPERFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'PERFIL'
      Origin = 'USUARIOS.PERFIL'
    end
    object IBDataSetDirectorioHABILITAR: TIntegerField
      Alignment = taCenter
      FieldName = 'HABILITAR'
      Origin = 'USUARIOS.HABILITAR'
    end
  end
  object DataSourcePerfil: TDataSource
    DataSet = IBDataSetPerfil
    Left = 640
    Top = 8
  end
  object IBDataSetPerfil: TIBDataSet
    Database = IBDatabaseDirectorio2
    Transaction = IBTransactionDirectorio2
    BeforePost = IBDataSetPerfilBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PERFIL_USU'
      'where'
      '  ID_PERFIL = :OLD_ID_PERFIL')
    InsertSQL.Strings = (
      'insert into PERFIL_USU'
      '  (ID_USU, USUARIO, CONTRASENA, PERFIL)'
      'values'
      '  (:ID_USU, :USUARIO, :CONTRASENA, :PERFIL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_PERFIL,'
      '  ID_USU,'
      '  USUARIO,'
      '  CONTRASENA,'
      '  PERFIL'
      'from PERFIL_USU '
      'where'
      '  ID_PERFIL = :ID_PERFIL')
    SelectSQL.Strings = (
      'select ID_PERFIL, ID_USU, USUARIO, CONTRASENA, PERFIL '
      'from PERFIL_USU')
    ModifySQL.Strings = (
      'update PERFIL_USU'
      'set'
      '  ID_USU = :ID_USU,'
      '  USUARIO = :USUARIO,'
      '  CONTRASENA = :CONTRASENA,'
      '  PERFIL = :PERFIL'
      'where'
      '  ID_PERFIL = :OLD_ID_PERFIL')
    ParamCheck = True
    UniDirectional = False
    Left = 560
    Top = 8
    object IBDataSetPerfilID_PERFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_PERFIL'
      Origin = 'PERFIL_USU.ID_PERFIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object IBDataSetPerfilUSUARIO: TIBStringField
      Alignment = taCenter
      FieldName = 'USUARIO'
      Origin = 'PERFIL_USU.USUARIO'
      Required = True
      Size = 10
    end
    object IBDataSetPerfilCONTRASENA: TIBStringField
      Alignment = taCenter
      FieldName = 'CONTRASENA'
      Origin = 'PERFIL_USU.CONTRASENA'
      Required = True
      Size = 10
    end
    object IBDataSetPerfilPERFIL: TIntegerField
      Alignment = taCenter
      FieldName = 'PERFIL'
      Origin = 'PERFIL_USU.PERFIL'
      Required = True
    end
    object IBDataSetPerfilID_USU: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_USU'
      Origin = 'PERFIL_USU.ID_USU'
    end
  end
end
