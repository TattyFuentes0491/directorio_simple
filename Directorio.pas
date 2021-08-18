unit Directorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    IBDatabaseDirectorio: TIBDatabase;
    IBTransactionDirectorio: TIBTransaction;
    IBQueryDirectorio: TIBQuery;
    Panel1: TPanel;
    DBGridDirectorio: TDBGrid;
    DBNavigatorDirectorio: TDBNavigator;
    DataSourceDirectorio: TDataSource;
    BitBtnClose: TBitBtn;
    BitBtnVer: TBitBtn;
    DataSourceDirectorio2: TDataSource;
    IBQueryDirectorioID: TIntegerField;
    IBQueryDirectorioNOMBRE: TIBStringField;
    IBQueryDirectorioTELEF_FIJO: TIBStringField;
    IBQueryDirectorioEXTENSION: TIBStringField;
    IBQueryDirectorioCELULAR: TIBStringField;
    IBQueryDirectorioCARGO_USU: TIBStringField;
    IBQueryDirectorioPERFIL: TIntegerField;
    BitBtnDatos: TBitBtn;
    IBTransactionDirectorio2: TIBTransaction;
    IBDatabaseDirectorio2: TIBDatabase;
    IBDataSetDirectorio: TIBDataSet;
    IBDataSetDirectorioNOMBRE: TIBStringField;
    IBDataSetDirectorioTELEF_FIJO: TIBStringField;
    IBDataSetDirectorioEXTENSION: TIBStringField;
    IBDataSetDirectorioCELULAR: TIBStringField;
    IBDataSetDirectorioCARGO_USU: TIBStringField;
    IBDataSetDirectorioPERFIL: TIntegerField;
    IBDataSetDirectorioID: TIntegerField;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    DataSourcePerfil: TDataSource;
    DBGridPerfil: TDBGrid;
    IBDataSetDirectorioHABILITAR: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigatorPerfil: TDBNavigator;
    IBDataSetPerfil: TIBDataSet;
    IBDataSetPerfilID_PERFIL: TIntegerField;
    IBDataSetPerfilID_USU: TIntegerField;
    IBDataSetPerfilUSUARIO: TIBStringField;
    IBDataSetPerfilPERFIL: TIntegerField;
    IBDataSetPerfilCONTRASENA: TIBStringField;
    procedure BitBtnVerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnDatosClick(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBDataSetPerfilBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure columDBGrid;
    procedure columDBGridUsu;
    procedure validarPerfilUsu;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtnCloseClick(Sender: TObject);
begin
  if IBQueryDirectorio.Active = True then
      IBQueryDirectorio.Close;
  if IBDataSetDirectorio.Active = True then
      IBDataSetDirectorio.Close;

  Form1.Close;
end;

procedure TForm1.BitBtnVerClick(Sender: TObject);
begin
   DBGridDirectorio.DataSource:= nil;
   DBGridDirectorio.DataSource:= DataSourceDirectorio;
   DBNavigatorDirectorio.DataSource:= DataSourceDirectorio;
   IBQueryDirectorio.Open;
   columDBGridUsu;
end;

procedure TForm1.BitBtnDatosClick(Sender: TObject);
begin
  {IBDatabaseDirectorio.DefaultTransaction:= IBTransactionDirectorio;
   IBQueryDirectorio.Database:= IBDatabaseDirectorio;
   DataSourceDirectorio2.DataSet:= IBDataSetDirectorio;      }
   DBGridDirectorio.DataSource:= nil;
   DBGridPerfil.DataSource:= nil;
   DBGridDirectorio.DataSource:= DataSourceDirectorio2;
   DBNavigatorDirectorio.DataSource:= DataSourceDirectorio2;
   DBGridPerfil.DataSource:= DataSourcePerfil;
   DBNavigatorPerfil.DataSource:= DataSourcePerfil;
   //ASIGNAMOS LOS CAMPOS
   //IBDataSetDirectorio.GetFieldNames('NOMBRE');
   IBDataSetDirectorio.Open;
   IBDataSetPerfil.Open;
   columDBGrid;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  validarPerfilUsu;
end;

procedure TForm1.columDBGrid;
begin
  if DBGridDirectorio.DataSource.DataSet = IBDataSetDirectorio  then
    begin
      DBGridDirectorio.Columns.Items[0].Width:= 20;
      DBGridDirectorio.Columns.Items[1].Width:= 120;
      DBGridDirectorio.Columns.Items[2].Width:= 50;
      DBGridDirectorio.Columns.Items[3].Width:= 30;
      DBGridDirectorio.Columns.Items[4].Width:= 80;
      DBGridDirectorio.Columns.Items[5].Width:= 80;
      DBGridDirectorio.Columns.Items[6].Width:= 50;
      DBGridDirectorio.Columns.Items[2].Title.Caption:= 'TELF';
      DBGridDirectorio.Columns.Items[3].Title.Caption:= 'EXT';
      DBGridDirectorio.Columns.Items[5].Title.Caption:= 'CARGO';
      DBGridDirectorio.Columns.Items[6].Title.Caption:= 'ACTIVO';
      DBGridDirectorio.Columns.Items[0].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[1].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[2].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[3].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[4].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[5].Alignment:= taCenter;
      DBGridDirectorio.Columns.Items[6].Alignment:= taCenter;
  end;
end;

procedure TForm1.columDBGridUsu;
begin
  if DBGridDirectorio.DataSource.DataSet = IBQueryDirectorio  then
  begin
    DBGridDirectorio.Columns.Items[0].Width:= 120;
    DBGridDirectorio.Columns.Items[1].Width:= 50;
    DBGridDirectorio.Columns.Items[2].Width:= 30;
    DBGridDirectorio.Columns.Items[3].Width:= 80;
    DBGridDirectorio.Columns.Items[4].Width:= 80;
    DBGridDirectorio.Columns.Items[5].Width:= 60;
    DBGridDirectorio.Columns.Items[1].Title.Caption:= 'TELF';
    DBGridDirectorio.Columns.Items[2].Title.Caption:= 'EXT';
    DBGridDirectorio.Columns.Items[4].Title.Caption:= 'CARGO';
    DBGridDirectorio.Columns.Items[0].Alignment:= taCenter;
    DBGridDirectorio.Columns.Items[1].Alignment:= taCenter;
    DBGridDirectorio.Columns.Items[2].Alignment:= taCenter;
    DBGridDirectorio.Columns.Items[3].Alignment:= taCenter;
    DBGridDirectorio.Columns.Items[4].Alignment:= taCenter;
    DBGridDirectorio.Columns.Items[5].Alignment:= taCenter;
    end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBQueryDirectorio.Close;
end;

procedure TForm1.IBDataSetPerfilBeforePost(DataSet: TDataSet);
var
activo,usu,usu_perf: Integer;
begin
  usu:= IBDataSetDirectorioID.Value;
  usu_perf:= IBDataSetPerfilID_USU.Value;
  activo:= IBDataSetDirectorioHABILITAR.Value;
  if usu_perf = usu then
    if activo = 1 then
        MessageDlg('Registro Creado', mtInformation, [mbOK], 0)
    else
        MessageDlg('No esta autorizado para crear este registro', mtError, [mbCancel], 0);
end;

procedure TForm1.validarPerfilUsu;
var
  QRY: TIBQuery;
  TRN: TIBTransaction;
  iniTrn: Boolean;
  msj_error: string;
begin
  msj_error:='';
  TRN := TIBTransaction.Create(nil);
  TRN.DefaultDatabase:= IBDatabaseDirectorio2;
  DBGridDirectorio.DataSource:= nil;
  try
    if iniTrn then
      TRN.StartTransaction;
      QRY := TIBQuery.Create(nil);
      try
        QRY.Transaction:= TRN;
        with QRY do
        try
          //Active:= False;
          SQL.Clear;
          SQL.Add('SELECT * FROM PERFIL_USU P');
          SQL.Add('WHERE P.USUARIO = :USU');
          SQL.Add('AND P.CONTRASENA = :PASS');
          SQL.Add('AND P.PERFIL = :PRFL');
          ParamByName('USU').AsString:= Edit1.Text;
          ParamByName('PASS').AsString:= Edit2.Text;
          ParamByName('PRFL').AsInteger:= ComboBox1.ItemIndex;
          Open;
          if QRY.RecordCount <> 0 then
          begin
            MessageDlg('Usuario Correcto', mtInformation, [mbOK], 0);
            Panel1.Visible:= True;
            Label3.Visible:= True;
            DBGridDirectorio.Visible:= True;
            DBNavigatorDirectorio.Visible:= True;
            if ComboBox1.ItemIndex = 0 then
            begin
              BitBtnVer.Visible:= True;
              BitBtnDatos.Visible:= False;
              BitBtnClose.Visible:= True;
              DBGridPerfil.Visible:= False;
              DBNavigatorPerfil.Visible:= False;
              Label2.Visible:= False;
            end else
            if ComboBox1.ItemIndex = 1 then begin
              BitBtnVer.Visible:= False;
              BitBtnDatos.Visible:= True;
              BitBtnClose.Visible:= True;
              Label2.Visible:= True;
              DBGridPerfil.Visible:= True;
              DBNavigatorPerfil.Visible:= True;
            end else
            MessageDlg('Verificar Perfil', mtError, [mbCancel], 0);
          end else
          begin
            MessageDlg('Usuario Inorrecto - Validar credenciales', mtError, [mbCancel], 0);
          end;
        except on E: Exception do
           msj_error:= E.Message;
        end;
      finally
        QRY.Free;
      end;
  finally
      if TRN.InTransaction then
      TRN.Rollback;
    TRN.Free;
  end;

end;

end.
