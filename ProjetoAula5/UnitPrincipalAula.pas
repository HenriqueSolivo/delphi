unit UnitPrincipalAula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  Vcl.Samples.Spin, Vcl.FileCtrl, Vcl.Skia, Vcl.Mask, Data.DB, Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Imaging.jpeg;

type
  TFormHenrique = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Button: TButton;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label2: TLabel;
    Memo: TMemo;
    Image1: TImage;
    Edit1: TEdit;
    CheckListBox1: TCheckListBox;
    DriveComboBox1: TDriveComboBox;
    Edit2: TEdit;
    Slect: TComboBox;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ColorListBox1: TColorListBox;
    LabeledEdit1: TLabeledEdit;
    ColorBox1: TColorBox;
    SpinEdit1: TSpinEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    RichEdit1: TRichEdit;
    ToggleSwitch1: TToggleSwitch;
    MonthCalendar1: TMonthCalendar;
    telefone: TLabel;
    DateTimePicker1: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHenrique: TFormHenrique;

implementation

{$R *.dfm}

end.
