unit BukuPiutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Oracle, wwDialog, wwrcdvw, Wwdatsrc, OracleData, wwcheckbox,
  wwSpeedButton, wwDBNavigator, wwclearpanel, ExtCtrls, wwdblook, Wwdbdlg,
  StdCtrls, DBCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, QuickRpt, QRCtrls, ComCtrls, Mask,
  Wwdbspin, wwidlg, Buttons;

type
  TBukuPiutangFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLTitle: TQRLabel;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    QRLNomer: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText9: TQRDBText;
    ldNota: TwwLookupDialog;
    QRDBText16: TQRDBText;
    QRLPeriode: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLDebet: TQRLabel;
    QRLKredit: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLAwal: TQRLabel;
    QRLMutasi: TQRLabel;
    QRLAkhir: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLBerjalan: TQRLabel;
    TabSheet2: TTabSheet;
    QBrowse2: TOracleDataSet;
    wwDataSource1: TwwDataSource;
    wwDBGrid2: TwwDBGrid;
    dsQBrowse2: TwwDataSource;
    dsQBrowse3: TwwDataSource;
    QBrowse3: TOracleDataSet;
    TabSheet3: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Panel8: TPanel;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    TabSheet4: TTabSheet;
    wwDBGrid4: TwwDBGrid;
    Panel9: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    vTglAwal4: TwwDBDateTimePicker;
    vTglAkhir4: TwwDBDateTimePicker;
    Panel10: TPanel;
    vOperand4: TLabel;
    cbTanggal4: TCheckBox;
    BitBtn2: TBitBtn;
    ECari4: TEdit;
    cbOtomatis4: TCheckBox;
    dbcField4: TwwDBComboBox;
    QBrowse4: TOracleDataSet;
    dsQBrowse4: TwwDataSource;
    QBrowse4NO_NOTA: TStringField;
    QBrowse4TANGGAL: TDateTimeField;
    QBrowse4KODE: TFloatField;
    QBrowse4NAMA_REKANAN: TStringField;
    QBrowse4ISPOST: TStringField;
    QBrowse4PPN: TStringField;
    QBrowse4TGL_KIRIM: TDateTimeField;
    QBrowse4KODE_BRG: TStringField;
    QBrowse4KONSTRUKSI: TStringField;
    QBrowse4CORAK: TStringField;
    QBrowse4KEMASAN: TStringField;
    QBrowse4QTY: TFloatField;
    QBrowse4SATUAN: TStringField;
    QBrowse4HARGA: TFloatField;
    QBrowse4DPP: TFloatField;
    QBrowse4PPN10: TFloatField;
    QBrowse4SUB_TOTAL: TFloatField;
    QTotal: TOracleDataSet;
    QTotalQTY: TFloatField;
    QTotalSUB_TOTAL: TFloatField;
    QTotalDPP: TFloatField;
    QTotalPPN: TFloatField;
    QBrowseTAHUN: TIntegerField;
    QBrowseKD_PERK: TStringField;
    QBrowseAWAL_BULAN: TFloatField;
    QBrowseAWAL_HARI: TFloatField;
    QBrowseDEBET: TFloatField;
    QBrowseKREDIT: TFloatField;
    QBrowseNAMA_PERKIRAAN: TStringField;
    QBrowseAWAL: TFloatField;
    QBrowseAKHIR: TFloatField;
    Button1: TButton;
    QAmbilTerate: TOracleQuery;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRDBText13: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand3: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand5: TQRBand;
    QRLabel24: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRShape1: TQRShape;
    QRLabel28: TQRLabel;
    QRBand6: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand7: TQRBand;
    QRBand4: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel22: TQRLabel;
    QRLNomer2: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText31: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape3: TQRShape;
    TabSheet5: TTabSheet;
    QCube: TOracleDataSet;
    Panel12: TPanel;
    BitBtn3: TBitBtn;
    QCubeKODE_BRG: TStringField;
    QCubeKONSTRUKSI: TStringField;
    QCubeCORAK: TStringField;
    QCubeKEMASAN: TStringField;
    QCubeSATUAN: TStringField;
    QCubeJUMLAH1: TFloatField;
    QCubeJUMLAH2: TFloatField;
    QCubeJUMLAH3: TFloatField;
    QCubeJUMLAH4: TFloatField;
    QCubeJUMLAH5: TFloatField;
    QCubeJUMLAH6: TFloatField;
    QCubeJUMLAH7: TFloatField;
    QCubeJUMLAH8: TFloatField;
    QCubeJUMLAH9: TFloatField;
    QCubeJUMLAH10: TFloatField;
    QCubeJUMLAH11: TFloatField;
    QCubeJUMLAH12: TFloatField;
    QCubeJUMLAH13: TFloatField;
    QCubeJUMLAH14: TFloatField;
    QCubeJUMLAH15: TFloatField;
    QCubeJUMLAH16: TFloatField;
    QCubeJUMLAH17: TFloatField;
    QCubeJUMLAH18: TFloatField;
    QCubeJUMLAH19: TFloatField;
    QCubeJUMLAH20: TFloatField;
    dsQCube: TDataSource;
    wwDBGrid5: TwwDBGrid;
    ProcCube: TOracleQuery;
    BitBtn4: TBitBtn;
    RadioGroup1: TRadioGroup;
    QSlsman_Dipilih: TOracleDataSet;
    QSlsman_DipilihCUSTOMER: TStringField;
    QSlsman_DipilihITEM: TFloatField;
    QSlsman_DipilihISPILIH: TStringField;
    QSlsman_DipilihKODE: TFloatField;
    QuickRep3: TQuickRep;
    TitleBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    DetailBand2: TQRBand;
    SummaryBand2: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QCubeTOTAL: TFloatField;
    QRDBText45: TQRDBText;
    QRBand8: TQRBand;
    QRGroup2: TQRGroup;
    QRDBText46: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr17: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel23: TQRLabel;
    QRExpr16: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape4: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    c1: TQRLabel;
    c2: TQRLabel;
    c3: TQRLabel;
    c4: TQRLabel;
    c5: TQRLabel;
    c6: TQRLabel;
    c7: TQRLabel;
    c8: TQRLabel;
    c9: TQRLabel;
    c10: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLTitle3: TQRLabel;
    QRDBText47: TQRDBText;
    QRLPeriode3: TQRLabel;
    Label6: TLabel;
    Label7: TLabel;
    QSlsman_DipilihT1: TStringField;
    QCubeDUMI: TStringField;
    Label25: TLabel;
    QBrowse2KD_REKANAN: TFloatField;
    QBrowse2NAMA_REKANAN: TStringField;
    QBrowse2ALAMAT: TStringField;
    QBrowse2KOTA: TStringField;
    QBrowse2TELEPON: TStringField;
    QBrowse2VCOUNT: TFloatField;
    QBrowse2AWAL: TFloatField;
    QBrowse2DEBET: TFloatField;
    QBrowse2KREDIT: TFloatField;
    QBrowse2AKHIR: TFloatField;
    QBrowse2BERJALAN: TFloatField;
    QBrowse3NO_REG: TIntegerField;
    QBrowse3NO_JURNAL: TFloatField;
    QBrowse3NO_NOTA: TStringField;
    QBrowse3TANGGAL: TDateTimeField;
    QBrowse3NO_BUKTI: TStringField;
    QBrowse3KETERANGAN: TStringField;
    QBrowse3KREDIT: TFloatField;
    QBrowse3DEBET: TFloatField;
    QBrowse3KURS: TFloatField;
    QBrowse3KD_PERK: TStringField;
    QBrowse3NAMA_PERKIRAAN: TStringField;
    QBrowse3KD_CASH: TStringField;
    QBrowse3ISHEAD: TStringField;
    QBrowse3TGL_INSERT: TDateTimeField;
    QBrowse3OPR_INSERT: TStringField;
    QBrowse3KAS: TStringField;
    QBrowse3KD_REKANAN: TIntegerField;
    QBrowse3KD_PERK2: TStringField;
    TabSheet6: TTabSheet;
    wwDBGrid6: TwwDBGrid;
    QBrowseDetail2: TOracleDataSet;
    dsQBrowseDetail2: TwwDataSource;
    QBrowseDetail2NAMA_REKANAN: TStringField;
    QBrowseDetail2KD_REKANAN: TIntegerField;
    QBrowseDetail2TANGGAL: TDateTimeField;
    QBrowseDetail2NO_BUKTI: TStringField;
    QBrowseDetail2NO_JURNAL: TFloatField;
    QBrowseDetail2NO_NOTA: TStringField;
    QBrowseDetail2KETERANGAN: TStringField;
    QBrowseDetail2DEBET: TFloatField;
    QBrowseDetail2KREDIT: TFloatField;
    QBrowseDetail2KURS: TFloatField;
    QBrowseDetail2KD_PERK: TStringField;
    QBrowseDetail2NAMA_PERKIRAAN: TStringField;
    QBrowseDetail2KAS: TStringField;
    rgJnsNota: TRadioGroup;
    TabSheet7: TTabSheet;
    Panel13: TPanel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    vTglAwal7: TwwDBDateTimePicker;
    vTglAkhir7: TwwDBDateTimePicker;
    Panel14: TPanel;
    vOperand7: TLabel;
    cbTanggal7: TCheckBox;
    BitBtn7: TBitBtn;
    ECari7: TEdit;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    rgJnsNota7: TRadioGroup;
    wwDBGrid7: TwwDBGrid;
    QBrowse7: TOracleDataSet;
    dsQBrowse7: TwwDataSource;
    QBrowse7NO_NOTA: TStringField;
    QBrowse7TANGGAL: TDateTimeField;
    QBrowse7STATUS: TStringField;
    QBrowse7KD_TRANSAKSI: TStringField;
    QBrowse7MU: TStringField;
    QBrowse7KODE: TFloatField;
    QBrowse7NAMA_REKANAN: TStringField;
    QBrowse7ISPOST: TStringField;
    QBrowse7PPN: TStringField;
    QBrowse7TGL_KIRIM: TDateTimeField;
    QBrowse7KODE_BRG: TStringField;
    QBrowse7NAMA_BRG: TStringField;
    QBrowse7QTY: TFloatField;
    QBrowse7HARGA: TFloatField;
    QBrowse7SUB_TOTAL: TFloatField;
    QBrowse7PPN10: TFloatField;
    QBrowse7DPP: TFloatField;
    QBrowse7QTY7: TFloatField;
    QBrowse7SATUAN: TStringField;
    QBrowse7NO_BUKTI: TStringField;
    QBrowse7UM: TFloatField;
    QBrowse7DISKON: TFloatField;
    QTotal7: TOracleDataSet;
    QTotal7QTY: TFloatField;
    QTotal7SUB_TOTAL: TFloatField;
    QTotal7DPP: TFloatField;
    QTotal7PPN: TFloatField;
    TabSheet8: TTabSheet;
    Panel15: TPanel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Panel16: TPanel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    BitBtn6: TBitBtn;
    Edit1: TEdit;
    CheckBox2: TCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    RadioGroup2: TRadioGroup;
    wwDBGrid8: TwwDBGrid;
    QBrowse8: TOracleDataSet;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField2: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    dsQBrowse8: TwwDataSource;
    QBrowse8NO_NOTA_KOREKSI: TStringField;
    QBrowse4NIL_DISC: TFloatField;
    QTotalNIL_DISC: TFloatField;
    Panel17: TPanel;
    QBrowse3AWAL: TFloatField;
    QBrowse3AKHIR: TFloatField;
    QBrowse3KAS_BANK: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TabSheet1Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure LookMUEnter(Sender: TObject);
    procedure QBrowseDetailBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure TabSheet2Show(Sender: TObject);
    procedure wwDBGrid1URLOpen(Sender: TObject; var URLLink: String;
      Field: TField; var UseDefault: Boolean);
    procedure TabSheet3Show(Sender: TObject);
    procedure wwDBGrid2URLOpen(Sender: TObject; var URLLink: String;
      Field: TField; var UseDefault: Boolean);
    procedure QBrowse2CalcFields(DataSet: TDataSet);
    procedure wwDBGrid3UpdateFooter(Sender: TObject);
    procedure vTglAwal4Change(Sender: TObject);
    procedure vTglAkhir4Change(Sender: TObject);
    procedure cbOtomatis4Click(Sender: TObject);
    procedure dbcField4Enter(Sender: TObject);
    procedure vOperand4Click(Sender: TObject);
    procedure cbTanggal4Click(Sender: TObject);
    procedure ECari4Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid4TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet4Show(Sender: TObject);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TabSheet5Show(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure QCubeCalcFields(DataSet: TDataSet);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowse2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TabSheet6Show(Sender: TObject);
    procedure QBrowseDetail2BeforeOpen(DataSet: TDataSet);
    procedure QBrowse4BeforeQuery(Sender: TOracleDataSet);
    procedure QTotalBeforeQuery(Sender: TOracleDataSet);
    procedure TabSheet7Show(Sender: TObject);
    procedure QBrowse7BeforeQuery(Sender: TOracleDataSet);
    procedure vTglAwal7Change(Sender: TObject);
    procedure vTglAkhir7Change(Sender: TObject);
    procedure cbOtomatis7Click(Sender: TObject);
    procedure dbcField7Enter(Sender: TObject);
    procedure vOperand7Click(Sender: TObject);
    procedure cbTanggal7Click(Sender: TObject);
    procedure ECari7Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
  private
    { Private declarations }
    vfilter, vorder : String;
    vfirst_page : Boolean;
    vdebet, vkredit, vberjalan, vakhir, vmyberjalan : real;
    vfilter4, vorder4 : String;
    vfilter7, vorder7 : String;    
  public
    { Public declarations }
    vkd_perk2, vmu : String;
    vhak_input : Boolean;
    vrecord_ke, vnomer, vnomer2 : Integer;
  end;

var
  BukuPiutangFrm: TBukuPiutangFrm;

implementation

uses DM, MainBrowse, Main, XPROCS, DateUtils, PilihOutlet;

{$R *.dfm}

procedure TBukuPiutangFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  BukuPiutangFrm:=Nil;
end;

procedure TBukuPiutangFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TBukuPiutangFrm.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=DMFrm.vclGridRead;
      AFont.Color:=DMFrm.vclGridReadFont;
    end
    else
    begin
      ABrush.Color:=DMFrm.vclGridEdit;
      AFont.Color:=DMFrm.vclGridEditFont;
    end;
end;

procedure TBukuPiutangFrm.wwDBGrid1DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;
end;

procedure TBukuPiutangFrm.BitBtn1Click(Sender: TObject);
var
  vmyparam : String;
  vbulan, vi, spTahun : integer;
begin
  spTahun:=StrToInt(FormatDateTime('yyyy',VTglAwal.Date));
  vbulan:=StrToInt(FormatDateTime('mm',VTglAwal.Date));
  vmyparam:='a.B00';
  if vbulan>1 then
  begin
      for vi:=1 to vbulan-1 do
      begin
         vmyparam:=vmyparam+'+a.B'+FormatFloat('00',vi);
      end;
  end;
  vmyparam:=vmyparam+' as awal_bulan';
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('tahun',round(spTahun));
  QBrowse.SetVariable('myparam',vmyparam);
  QBrowse.SetVariable('pawal',Trunc(VTglAwal.Date));
  QBrowse.SetVariable('pakhir',Trunc(VTglAkhir.Date));
  QBrowse.Open;
  QBrowse.EnableControls;
end;

procedure TBukuPiutangFrm.FormShow(Sender: TObject);
begin
  VTglAwal.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  TabSheet4.TabVisible:=False;
  TabSheet5.TabVisible:=True;
  TabSheet6.TabVisible:=False;
  TabSheet7.TabVisible:=False;
  TabSheet8.TabVisible:=False;
end;

procedure TBukuPiutangFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vmyberjalan:=0;
  vnomer:=0;
  QRLabel11.Caption:=VTglAwal.Text+' S/D '+vTglAkhir.Text;
//  QRLTitle.Caption:=UpperCase(QJnsTransaksiNAMA_TRANSAKSI.AsString);
end;

procedure TBukuPiutangFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse.Open;
  Label25.Caption:='Buku Piutang - Saldo Rekening';
end;

procedure TBukuPiutangFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TBukuPiutangFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=Trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TBukuPiutangFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TBukuPiutangFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  3 : wwDBGrid4.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TBukuPiutangFrm.BtnExportClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
        if QBrowse.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:=Caption;
           wwDBGrid1.ExportOptions.TitleName:=Caption;
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid1.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;
  1 : begin
        if QBrowse.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='PIUTANG CUSTOMER';
           wwDBGrid2.ExportOptions.TitleName:='PIUTANG CUSTOMER';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid2.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;

  2 : begin
        if QBrowse3.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='DAFTAR TRANSAKSI BUKTI';
           wwDBGrid3.ExportOptions.TitleName:='DAFTAR TRANSAKSI BUKTI';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid3.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;

  3 : begin
        if QBrowse4.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='Laporan Penjualan';
           wwDBGrid4.ExportOptions.TitleName:='Laporan Penjualan';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid4.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;
  // export rekap daftar penjualan
  4 : begin
        if QCube.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='Laporan Rekap Penjualan PerCustomer';
           wwDBGrid5.ExportOptions.TitleName:='Laporan Rekap Penjualan PerCustomer';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid5.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid5.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;
{azmi}
  // export BUKU Pembantu
  5 : begin
        if QBrowseDetail2.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='Laporan Buku Pembantu';
           wwDBGrid6.ExportOptions.TitleName:='Laporan Buku Pembantu';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid6.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid6.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;
{azmi}
{azmi}
  // export Retur Penjualan
  6 : begin
        if QBrowse7.Active then
        begin
           DMFrm.SaveDialog1.DefaultExt:='XLK';
           DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
           DMFrm.SaveDialog1.FileName:='Daftar Retur Penjualan';
           wwDBGrid7.ExportOptions.TitleName:='Daftar Retur Penjualan';
             if DMFrm.SaveDialog1.Execute then
             begin
               try
               wwDBGrid7.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid7.ExportOptions.Save;
               ShowMessage('Simpan Sukses !');
               except
               ShowMessage('Simpan Gagal !');
               end;
             end;
        end
        else
          ShowMessage('Tabel belum di-OPEN !');
     end;
{azmi}

     end;
end;
procedure TBukuPiutangFrm.DBText5Click(Sender: TObject);
var
  DC : HDC;
  ABitmap:TBitmap;
begin
  DC := GetDC (GetTopParentHandle);
  ABitmap:=TBitmap.Create;
  try
    ABitmap.Width  := Width-9; //GetDeviceCaps (DC, HORZRES);
    ABitmap.Height := Height-30; //GetDeviceCaps (DC, VERTRES);
    BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width,
           ABitmap.Height,DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC (GetTopParentHandle, DC);
  end;
  DMFrm.SavePictureDialog1.FileName:=Caption;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TBukuPiutangFrm.LookMUEnter(Sender: TObject);
begin
  DMFrm.QMU.Open;
end;

procedure TBukuPiutangFrm.QBrowseDetailBeforeOpen(DataSet: TDataSet);
begin
//  QBrowseDetail.SetVariable('no_reg_po',QBrowseNO_REG_PO.AsInteger);
end;

procedure TBukuPiutangFrm.FormCreate(Sender: TObject);
begin
  vkd_perk2:=DMFrm.QHakPerkiraanKD_PERK.AsString;
end;

procedure TBukuPiutangFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
// vmyberjalan:=0;
end;

procedure TBukuPiutangFrm.TabSheet2Show(Sender: TObject);
var
  vawal, vd, vk, vakhir : real;
begin
  Label25.Caption:='Buku Piutang - Daftar Piutang';
  QBrowse2.DisableControls;
  QBrowse2.Close;
  QBrowse2.SetVariable('pkd_perk',QBrowseKD_PERK.AsString);
  QBrowse2.SetVariable('pawal',Trunc(VTglAwal.Date));
  QBrowse2.SetVariable('pakhir',Trunc(VTglAkhir.Date));
  QBrowse2.Open;
  vawal:=0;
  vd:=0;
  vk:=0;
  vakhir:=0;
  while not QBrowse2.Eof do
  begin
      vawal:=vawal+QBrowse2AWAL.AsFloat;
      vd:=vd+QBrowse2DEBET.AsFloat;
      vk:=vk+QBrowse2KREDIT.AsFloat;
      vakhir:=vakhir+QBrowse2AKHIR.AsFloat;
      QBrowse2.Next;
  end;
  QBrowse2.EnableControls;
  wwDBGrid2.ColumnByName('AWAL').FooterValue:=FormatFloat('#.#,#;(#.#,#)',vawal);
  wwDBGrid2.ColumnByName('AKHIR').FooterValue:=FormatFloat('#.#,#;(#.#,#)',vakhir);
  wwDBGrid2.ColumnByName('DEBET').FooterValue:=FormatFloat('#.#,#;(#.#,#)',vd);
  wwDBGrid2.ColumnByName('KREDIT').FooterValue:=FormatFloat('#.#,#;(#.#,#)',vk);
end;

procedure TBukuPiutangFrm.wwDBGrid1URLOpen(Sender: TObject;
  var URLLink: String; Field: TField; var UseDefault: Boolean);
begin
  TabSheet2.Show;
end;

procedure TBukuPiutangFrm.TabSheet3Show(Sender: TObject);
begin
  Label25.Caption:='Buku Piutang - Daftar Transaksi/Bukti';
  QBrowse3.DisableControls;
  QBrowse3.Close;
  QBrowse3.SetVariable('pkd_perk',QBrowseKD_PERK.AsString);
  QBrowse3.SetVariable('pkd_rekanan',QBrowse2KD_REKANAN.AsString);
  QBrowse3.SetVariable('pawal',Trunc(VTglAwal.Date));
  QBrowse3.SetVariable('pakhir',Trunc(VTglAkhir.Date));
  QBrowse3.Open;
  QBrowse3.EnableControls;

  wwDBGrid3.ColumnByName('DEBET').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowse2DEBET.AsFloat);
  wwDBGrid3.ColumnByName('KREDIT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowse2KREDIT.AsFloat);

  Panel17.Caption:=QBrowse2NAMA_REKANAN.AsString;  
end;

procedure TBukuPiutangFrm.wwDBGrid2URLOpen(Sender: TObject;
  var URLLink: String; Field: TField; var UseDefault: Boolean);
begin
  TabSheet3.Show;
end;

procedure TBukuPiutangFrm.QBrowse2CalcFields(DataSet: TDataSet);
begin
  QBrowse2BERJALAN.AsFloat:=QBrowse2DEBET.AsFloat-QBrowse2KREDIT.AsFloat;
  QBrowse2AKHIR.AsFloat:=QBrowse2AWAL.AsFloat+QBrowse2DEBET.AsFloat-QBrowse2KREDIT.AsFloat;
end;

procedure TBukuPiutangFrm.wwDBGrid3UpdateFooter(Sender: TObject);
begin
  wwDBGrid3.ColumnByName('DEBET').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowse2DEBET.AsFloat);
  wwDBGrid3.ColumnByName('KREDIT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowse2KREDIT.AsFloat);
end;

procedure TBukuPiutangFrm.vTglAwal4Change(Sender: TObject);
begin
  vTglAkhir4.Date:=Trunc(EndOfTheMonth(VTglAwal4.Date));
end;

procedure TBukuPiutangFrm.vTglAkhir4Change(Sender: TObject);
begin
  if VTglAwal4.Date>vTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir4.Date:=VTglAwal4.Date;
  end;

end;

procedure TBukuPiutangFrm.cbOtomatis4Click(Sender: TObject);
begin
  if cbOtomatis4.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid4.Options:=wwDBGrid4.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid4.Options:=wwDBGrid4.Options-[dgAlwaysShowSelection];
  ECari4.SetFocus;

end;

procedure TBukuPiutangFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse4.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid4.FieldCount-1 do
    if UpperCase(wwDBGrid4.Columns[i].FieldName)<>'TANGGAL' then
      dbcField4.Items.Add(wwDBGrid4.Columns[i].FieldName);

end;

procedure TBukuPiutangFrm.vOperand4Click(Sender: TObject);
begin
  if vOperand4.Caption='LIKE' then
    vOperand4.Caption:='='
    else
      vOperand4.Caption:='LIKE';

end;

procedure TBukuPiutangFrm.cbTanggal4Click(Sender: TObject);
begin
  if cbTanggal4.Checked then
  begin
    VTglAwal4.Enabled:=cbTanggal4.Checked;
    vTglAkhir4.Enabled:=cbTanggal4.Checked;
    VTglAwal4.SetFocus;
  end
  else
    ECari4.SetFocus;

end;

procedure TBukuPiutangFrm.ECari4Change(Sender: TObject);
begin
  if cbOtomatis4.Checked then
  begin
      QBrowse4.SearchRecord(wwDBGrid4.Columns[0].FieldName,ECari4.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;

end;

procedure TBukuPiutangFrm.BitBtn2Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal4.Checked then
    vfilter4:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal4.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir4.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter4:=' where (';
  if (QBrowse4.FieldCount>=1) then
  begin
    if dbcField4.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid4.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse4.FieldByName(wwDBGrid4.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid4.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand4.Caption='LIKE' then
                vfilter4:=vfilter4+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                   vfilter4:=vfilter4+wwDBGrid4.Columns[i].FieldName+' = '''+ECari4.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand4.Caption='LIKE' then
                vfilter4:=vfilter4+' or '+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                  vfilter4:=vfilter4+' or '+wwDBGrid4.Columns[i].FieldName+' = '''+ECari4.Text+''''
        end;
      end;
    end
    else
      if vOperand4.Caption='LIKE' then
         vfilter4:=vfilter4+dbcField4.Text+' like ''%'+ECari4.Text+'%'''
         else
           vfilter4:=vfilter4+dbcField4.Text+' = '''+ECari4.Text+'''';
    vfilter4:=vfilter4+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse4.Active then
      vorder4:=' order by '+wwDBGrid4.Columns[0].FieldName
      else
        vorder4:=' order by no_nota';

  end;
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+vorder4);
  QBrowse4.Open;
  QBrowse4.EnableControls;
  QTotal.close;
  QTotal.SetVariable('myparam',vfilter4);
  QTotal.Open;
  wwDBGrid4.ColumnByName('SUB_TOTAL').FooterValue:=FormatFloat('#,#;(#,#)',QTotalSUB_TOTAL.AsFloat);
  wwDBGrid4.ColumnByName('DPP').FooterValue:=FormatFloat('#,#;(#,#)',QTotalDPP.AsFloat);
  wwDBGrid4.ColumnByName('PPN10').FooterValue:=FormatFloat('#,#;(#,#)',QTotalPPN.AsFloat);
  wwDBGrid4.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0)',QTotalQTY.AsFloat);
  {MAA}
  wwDBGrid4.ColumnByName('NIL_DISC').FooterValue:=FormatFloat('#,#;(#,#)',QTotalNIL_DISC.AsFloat);
  {MAA}

end;

procedure TBukuPiutangFrm.wwDBGrid4TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder4=' ASC' then
              vorder4:=' DESC'
          else
              vorder4:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter4+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder4);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TBukuPiutangFrm.TabSheet4Show(Sender: TObject);
begin
  vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal4.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir4.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse4.Open;
  Label25.Caption:='Daftar Penjualan';
end;

procedure TBukuPiutangFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseAWAL.AsFloat:=QBrowseAWAL_BULAN.AsFloat+QBrowseAWAL_HARI.AsFloat;
  QBrowseAKHIR.AsFloat:=QBrowseAWAL_BULAN.AsFloat+
    QBrowseAWAL_HARI.AsFloat+
    QBrowseDEBET.AsFloat-
    QBrowseKREDIT.AsFloat;

end;

procedure TBukuPiutangFrm.Button1Click(Sender: TObject);
begin
  try
  QAmbilTerate.Close;
  QAmbilTerate.SetVariable('pawal',vTglAwal4.Date);
  QAmbilTerate.SetVariable('pakhir',vTglAkhir4.Date);
  QAmbilTerate.Execute;
  ShowMessage('Sukses !');
  except
    ShowMessage('Gagal !');
  end;
end;

procedure TBukuPiutangFrm.SpeedButton1Click(Sender: TObject);
begin
  vorder4:=' ASC';
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+' order by no_nota, tanggal '+vorder4);
  QBrowse4.Open;
  wwDBGrid4.GroupFieldName:='NO_NOTA';
  QBrowse4.EnableControls;
   QuickRep2.Preview;
end;

procedure TBukuPiutangFrm.SpeedButton2Click(Sender: TObject);
begin
  vorder4:=' ASC';
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+' order by nama_rekanan, no_nota, tanggal '+vorder4);
  QBrowse4.Open;
  wwDBGrid4.GroupFieldName:='NAMA_REKANAN';
  QBrowse4.EnableControls;

end;

procedure TBukuPiutangFrm.SpeedButton3Click(Sender: TObject);
begin
  vorder4:=' ASC';
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+' order by konstruksi, no_nota, tanggal '+vorder4);
  QBrowse4.Open;
  wwDBGrid4.GroupFieldName:='KONSTRUKSI';
  QBrowse4.EnableControls;


end;

procedure TBukuPiutangFrm.SpeedButton4Click(Sender: TObject);
begin
  vorder4:=' ASC';
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+' order by corak, no_nota, tanggal '+vorder4);
  QBrowse4.Open;
  wwDBGrid4.GroupFieldName:='CORAK';
  QBrowse4.EnableControls;
   end;

procedure TBukuPiutangFrm.SpeedButton5Click(Sender: TObject);
begin
  vorder4:=' ASC';
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter4+' order by kemasan, no_nota, tanggal '+vorder4);
  QBrowse4.Open;
  wwDBGrid4.GroupFieldName:='KEMASAN';
  QBrowse4.EnableControls;
end;

procedure TBukuPiutangFrm.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 inc(vnomer2);
{ if QBrowse4.RecordCount=1 then
    QRLNomer2.Caption:=''
    else      }
    QRLNomer2.Caption:=IntToStr(vnomer2);

end;

procedure TBukuPiutangFrm.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  inc(vnomer2);
  QRLNomer2.Caption:=IntToStr(vnomer2);

{  inc(vnomer);
  QRLabel22.Caption:=IntToStr(vnomer);
  vnomer2:=0;   }

 // inc(vnomer2);
{  if QBrowse4.RecordCount=1 then
    QRLNomer2.Caption:=''
    else        }
//    QRLNomer2.Caption:=IntToStr(vnomer2);

end;

procedure TBukuPiutangFrm.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vnomer);
  QRLabel22.Caption:=IntToStr(vnomer);
  vnomer2:=0;

end;

procedure TBukuPiutangFrm.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qrexpr4.Expression:='0';
end;

procedure TBukuPiutangFrm.TabSheet5Show(Sender: TObject);
begin
  QCube.Close;
  QCube.Open;
  Label25.Caption:='Rekap Per Customer';
end;

procedure TBukuPiutangFrm.BitBtn3Click(Sender: TObject);
begin
  PilihOutletFrm:=TPilihOutletFrm.Create(Self);
  PilihOutletFrm.ShowModal;
  PilihOutletFrm.Free;
end;

procedure TBukuPiutangFrm.BitBtn4Click(Sender: TObject);
var
  vc : array[1..10] of string;
  i : Integer;
begin
  //begin
  ProcCube.Close;
  ProcCube.SetVariable('pawal',vTglAwal4.date);
  ProcCube.SetVariable('pakhir',vTglAkhir4.date);
  ProcCube.SetVariable('pjenis',RadioGroup1.ItemIndex);
  ProcCube.Execute;
  QCube.Close;
  QSlsman_Dipilih.Close;
  QSlsman_Dipilih.Open;
  QSlsman_Dipilih.First;
  i:=0;
  wwDBGrid5.Selected.Clear;
  wwDBGrid5.Selected.Add('KODE_BRG'#9'17'#9'KODE'#9'F');
  wwDBGrid5.Selected.Add('KONSTRUKSI'#9'19'#9'Konstruksi'#9'F'#9'BARANG JADI');
  wwDBGrid5.Selected.Add('CORAK'#9'6'#9'Corak'#9'F'#9'BARANG JADI');
  wwDBGrid5.Selected.Add('KEMASAN'#9'14'#9'Kemasan'#9'F'#9'BARANG JADI');
  wwDBGrid5.Selected.Add('SATUAN'#9'5'#9'Satuan'#9'F'#9'BARANG JADI');
  while not QSlsman_Dipilih.Eof do
  begin
     inc(i);
     if RadioGroup1.ItemIndex=2 then
     begin
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i)+#9'7'#9'Qty'#9'F'#9+QSlsman_DipilihT1.AsString);
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i+10)+#9'7'#9'Nilai'#9'F'#9+QSlsman_DipilihT1.AsString);
     end
     else
     if RadioGroup1.ItemIndex=0 then
     begin
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i)+#9'7'#9'Qty'#9'F'#9+QSlsman_DipilihT1.AsString);
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i+10)+#9'7'#9' '#9'F'#9+QSlsman_DipilihT1.AsString);
     end
     else
     if RadioGroup1.ItemIndex=1 then
     begin
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i)+#9'7'#9'Nilai'#9'F'#9+QSlsman_DipilihT1.AsString);
       wwDBGrid5.Selected.Add('JUMLAH'+IntToStr(i+10)+#9'7'#9' '#9'F'#9+QSlsman_DipilihT1.AsString);
     end;
    QSlsman_Dipilih.Next;
  end;
  QCube.Open;
//new
{  QSlsman_Dipilih.Close;
  QSlsman_Dipilih.Open;
  QSlsman_Dipilih.First;
  i:=0;
  while not QSlsman_Dipilih.Eof do
  begin
    i:=i+1;
    vc[i]:=QSlsman_DipilihCUSTOMER.AsString+#13+QSlsman_DipilihKODE.AsString;
    QSlsman_Dipilih.Next;
  end;
    QCubeJUMLAH1.AsString:= vc[1];    }
end;

procedure TBukuPiutangFrm.QCubeCalcFields(DataSet: TDataSet);
begin
  QCubeTOTAL.AsFloat:=QCubeJUMLAH1.AsFloat+
    QCubeJUMLAH2.AsFloat+
    QCubeJUMLAH3.AsFloat+
    QCubeJUMLAH4.AsFloat+
    QCubeJUMLAH5.AsFloat+
    QCubeJUMLAH6.AsFloat+
    QCubeJUMLAH7.AsFloat+
    QCubeJUMLAH8.AsFloat+
    QCubeJUMLAH9.AsFloat+
    QCubeJUMLAH10.AsFloat+
    QCubeJUMLAH11.AsFloat+
    QCubeJUMLAH12.AsFloat+
    QCubeJUMLAH13.AsFloat+
    QCubeJUMLAH14.AsFloat+
    QCubeJUMLAH15.AsFloat+
    QCubeJUMLAH16.AsFloat+
    QCubeJUMLAH17.AsFloat+
    QCubeJUMLAH18.AsFloat+
    QCubeJUMLAH19.AsFloat+
    QCubeJUMLAH20.AsFloat;
end;

procedure TBukuPiutangFrm.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  vc : array[1..10] of string;
  i : Integer;
begin
  QSlsman_Dipilih.Close;
  QSlsman_Dipilih.Open;
  QSlsman_Dipilih.First;
  i:=0;
  while not QSlsman_Dipilih.Eof do
  begin
    i:=i+1;
    vc[i]:=QSlsman_DipilihCUSTOMER.AsString+#13+QSlsman_DipilihKODE.AsString;
    QSlsman_Dipilih.Next;
  end;
  c1.Caption:=vc[1];
  c2.Caption:=vc[2];
  c3.Caption:=vc[3];
  c4.Caption:=vc[4];
  c5.Caption:=vc[5];
  c6.Caption:=vc[6];
  c7.Caption:=vc[7];
  c8.Caption:=vc[8];
  c9.Caption:=vc[9];
  c10.Caption:=vc[10];
end;

procedure TBukuPiutangFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RadioGroup1.ItemIndex=0 then
    QRLTitle3.Caption:='REKAPITULASI JUMLAH PENGAMBILAN BARANG CUSTOMER'
    ELSE
    QRLTitle3.Caption:='REKAPITULASI NILAI NOTA CUSTOMER';
  QRLPeriode3.Caption:='Periode : '+VTglAwal4.Text+' S/D '+vTglAkhir4.Text;
end;

procedure TBukuPiutangFrm.QBrowse2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(trunc(QBrowse2AWAL.AsFloat)<>0) or
    (trunc(QBrowse2DEBET.AsFloat)<>0) or
    (trunc(QBrowse2KREDIT.AsFloat)<>0);
end;

procedure TBukuPiutangFrm.TabSheet6Show(Sender: TObject);
begin
//  QBrowseDetail2.SetVariable('pawal',Trunc(VTglAwal.Date));
 // QBrowseDetail2.SetVariable('pakhir',Trunc(VTglAkhir.Date));
  Label25.Caption:='Buku Pembantu';
  QBrowseDetail2.Close;
  QBrowseDetail2.Open;

end;

procedure TBukuPiutangFrm.QBrowseDetail2BeforeOpen(DataSet: TDataSet);
begin
// if ECari.Text='' then
  //   QBrowseDetail2.SetVariable('pnama_rekanan','%')
   //  else
//     QBrowseDetail2.SetVariable('pnama_rekanan','%'+ECari.Text+'%');
  QBrowseDetail2.SetVariable('pawal',VTglAwal.Date);
  QBrowseDetail2.SetVariable('pakhir',VTglAkhir.Date);
 // QBrowseDetail2.SetVariable('pkd_perk',LookPerkiraan.Text+'%');
end;

procedure TBukuPiutangFrm.QBrowse4BeforeQuery(Sender: TOracleDataSet);
begin
  case rgJnsNota.ItemIndex of
  0 : QBrowse4.SetVariable('myparam2','');
  1 : QBrowse4.SetVariable('myparam2',' where kode not in (''100710'',''100662'')');
  2 : QBrowse4.SetVariable('myparam2',' where kode=''100662''');
  3 : QBrowse4.SetVariable('myparam2',' where kode=''100710''');
  end;
end;

procedure TBukuPiutangFrm.QTotalBeforeQuery(Sender: TOracleDataSet);
begin
  case rgJnsNota.ItemIndex of
  0 : QTotal.SetVariable('myparam2','');
  1 : QTotal.SetVariable('myparam2',' where kode not in (''100710'',''100662'')');
  2 : QTotal.SetVariable('myparam2',' where kode=''100662''');
  3 : QTotal.SetVariable('myparam2',' where kode=''100710''');
  end;

end;

procedure TBukuPiutangFrm.TabSheet7Show(Sender: TObject);
begin
{azmi}
  Label25.Caption:='Daftar Retur Penjualan';
  vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal4.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir4.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse7.Open;
{azmi}
end;

procedure TBukuPiutangFrm.QBrowse7BeforeQuery(Sender: TOracleDataSet);
begin
{azmi}
  case rgJnsNota7.ItemIndex of
  0 : QBrowse7.SetVariable('myparam2',' where qty>0 order by no_nota');
  1 : QBrowse7.SetVariable('myparam2',' where qty>0 and kode not in (''100710'',''100662'') order by no_nota');
  2 : QBrowse7.SetVariable('myparam2',' where qty>0 and kode=''100662'' order by no_nota');
  3 : QBrowse7.SetVariable('myparam2',' where qty>0 and kode=''100710'' order by no_nota');
  end;
{azmi}
end;

procedure TBukuPiutangFrm.vTglAwal7Change(Sender: TObject);
begin
{azmi}
  vTglAkhir7.Date:=Trunc(EndOfTheMonth(VTglAwal7.Date));
{azmi}
end;

procedure TBukuPiutangFrm.vTglAkhir7Change(Sender: TObject);
begin
{azmi}
  if VTglAwal7.Date>vTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir7.Date:=VTglAwal7.Date;
  end;
{azmi}
end;

procedure TBukuPiutangFrm.cbOtomatis7Click(Sender: TObject);
begin
{azmi}
  if cbOtomatis7.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid7.Options:=wwDBGrid7.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid7.Options:=wwDBGrid7.Options-[dgAlwaysShowSelection];
  ECari7.SetFocus;
{azmi}
end;

procedure TBukuPiutangFrm.dbcField7Enter(Sender: TObject);
{azmi}
var
  i : Word;
begin
  if (QBrowse7.Active) and (dbcField7.Items.Count=1) then
  for i:=0 to wwDBGrid7.FieldCount-1 do
    if UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL' then
      dbcField7.Items.Add(wwDBGrid7.Columns[i].FieldName);end;
{azmi}
procedure TBukuPiutangFrm.vOperand7Click(Sender: TObject);
begin
{azmi}
  if vOperand7.Caption='LIKE' then
    vOperand7.Caption:='='
    else
      vOperand7.Caption:='LIKE';
{azmi}
end;

procedure TBukuPiutangFrm.cbTanggal7Click(Sender: TObject);
begin
{azmi}
  if cbTanggal7.Checked then
  begin
    VTglAwal7.Enabled:=cbTanggal7.Checked;
    vTglAkhir7.Enabled:=cbTanggal7.Checked;
    VTglAwal7.SetFocus;
  end
  else
    ECari7.SetFocus;
{azmi}
end;

procedure TBukuPiutangFrm.ECari7Change(Sender: TObject);
begin
{azmi}
  if cbOtomatis7.Checked then
  begin
      QBrowse7.SearchRecord(wwDBGrid7.Columns[0].FieldName,ECari7.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
{azmi}
end;

procedure TBukuPiutangFrm.BitBtn7Click(Sender: TObject);
{azmi}
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal7.Checked then
    vfilter7:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal7.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir7.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter7:=' where (';
  if (QBrowse7.FieldCount>=1) then
  begin
    if dbcField7.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid7.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse7.FieldByName(wwDBGrid7.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand7.Caption='LIKE' then
                vfilter7:=vfilter7+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                   vfilter7:=vfilter7+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand7.Caption='LIKE' then
                vfilter7:=vfilter7+' or '+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                  vfilter7:=vfilter7+' or '+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+''''
        end;
      end;
    end
    else
      if vOperand7.Caption='LIKE' then
         vfilter7:=vfilter7+dbcField7.Text+' like ''%'+ECari7.Text+'%'''
         else
           vfilter7:=vfilter7+dbcField7.Text+' = '''+ECari7.Text+'''';
    vfilter7:=vfilter7+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse7.Active then
      vorder7:=' order by '+wwDBGrid7.Columns[0].FieldName
      else
        vorder7:=' order by no_nota';

  end;
  QBrowse7.DisableControls;
  QBrowse7.Close;
  QBrowse7.SetVariable('myparam',vfilter7+' and qty>0 '+vorder7);
  QBrowse7.Open;
  QBrowse7.EnableControls;
  QTotal7.close;
  QTotal7.SetVariable('myparam',vfilter7+' and qty>0 ');
  QTotal7.Open;
  wwDBGrid7.ColumnByName('SUB_TOTAL').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7SUB_TOTAL.AsFloat);
  wwDBGrid7.ColumnByName('DPP').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7DPP.AsFloat);
  wwDBGrid7.ColumnByName('PPN10').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7PPN.AsFloat);
  wwDBGrid7.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0)',QTotal7QTY.AsFloat)
{azmi}

end;

procedure TBukuPiutangFrm.BitBtn6Click(Sender: TObject);
{azmi}
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal7.Checked then
    vfilter7:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal7.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter7:=' where (';
  if (QBrowse7.FieldCount>=1) then
  begin
    if dbcField7.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid7.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse7.FieldByName(wwDBGrid7.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand7.Caption='LIKE' then
                vfilter7:=vfilter7+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                   vfilter7:=vfilter7+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand7.Caption='LIKE' then
                vfilter7:=vfilter7+' or '+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                  vfilter7:=vfilter7+' or '+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+''''
        end;
      end;
    end
    else
      if vOperand7.Caption='LIKE' then
         vfilter7:=vfilter7+dbcField7.Text+' like ''%'+ECari7.Text+'%'''
         else
           vfilter7:=vfilter7+dbcField7.Text+' = '''+ECari7.Text+'''';
    vfilter7:=vfilter7+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse7.Active then
      vorder7:=' order by '+wwDBGrid7.Columns[0].FieldName
      else
        vorder7:=' order by no_nota';

  end;
  QBrowse8.DisableControls;
  QBrowse7.Close;
  QBrowse7.SetVariable('myparam',vfilter7+' and qty>0 '+vorder7);
  QBrowse7.Open;
  QBrowse7.EnableControls;
  QTotal7.close;
  QTotal7.SetVariable('myparam',vfilter7+' and qty>0 ');
  QTotal7.Open;
  wwDBGrid7.ColumnByName('SUB_TOTAL').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7SUB_TOTAL.AsFloat);
  wwDBGrid7.ColumnByName('DPP').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7DPP.AsFloat);
  wwDBGrid7.ColumnByName('PPN10').FooterValue:=FormatFloat('#,#;(#,#)',QTotal7PPN.AsFloat);
  wwDBGrid7.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0)',QTotal7QTY.AsFloat)
{azmi}


end;

procedure TBukuPiutangFrm.TabSheet8Show(Sender: TObject);
begin
Label25.Caption:='Daftar Nota Koreksi';
end;

end.
