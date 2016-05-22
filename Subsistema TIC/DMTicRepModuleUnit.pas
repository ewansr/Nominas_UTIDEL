unit DMTicRepModuleUnit;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet;

type
  TTicRepModuleUnit = class(TDataModule)
    frxDBDOrganizacion: TfrxDBDataset;
    frxDBPersonal: TfrxDBDataset;
    frxDBDResguardo: TfrxDBDataset;
    frxDBdevueltos: TfrxDBDataset;
    frxDBDMantenimientos: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TicRepModuleUnit: TTicRepModuleUnit;

implementation

{$R *.dfm}

end.
