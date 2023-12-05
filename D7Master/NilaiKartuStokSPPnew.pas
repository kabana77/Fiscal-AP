unit NilaiKartuStokSPPnew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, wwDialog, wwrcdvw, Wwdatsrc, OracleData, wwdblook, Wwdbdlg,
  wwcheckbox, wwSpeedButton, wwDBNavigator, wwclearpanel, ExtCtrls,
  wwdbedit, StdCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, QuickRpt, QRCtrls, ComCtrls, Mask, Wwdbspin, Buttons,
  Wwdotdot, Wwdbcomb, Oracle, jpeg;

type
  TNilaiKartuStokSPPnewFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    dsQRiwayatTransaksi: TwwDataSource;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid2: TwwDBGrid;
    Label8: TLabel;
    RadioGroup1: TRadioGroup;
    QLookItem: TOracleDataSet;
    QLookItemKD_JNS_ITEM: TStringField;
    QLookItemKD_ITEM: TStringField;
    QLookItemNAMA_ITEM: TStringField;
    QLookItemSAT1: TStringField;
    QLookItemNO_PART: TStringField;
    QLookItemKELOMPOK: TStringField;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QLookSubBagian: TOracleDataSet;
    QLookSubBagianKODE: TStringField;
    QLookSubBagianBAGIAN: TStringField;
    QLookSubBagianSUB_BAGIAN: TStringField;
    QLookSubBagianID_BAG: TStringField;
    QLookSubBagianID_SUB_BAG: TStringField;
    QuickRep2: TQuickRep;
    PageHeaderBand2: TQRBand;
    TitleBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    DetailBand2: TQRBand;
    SummaryBand2: TQRBand;
    PageFooterBand2: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLTitle2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText29: TQRDBText;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel27: TQRLabel;
    Label14: TLabel;
    vRecord: TwwDBSpinEdit;
    QRDBText43: TQRDBText;
    QRLabel28: TQRLabel;
    cbPreview: TCheckBox;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    dbcField: TwwDBComboBox;
    vOperand: TLabel;
    LTitle: TLabel;
    BitBtn2: TBitBtn;
    QProses: TOracleQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label6: TLabel;
    QRiwayatTransaksi: TOracleDataSet;
    QRDBText12: TQRDBText;
    QNilaiMasuk: TOracleDataSet;
    QNilaiMasukKD_ITEM: TStringField;
    QNilaiMasukNILAI_BELI: TFloatField;
    QNilaiMasukNILAI_KOREKSI: TFloatField;
    QNilaiAwal: TOracleDataSet;
    QNilaiAwalKD_ITEM: TStringField;
    QNilaiAwalNILAI_AWAL: TFloatField;
    BitBtn3: TBitBtn;
    QUpdate: TOracleQuery;
    LMDProgress1: TProgressBar;
    QUpdateMutasi: TOracleQuery;
    BitBtn4: TBitBtn;
    QTutupTahun: TOracleQuery;
    QTutupTransaksi: TOracleDataSet;
    QTutupTransaksiTUTUP: TDateTimeField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dsQTutupTransaksi: TwwDataSource;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    QTotal: TOracleDataSet;
    QTotalHARGA_PO: TFloatField;
    QTotalHARGA_NOTA: TFloatField;
    QJurnal: TOracleQuery;
    cbStok: TCheckBox;
    RadioGroup2: TRadioGroup;
    QRiwayatTransaksiTANGGAL: TDateTimeField;
    QRiwayatTransaksiKD_ITEM: TStringField;
    QRiwayatTransaksiNO_NOTA: TStringField;
    QRiwayatTransaksiIN_QTY: TFloatField;
    QRiwayatTransaksiIN_HRG: TFloatField;
    QRiwayatTransaksiIN_VAL: TFloatField;
    QRiwayatTransaksiOUT_QTY: TFloatField;
    QRiwayatTransaksiOUT_HRG: TFloatField;
    QRiwayatTransaksiOUT_VAL: TFloatField;
    QRiwayatTransaksiSALDO_QTY: TFloatField;
    QRiwayatTransaksiSALDO_VAL: TFloatField;
    QRiwayatTransaksiHRG_RATA2: TFloatField;
    QRiwayatTransaksiANTRIAN: TFloatField;
    QRiwayatTransaksiKD_JNS_ITEM: TStringField;
    QRiwayatTransaksiSATUAN: TStringField;
    QRiwayatTransaksiNAMA_ITEM: TStringField;
    QRiwayatTransaksiOPR_INSERT: TStringField;
    QRiwayatTransaksiTGL_INSERT: TDateTimeField;
    DBText4: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    QBrowse: TOracleDataSet;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseQTY_AWAL: TFloatField;
    QBrowseHRG_AWAL: TFloatField;
    QBrowseVAL_AWAL: TFloatField;
    QBrowseIN_QTY: TFloatField;
    QBrowseIN_VAL: TFloatField;
    QBrowseOUT_QTY: TFloatField;
    QBrowseOUT_VAL: TFloatField;
    QBrowseSALDO_QTY: TFloatField;
    QBrowseHRG_RATA2: TFloatField;
    QBrowseSALDO_VAL: TFloatField;
    QBrowseKD_JNS_ITEM: TStringField;
    TabSheet3: TTabSheet;
    QRekapPemakaianPerBag: TOracleDataSet;
    dsQRekapPemakaianPerBag: TwwDataSource;
    wwDBGrid3: TwwDBGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    wwDBGrid4: TwwDBGrid;
    QRekapPerMesin: TOracleDataSet;
    dsQRekapPerMesin: TwwDataSource;
    Panel8: TPanel;
    QRekapPerMesinID_SUB_BAG: TStringField;
    QRekapPerMesinSUB_BAGIAN: TStringField;
    QRekapPerMesinTOTAL_QTY: TFloatField;
    QRekapPerMesinTOTAL_VAL: TFloatField;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    QRekapPemakaianPerBagID_SUB_BAG: TStringField;
    QRekapPemakaianPerBagNO_NOTA: TStringField;
    QRekapPemakaianPerBagKD_ITEM: TStringField;
    QRekapPemakaianPerBagNAMA_ITEM: TStringField;
    QRekapPemakaianPerBagSATUAN: TStringField;
    QRekapPemakaianPerBagOUT_QTY: TFloatField;
    QRekapPemakaianPerBagOUT_VAL: TFloatField;
    Panel9: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRImage2: TQRImage;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape17: TQRShape;
    QRLabel40: TQRLabel;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape16: TQRShape;
    QRShape28: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRBand6: TQRBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRExpr16: TQRExpr;
    QRLabel48: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRBand7: TQRBand;
    QRSysData6: TQRSysData;
    QRDBText31: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand5: TQRBand;
    QRSysData5: TQRSysData;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText32: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QuickRep4: TQuickRep;
    QRBand8: TQRBand;
    QRLabel2: TQRLabel;
    QRBand9: TQRBand;
    QRDBText5: TQRDBText;
    QRBand10: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand11: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand12: TQRBand;
    QRSysData7: TQRSysData;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText39: TQRDBText;
    QRBand13: TQRBand;
    QRSysData8: TQRSysData;
    QRDBText40: TQRDBText;
    QuickRep1: TQuickRep;
    QRBand14: TQRBand;
    QRBand15: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    QRBand16: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape18: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRShape43: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel50: TQRLabel;
    QRBand17: TQRBand;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRExpr8: TQRExpr;
    QRLabel61: TQRLabel;
    QRBand18: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRBand19: TQRBand;
    QRSysData2: TQRSysData;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape59: TQRShape;
    QRShape61: TQRShape;
    QRShape67: TQRShape;
    QRShape70: TQRShape;
    QRExpr9: TQRExpr;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape44: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape51: TQRShape;
    QRLabel15: TQRLabel;
    QRLBerjalan: TQRLabel;
    QRLabel17: TQRLabel;
    QRLBerjalan2: TQRLabel;
    QRLabel30: TQRLabel;
    QRLBerjalan3: TQRLabel;
    QRLBerjalan4: TQRLabel;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape60: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape64: TQRShape;
    QRLabel56: TQRLabel;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel57: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText41: TQRDBText;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRDBText42: TQRDBText;
    QRDBText44: TQRDBText;
    QRLMesin: TQRLabel;
    PanelRiwayat: TPanel;
    PanelEdit: TPanel;
    QTransaksi: TOracleDataSet;
    QTransaksiKD_TRANSAKSI: TStringField;
    QTransaksiTANGGAL: TDateTimeField;
    QTransaksiNO_REFF: TStringField;
    QTransaksiNO_NOTA: TStringField;
    QTransaksiKETERANGAN: TStringField;
    QTransaksiISPOST: TStringField;
    QTransaksiSTATUS: TStringField;
    QTransaksiTGL_INSERT: TDateTimeField;
    QTransaksiOPR_INSERT: TStringField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QTransaksiNO_REG_PEMAKAIAN: TIntegerField;
    QTransaksiNO_REG_BON: TIntegerField;
    QTransaksiJNS_KOREKSI: TStringField;
    QDetail: TOracleDataSet;
    QDetailSATUAN: TStringField;
    QDetailNO_REG_PEMAKAIAN: TIntegerField;
    QDetailNO_REG_BON: TIntegerField;
    QDetailKD_ITEM: TStringField;
    QDetailMESIN: TStringField;
    QDetailQTY_STOK: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailQTY_BON: TFloatField;
    QDetailQTY_VALID: TFloatField;
    QDetailQTY: TFloatField;
    QDetailHARGA: TFloatField;
    QDetailSTATUS: TStringField;
    QDetailID_BAG: TStringField;
    QDetailID_SUB_BAG: TStringField;
    QDetailKD_SUB_LOKASI: TStringField;
    QDetailKD_LOKASI: TStringField;
    QDetailLOKASI: TStringField;
    QDetailOPR_INSERT: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailKD_MESIN: TStringField;
    QDetailNO_MESIN_TENUN: TStringField;
    QDetailKD_JNS_ITEM: TStringField;
    dsQTransaksi: TwwDataSource;
    PEMaster: TPanel;
    Label22: TLabel;
    DBText10: TDBText;
    wwCheckBox1: TwwCheckBox;
    PEDetail: TPanel;
    wwDBGrid5: TwwDBGrid;
    PEControls: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Delete: TwwNavButton;
    dsQDetail: TwwDataSource;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure QLookItemBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseBeforeOpen(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure QLookSubBagianBeforeOpen(DataSet: TDataSet);
    procedure TabSheet1Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ColumnHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure QNilaiAwalBeforeOpen(DataSet: TDataSet);
    procedure QNilaiMasukBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure QRiwayatTransaksiCalcFields(DataSet: TDataSet);
    procedure cbStokClick(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure QTutupTransaksiBeforeOpen(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure wwDBGrid4URLOpen(Sender: TObject; var URLLink: String;
      Field: TField; var UseDefault: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TabSheet4Show(Sender: TObject);
    procedure wwDBGrid5CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid5Enter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure wwDBGrid2RowChanged(Sender: TObject);
    procedure QTransaksiAfterDelete(DataSet: TDataSet);
    procedure QTransaksiAfterPost(DataSet: TDataSet);
    procedure QTransaksiBeforeDelete(DataSet: TDataSet);
    procedure QDetailBeforeDelete(DataSet: TDataSet);
    procedure QDetailBeforeEdit(DataSet: TDataSet);
    procedure wwDBGrid2Enter(Sender: TObject);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
    vakhir:real;
    xawal, xakhir : tdate;
  t1,
  t2,
  t3,
  t4,
  t5,
  t6,t7,t8 : real;



  public
    { Public declarations }
    vkd_jns_item, vkd_bag : String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
    vberjalan, vberjalan2, vberjalan3, vberjalan4 : real;
  end;

var
  NilaiKartuStokSPPnewFrm: TNilaiKartuStokSPPnewFrm;

implementation

uses DM, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan, Sisdur,
  NilaiKartuStokBB, NilaiKartuStokBBnew;

{$R *.dfm}

procedure TNilaiKartuStokSPPnewFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  NilaiKartuStokSPPnewFrm:=Nil;
end;

procedure TNilaiKartuStokSPPnewFrm.FormCreate(Sender: TObject);
begin
  DMFrm.QLookSubBagian.Close;
  QLookItem.Close;
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TNilaiKartuStokSPPnewFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TNilaiKartuStokSPPnewFrm.TabSheet2Show(Sender: TObject);
var
   v1, v2, v3, v4 : REAL;
begin
  wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
//  BtnExport.Enabled:=False;
  QRiwayatTransaksi.DisableControls;
  QRiwayatTransaksi.Close;
  QRiwayatTransaksi.SetVariable('kd_item',QBrowseKD_ITEM.AsString);
  QRiwayatTransaksi.SetVariable('pawal',trunc(VTglAwal.Date));
  QRiwayatTransaksi.SetVariable('pakhir',trunc(VTglAkhir.Date)+1-1/86400);     
  QRiwayatTransaksi.Open;
  v1:=0;
  v2:=0;
  v3:=0;
  v4:=0;
  while not QRiwayatTransaksi.Eof do
  begin
      v1:=v1+QRiwayatTransaksiIN_QTY.AsFloat;
      v2:=v2+QRiwayatTransaksiIN_VAL.AsFloat;
      v3:=v3+QRiwayatTransaksiOUT_QTY.AsFloat;
      v4:=v4+QRiwayatTransaksiOUT_VAL.AsFloat;
      QRiwayatTransaksi.Next;
  end;
  QRiwayatTransaksi.EnableControls;
  wwDBGrid2.ColumnByName('IN_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v1);
  wwDBGrid2.ColumnByName('IN_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v2);
  wwDBGrid2.ColumnByName('OUT_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v3);
  wwDBGrid2.ColumnByName('OUT_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v4);

end;

procedure TNilaiKartuStokSPPnewFrm.QLookItemBeforeOpen(DataSet: TDataSet);
begin
  QLookItem.SetVariable('kd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid1DblClick(Sender: TObject);
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

procedure TNilaiKartuStokSPPnewFrm.ECariChange(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
      QBrowse.SearchRecord(wwDBGrid1.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;
end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  x : Integer;
  w1, w2, w3, w4, w5, w6, w7, w8 : REAL;
begin
  vpertama:=True;
  vfilter:=' where (';
  if (QBrowse.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
      begin
        if (QBrowse.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
      else
         vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
         vfilter:=vfilter+')';
        if QBrowse.Active then
          vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
        else
          vorder:=' order by kelompok, nama_item';
      end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  vakhir:=0;

  w1:=0;
  w2:=0;
  w3:=0;
  w4:=0;
  w5:=0;
  w6:=0;
  w7:=0;
  w8:=0;

  QBrowse.Open;

  x:=0;
  while not QBrowse.Eof do
  begin
    inc(x);
      w1:=w1+QBrowseQTY_AWAL.AsFloat;
      w2:=w2+QBrowseVAL_AWAL.AsFloat;
      w3:=w3+QBrowseIN_QTY.AsFloat;
      w4:=w4+QBrowseIN_VAL.AsFloat;
      w5:=w5+QBrowseOUT_QTY.AsFloat;
      w6:=w6+QBrowseOUT_VAL.AsFloat;
      w7:=w7+QBrowseSALDO_QTY.AsFloat;
      w8:=w8+QBrowseSALDO_VAL.AsFloat;
      QBrowse.Next;
  end;

  QBrowse.EnableControls;

  wwDBGrid1.ColumnByName('QTY_AWAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w1);
  wwDBGrid1.ColumnByName('VAL_AWAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w2);
  wwDBGrid1.ColumnByName('IN_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w3);
  wwDBGrid1.ColumnByName('IN_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w4);
  wwDBGrid1.ColumnByName('OUT_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w5);
  wwDBGrid1.ColumnByName('OUT_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w6);
  wwDBGrid1.ColumnByName('SALDO_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w7);
  wwDBGrid1.ColumnByName('SALDO_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w8);
end;

procedure TNilaiKartuStokSPPnewFrm.FormShow(Sender: TObject);
begin
  VTglAwal.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  vfilter:='';

end;

procedure TNilaiKartuStokSPPnewFrm.QBrowseBeforeOpen(DataSet: TDataSet);
begin
  QBrowse.SetVariable('kd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn5Click(Sender: TObject);
begin
  DMFrm.QDateTime.Close;
  DMFrm.QDateTime.Open;
  case PageControl1.ActivePageIndex of
  0 : begin
        QBrowse.DisableControls;
        QuickRep3.Preview;
        QBrowse.EnableControls;
      end;
  1 : begin
        QRiwayatTransaksi.DisableControls;
        QuickRep2.Preview;
        QRiwayatTransaksi.EnableControls;
      end;
  2 : begin
        case PageControl2.ActivePageIndex of
        0 : begin
              QRekapPerMesin.DisableControls;
              QuickRep1.Preview;
              QRekapPerMesin.EnableControls;
            end;
        1 : begin
              QRekapPerMesin.DisableControls;
              QuickRep4.Preview;
              QRekapPerMesin.EnableControls;
            end;
        end;
      end;

  end;
end;

procedure TNilaiKartuStokSPPnewFrm.QLookSubBagianBeforeOpen(DataSet: TDataSet);
begin
  QLookSubBagian.SetVariable('kd_bag',vkd_bag);
end;

procedure TNilaiKartuStokSPPnewFrm.TabSheet1Show(Sender: TObject);
begin
  if ((upperCase(DMFrm.OSUser.LogonUsername)='ARIF') or
  (upperCase(DMFrm.OSUser.LogonUsername)='AZMI') or
  (upperCase(DMFrm.OSUser.LogonUsername)='SALAM') or
  (upperCase(DMFrm.OSUser.LogonUsername)='ADMIN') or
  (upperCase(DMFrm.OSUser.LogonUsername)='ASTRI') or
  (upperCase(DMFrm.OSUser.LogonUsername)='JUMHAN')) then
  begin
    BitBtn3.Enabled:=True;
    BitBtn4.Enabled:=True;
  end
  else
  begin
    BitBtn3.Enabled:=False;
    BitBtn4.Enabled:=False;
  end;
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  QBrowse.Open;
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
  QTutupTransaksi.Open;
end;

procedure TNilaiKartuStokSPPnewFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TNilaiKartuStokSPPnewFrm.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vrecord_ke);
  DetailBand2.ForceNewPage:=(vrecord_ke>Round(vRecord.Value)-1);
end;

procedure TNilaiKartuStokSPPnewFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=Trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TNilaiKartuStokSPPnewFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0 : vRecord.Value:=40;
  1 : vRecord.Value:=20;
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TNilaiKartuStokSPPnewFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  1 : wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TNilaiKartuStokSPPnewFrm.BtnExportClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
       if QBrowse.Active then
          begin
            DMFrm.SaveDialog1.DefaultExt:='XLK';
            DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
            DMFrm.SaveDialog1.FileName:=LTitle.Caption;
            wwDBGrid1.ExportOptions.TitleName:=LTitle.Caption;
            if (DMFrm.SaveDialog1.Execute)then
              begin
              try
               wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;

               wwDBGrid1.ExportOptions.Save;
               wwDBGrid1.BringToFront;
               ShowMessage('Simpan Sukses !');
              except
               ShowMessage('Simpan Gagal!!');
              end;
            end;
            end
              else
              ShowMessage('Tabel belum di-OPEN !');
      end;
  1 : begin
       if QRiwayatTransaksi.Active then
          begin
            DMFrm.SaveDialog1.DefaultExt:='XLK';
            DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
            DMFrm.SaveDialog1.FileName:=LTitle.Caption;
            wwDBGrid2.ExportOptions.TitleName:=LTitle.Caption;
            if (DMFrm.SaveDialog1.Execute)then
              begin
              try
               wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
               wwDBGrid2.ExportOptions.Save;
               wwDBGrid2.BringToFront;
               ShowMessage('Simpan Sukses !');
              except
               ShowMessage('Simpan Gagal!!');
              end;
              end;
            end
              else
              ShowMessage('Tabel belum di-OPEN !');
      end;
  2 : begin
        case PageControl2.ActivePageIndex of
        0 : begin
             if QRekapPerMesin.Active then
                begin
                  DMFrm.SaveDialog1.DefaultExt:='XLK';
                  DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                  DMFrm.SaveDialog1.FileName:=LTitle.Caption;
                  wwDBGrid4.ExportOptions.TitleName:=LTitle.Caption;
                  if (DMFrm.SaveDialog1.Execute)then
                    begin
                    try
                     wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                     wwDBGrid4.ExportOptions.Save;
                     wwDBGrid4.BringToFront;
                     ShowMessage('Simpan Sukses !');
                    except
                     ShowMessage('Simpan Gagal!!');
                    end;
                    end;
                  end
                    else
                    ShowMessage('Tabel belum di-OPEN !');
             end;

        1 : begin
             if QRekapPemakaianPerBag.Active then
                begin
                  DMFrm.SaveDialog1.DefaultExt:='XLK';
                  DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                  DMFrm.SaveDialog1.FileName:=LTitle.Caption;
                  wwDBGrid3.ExportOptions.TitleName:=LTitle.Caption;
                  if (DMFrm.SaveDialog1.Execute)then
                    begin
                    try
                     wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                     wwDBGrid3.ExportOptions.Save;
                     wwDBGrid3.BringToFront;
                     ShowMessage('Simpan Sukses !');
                    except
                     ShowMessage('Simpan Gagal!!');
                    end;
                    end;
                  end
                    else
                    ShowMessage('Tabel belum di-OPEN !');
             end;

        end;
      end;
     end;
end;

procedure TNilaiKartuStokSPPnewFrm.DBText5Click(Sender: TObject);
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
  DMFrm.SavePictureDialog1.FileName:=LTitle.Caption;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TNilaiKartuStokSPPnewFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TNilaiKartuStokSPPnewFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn2Click(Sender: TObject);
var
  vmybulan : string;
  i : Integer;
  w1, w2, w3, w4, w5, w6, w7, w8 : REAL;
 // v1, v2, v3, v4, v5, v6 : REAL;

begin
  QBrowse.DisableControls;
  QBrowse.Close;

 { vmybulan:='p.n'+FormatDateTime('mm',VTglAwal.Date)+' as nilai_beli, q.n'+FormatDateTime('mm',VTglAwal.Date)+' as nilai_koreksi';
  QNilaiMasuk.Close;
  QNilaiMasuk.SetVariable('mybulan',vmybulan);
  QNilaiMasuk.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
  QNilaiMasuk.Open;
  vmybulan:='p.n'+FormatFloat('00',MonthOf(VTglAwal.Date)-1)+' as nilai_awal';
  QNilaiAwal.Close;
  QNilaiAwal.SetVariable('mybulan',vmybulan);
  QNilaiAwal.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
  QNilaiAwal.Open;
  DMFrm.OS.Commit;
  if (xawal<>VTglAwal.Date) or (xakhir<>vTglAkhir.Date) then
  begin
  xawal:=VTglAwal.Date;
  xakhir:=vTglAkhir.Date;   }

  QProses.Close;
  QProses.SetVariable('kd_jns_item',vkd_jns_item);
  QProses.SetVariable('pawal',VTglAwal.Date);
  QProses.SetVariable('pakhir',vTglAkhir.Date);
  QProses.Execute;

//  end;

  w1:=0;
  w2:=0;
  w3:=0;
  w4:=0;
  w5:=0;
  w6:=0;
  w7:=0;
  w8:=0;

 { t1:=0;
  t2:=0;
  t3:=0;
  t4:=0;
  t5:=0;
  t6:=0;    }

  QBrowse.Open;
  i:=0;
  LMDProgress1.Max:=QBrowse.RecordCount;
  LMDProgress1.Position:=i;

  while not QBrowse.Eof do
  begin
    inc(i);
    LMDProgress1.Position:=i;

      w1:=w1+QBrowseQTY_AWAL.AsFloat;
//      if QBrowseCQty_Beli.AsFloat<>0 then
      w2:=w2+QBrowseVAL_AWAL.AsFloat;
//      if QBrowseCQty_Koreksi1.AsFloat<>0 then
      w3:=w3+QBrowseIN_QTY.AsFloat;
      w4:=w4+QBrowseIN_VAL.AsFloat;
      w5:=w5+QBrowseOUT_QTY.AsFloat;
      w6:=w6+QBrowseOUT_VAL.AsFloat;
      w7:=w7+QBrowseSALDO_QTY.AsFloat;
      w8:=w8+QBrowseSALDO_VAL.AsFloat;
      QBrowse.Next;
  end;

 // QBrowse.First;
  QBrowse.EnableControls;

  wwDBGrid1.ColumnByName('QTY_AWAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w1);
  wwDBGrid1.ColumnByName('VAL_AWAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w2);
  wwDBGrid1.ColumnByName('IN_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w3);
  wwDBGrid1.ColumnByName('IN_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w4);
  wwDBGrid1.ColumnByName('OUT_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w5);
  wwDBGrid1.ColumnByName('OUT_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w6);
  wwDBGrid1.ColumnByName('SALDO_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w7);
  wwDBGrid1.ColumnByName('SALDO_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',w8);

{  wwDBGrid1.ColumnByName('KOREKSI_OUT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v5);
  wwDBGrid1.ColumnByName('CQTY_KOREKSI2').FooterValue:=FormatFloat('#,##0.######;(#,##0.######);-',w5);
  wwDBGrid1.ColumnByName('AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',v6);
  wwDBGrid1.ColumnByName('CQTY_AKHIR').FooterValue:=FormatFloat('#,##0.######;(#,##0.######);-',w6);
  wwDBGrid1.ColumnByName('NILAI_PAKAI').FooterValue:=FormatFloat('#,#;(#,#);-',w7);
  wwDBGrid1.ColumnByName('NIL_KOREKSI_OUT').FooterValue:=FormatFloat('#,#;(#,#);-',w8);

  wwDBGrid1.ColumnByName('NILAI_AWAL').FooterValue:=FormatFloat('#,#;(#,#);-',t1);
  wwDBGrid1.ColumnByName('NILAI_BELI').FooterValue:=FormatFloat('#,#;(#,#);-',t2);
  wwDBGrid1.ColumnByName('NILAI_KOREKSI').FooterValue:=FormatFloat('#,#;(#,#);-',t3);
  wwDBGrid1.ColumnByName('MASUK_NILAI').FooterValue:=FormatFloat('#,#;(#,#);-',t4);
  wwDBGrid1.ColumnByName('KELUAR_NILAI').FooterValue:=FormatFloat('#,#;(#,#);-',t5);

  wwDBGrid1.ColumnByName('NILAI_AKHIR').FooterValue:=FormatFloat('#,#;(#,#);-',t6);

  QTutupTransaksi.Open   }
end;

procedure TNilaiKartuStokSPPnewFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLMesin.Caption:=QRekapPerMesinSUB_BAGIAN.AsString;
  QRLabel4.Caption:= DateToStr(VTglAwal.Date)+' s/d '+DateToStr(vTglAkhir.date);
end;

procedure TNilaiKartuStokSPPnewFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle2.Caption:='RIWAYAT TRANSAKSI';
  vberjalan:=QBrowseQTY_AWAL.AsFloat;
  vberjalan2:=QBrowseVAL_AWAL.AsFloat;
  QRLBerjalan.Caption:=FormatFloat('#.#,#;(#.#,#)',vberjalan);
  QRLBerjalan2.Caption:=FormatFloat('#.#,#;(#.#,#)',vberjalan2);
 // vberjalan:=QBrowseAWAL.AsFloat;
end;

procedure TNilaiKartuStokSPPnewFrm.QBrowseCalcFields(DataSet: TDataSet);
var
  v1, v2 : real;
begin
{  QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
  QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
  QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
  QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
  QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
  QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;

  v1:=0; v2:=0;
  if QBrowseAWAL.AsFloat>0 then
    QBrowseAWAL_AVG.AsFloat:=QBrowseNILAI_AWAL.AsFloat/QBrowseAWAL.AsFloat;
  if QBrowseCQty_Beli.AsFloat<>0 then
    v1:=QBrowseNILAI_BELI.AsFloat;
  if QBrowseCQty_Koreksi1.AsFloat<>0 then
    v2:=QBrowseNILAI_KOREKSI.AsFloat;
  QBrowseMASUK_NILAI.AsFloat:=v1+v2;
  if (QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat)>0 then
    QBrowseMASUK_AVG.AsFloat:=(QBrowseNILAI_BELI.AsFloat+QBrowseNILAI_KOREKSI.AsFloat)/(QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat);
  IF (QBrowseAWAL.AsFloat+QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat)>0 THEN
    QBrowseHRG_AVG.AsFloat:=(QBrowseMASUK_NILAI.AsFloat+QBrowseNILAI_AWAL.AsFloat)/
      (QBrowseAWAL.AsFloat+QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat);
 //  if QBrowseHRG_AVG.AsFloat>0 then
     QBrowseNILAI_pakai.AsFloat:=QBrowseHRG_AVG.AsFloat*QBrowsePEMAKAIAN.AsFloat;
 QBrowseNIL_KOREKSI_out.AsFloat:=QBrowseHRG_AVG.AsFloat*QBrowsekoreksi_out.AsFloat;
 QBrowseNILAI_PAKAI.AsFloat:=QBrowseHRG_AVG.AsFloat*QBrowsePEMAKAIAN.AsFloat;
  QBrowseKELUAR_NILAI.AsFloat:=QBrowseHRG_AVG.AsFloat*(QBrowsePEMAKAIAN.AsFloat+QBrowseKOREKSI_OUT.AsFloat);

  QBrowseNILAI_AKHIR.AsFloat:=QBrowseNILAI_AWAL.AsFloat+QBrowseMASUK_NILAI.AsFloat-QBrowseKELUAR_NILAI.AsFloat;
 QBrowseAWAL_AVG2.AsFloat:=QBrowseAWAL_AVG.AsFloat;
 QBrowseMASUK_AVG2.AsFloat:=QBrowseMASUK_AVG.AsFloat;
 QBrowseKELUAR_AVG2.AsFloat:=QBrowseHRG_AVG.AsFloat;  }

end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn3Click(Sender: TObject);
var
  i : integer;
begin
 { i:=0;
  LMDProgress1.Max:=QBrowse.RecordCount;
  BitBtn3.Caption:=IntToStr(QBrowse.RecordCount)+' Records';
  LMDProgress1.Position:=i;
  QBrowse.DisableControls;
  QBrowse.First;
  while not QBrowse.Eof do
  begin
    inc(i);
    LMDProgress1.Position:=i;
    QUpdate.Close;
    QUpdate.SetVariable('myparam','n'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam2','b'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam3','M'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam4','A'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('pkd_item',QBrowseKD_ITEM.AsString);
    QUpdate.SetVariable('pnilai',QBrowseNILAI_AKHIR.AsFloat);
    QUpdate.SetVariable('pqty',QBrowseAKHIR.AsFloat);
    QUpdate.SetVariable('pnilai2',QBrowseKELUAR_NILAI.AsFloat);
    QUpdate.SetVariable('pqty2',QBrowsePEMAKAIAN.AsFloat+QBrowseKOREKSI_OUT.AsFloat);
    QUpdate.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
    QUpdate.Execute;
    QBrowse.Next;
  end;
  QBrowse.First;
  QTutupTahun.Close;
  QTutupTahun.SetVariable('ptgl',vTglAkhir.Date);
  QTutupTahun.Execute;
  QBrowse.EnableControls;
  BitBtn3.Caption:='Tutup Stok';   }
end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn4Click(Sender: TObject);
begin
{  try
  QUpdateMutasi.Close;
  QUpdateMutasi.SetVariable('pbulan',vTglAkhir.Date);
  QUpdateMutasi.SetVariable('pjns_item',vkd_jns_item);
  QUpdateMutasi.Execute;
  ShowMessage('Sukses !');
  Except
    ShowMessage('Gagal !');
  end;             }
end;

procedure TNilaiKartuStokSPPnewFrm.BitBtn6Click(Sender: TObject);
begin
{  QTutupTransaksi.Open;
  if QTutupTransaksi.State<>dsBrowse then
  begin
    QTutupTransaksi.Post;
  end;
  try
    QJurnal.Close;
    QJurnal.SetVariable('ptgl_tutup',vTglAkhir.Date);
    QJurnal.SetVariable('pawal',t1);
    QJurnal.SetVariable('pbeli',t2);
    QJurnal.SetVariable('pretur',0);
    QJurnal.SetVariable('pjual',0);
    QJurnal.SetVariable('pkoreksi',t3);
    QJurnal.SetVariable('pakhir',t6);
    QJurnal.execute;
    ShowMessage('Jurnal Sukses !');
  except
    ShowMessage('Jurnal Gagal, Cek Tanggal Tutup Jurnal !');
  end;      }
end;

procedure TNilaiKartuStokSPPnewFrm.Label7Click(Sender: TObject);
begin
  QTutupTransaksi.Close;
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
  QTutupTransaksi.Open;
end;

procedure TNilaiKartuStokSPPnewFrm.QNilaiAwalBeforeOpen(DataSet: TDataSet);
begin
  QNilaiAwal.SetVariable('pkd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokSPPnewFrm.QNilaiMasukBeforeOpen(DataSet: TDataSet);
begin
  QNilaiMasuk.SetVariable('pkd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid2DblClick(Sender: TObject);
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

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('kd_item',Qriwayattransaksikd_item.AsString);
 // QTotal.SetVariable('no_reg_stok_gd',Qbrowsekd.AsInteger);
  QTotal.Open;
  wwDBGrid2.ColumnByName('HARGA').FooterValue:=FormatFloat('#,##0.##;(#,##0.##)',QTotalHARGA_PO.AsFloat);
 wwDBGrid2.ColumnByName('HARGA2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##)',QTotalHARGA_NOTA.AsFloat);
 Qtotal.Refresh;
end;

procedure TNilaiKartuStokSPPnewFrm.QRiwayatTransaksiCalcFields(
  DataSet: TDataSet);
begin
{  QRiwayatTransaksiHARGA_AVG.AsFloat:=QBrowseHRG_AVG.AsFloat;
  QRiwayatTransaksiQTY_IN2.AsFloat:=QRiwayatTransaksiQTY_IN.AsFloat/181.440;
  QRiwayatTransaksiQTY_OUT2.AsFloat:=QRiwayatTransaksiQTY_OUT.AsFloat/181.440;   }
end;

procedure TNilaiKartuStokSPPnewFrm.cbStokClick(Sender: TObject);
begin
  QBrowse.Filtered:=cbStok.Checked;
end;

procedure TNilaiKartuStokSPPnewFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept:=(QBrowseQTY_AWAL.AsFloat<>0) or
     (QBrowseHRG_AWAL.AsFloat<>0) or
     (QBrowseVAL_AWAL.AsFloat<>0) or
     (QBrowseIN_QTY.AsFloat<>0) or
     (QBrowseIN_VAL.AsFloat<>0) or
     (QBrowseOUT_QTY.AsFloat<>0) or
     (QBrowseOUT_VAL.AsFloat<>0) or
     (QBrowseSALDO_QTY.AsFloat<>0) or
     (QBrowseHRG_RATA2.AsFloat<>0) or
     (QBrowseSALDO_VAL.AsFloat<>0);
end;

procedure TNilaiKartuStokSPPnewFrm.QTutupTransaksiBeforeOpen(
  DataSet: TDataSet);
begin
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokSPPnewFrm.TabSheet3Show(Sender: TObject);
var
 i : integer;
 R1, R2 : real;
begin
  QRekapPerMesin.Close;
  QRekapPerMesin.DisableControls;
  R1 := 0;
  R2 := 0;
  QRekapPerMesin.SetVariable('pawal',vTglAwal.Date);
  QRekapPerMesin.SetVariable('pakhir',vTglAkhir.Date);
  QRekapPerMesin.SetVariable('jns_item','3');
  QRekapPerMesin.Open;
  Label17.Caption:= DateToStr(VTglAwal.Date)+' s/d '+DateToStr(vTglAkhir.Date);
  i :=0;
  while not QRekapPerMesin.Eof do
  begin
      R1:=R1+QRekapPerMesinTOTAL_QTY.AsFloat;
      R2:=R2+QRekapPerMesinTOTAL_VAL.AsFloat;
      QRekapPerMesin.Next;
  end;

  QRekapPerMesin.EnableControls;

  wwDBGrid4.ColumnByName('TOTAL_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',R1);
  wwDBGrid4.ColumnByName('TOTAL_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',R2);

end;

procedure TNilaiKartuStokSPPnewFrm.TabSheet5Show(Sender: TObject);
var
 i : integer;
 R1, R2 : real;
begin
  R1 := 0;
  R2 := 0;
  QRekapPemakaianPerBag.DisableControls;
  QRekapPemakaianPerBag.Close;
  QRekapPemakaianPerBag.SetVariable('pawal',vTglAwal.Date);
  QRekapPemakaianPerBag.SetVariable('pakhir',vTglAkhir.Date);
  QRekapPemakaianPerBag.SetVariable('id_sub_bag', QRekapPerMesinID_SUB_BAG.AsString);
//  ShowMessage(QRekapPerMesinID_SUB_BAG.AsString);
  Label21.Caption:=QRekapPerMesinSUB_BAGIAN.AsString;
  QRekapPemakaianPerBag.Open;
  i :=0;
  while not QRekapPemakaianPerBag.Eof do
  begin
      R1:=R1+QRekapPemakaianPerBagOUT_QTY.AsFloat;
      R2:=R2+QRekapPemakaianPerBagOUT_VAL.AsFloat;
      QRekapPemakaianPerBag.Next;
  end;

  QRekapPemakaianPerBag.EnableControls;

  wwDBGrid3.ColumnByName('OUT_QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',R1);
  wwDBGrid3.ColumnByName('OUT_VAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',R2);
  Label20.Caption:= DateToStr(VTglAwal.Date)+' s/d '+DateToStr(vTglAkhir.date);
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid4URLOpen(Sender: TObject;
  var URLLink: String; Field: TField; var UseDefault: Boolean);
begin
  TabSheet5.Show;
end;

procedure TNilaiKartuStokSPPnewFrm.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel20.Caption:=VTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TNilaiKartuStokSPPnewFrm.QRBand15BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel5.Caption:=VTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TNilaiKartuStokSPPnewFrm.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  vberjalan3:=(QRiwayatTransaksiIN_QTY.AsFloat-QRiwayatTransaksiOUT_QTY.AsFloat);
  vberjalan4:=(QRiwayatTransaksiIN_VAL.AsFloat-QRiwayatTransaksiOUT_VAL.AsFloat);}
  QRLBerjalan3.Caption:=FormatFloat('#.#,#;(#.#,#)',QBrowseSALDO_QTY.AsFloat);
  QRLBerjalan4.Caption:=FormatFloat('#.#,#;(#.#,#)',QBrowseSALDO_VAL.AsFloat);
end;

procedure TNilaiKartuStokSPPnewFrm.TabSheet4Show(Sender: TObject);
begin
Label17.Caption:= DateToStr(VTglAwal.Date)+' s/d '+DateToStr(vTglAkhir.date);
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid5CalcCellColors(Sender: TObject;
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

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid5Enter(Sender: TObject);
begin
  if QTransaksiISPOST.AsString='1' then
     wwDBGrid5.Options:=wwDBGrid5.Options+[dgRowSelect]
     else
     wwDBGrid5.Options:=wwDBGrid5.Options-[dgRowSelect];
end;

procedure TNilaiKartuStokSPPnewFrm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then PanelEdit.Visible:=True else PanelEdit.Visible:=False;
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid2RowChanged(Sender: TObject);
begin
  QTransaksi.Close;
  QTransaksi.SetVariable('no_nota', QRiwayatTransaksiNO_NOTA.AsString);
  QTransaksi.Open;

  QDetail.Close;
  QDetail.SetVariable('no_reg_pemakaian', QTransaksiNO_REG_PEMAKAIAN.AsInteger);
  QDetail.Open;
  
  wwDBGrid5.Refresh;
  wwDBNavigator1.Refresh;
  DBText10.Refresh;
  wwCheckBox1.Refresh;
end;

procedure TNilaiKartuStokSPPnewFrm.QTransaksiAfterDelete(
  DataSet: TDataSet);
begin
  QRiwayatTransaksi.Refresh;
  wwDBGrid2.Refresh;
end;

procedure TNilaiKartuStokSPPnewFrm.QTransaksiAfterPost(DataSet: TDataSet);
begin
  QRiwayatTransaksi.Refresh;
  wwDBGrid2.Refresh;
end;

procedure TNilaiKartuStokSPPnewFrm.QTransaksiBeforeDelete(
  DataSet: TDataSet);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
      ShowMessage('Maaf, data sudah di-POSTING, tidak bisa diubah !');
      Abort;
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.QDetailBeforeDelete(DataSet: TDataSet);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
      ShowMessage('Maaf, data sudah di-POSTING, tidak bisa diubah !');
      Abort;
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QTransaksiISPOST.AsString='1' then
  begin
      ShowMessage('Maaf, data sudah di-POSTING, tidak bisa diubah !');
      Abort;
  end;
end;

procedure TNilaiKartuStokSPPnewFrm.wwDBGrid2Enter(Sender: TObject);
begin
  QTransaksi.Close;
  QTransaksi.SetVariable('no_nota', QRiwayatTransaksiNO_NOTA.AsString);
  QTransaksi.Open;

  QDetail.Close;
  QDetail.SetVariable('no_reg_pemakaian', QTransaksiNO_REG_PEMAKAIAN.AsInteger);
  QDetail.Open;
  
  wwDBGrid5.Refresh;
  wwDBNavigator1.Refresh;
  DBText10.Refresh;
  wwCheckBox1.Refresh;
end;

end.
