unit UInfoPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls;

type
  TInfoPanel = class(TForm)
    BlueImg: TImage;
    OliveImg: TImage;
    SilverImg: TImage;
    Icons32: TImageList;
    Icons16: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoPanel: TInfoPanel;

implementation

{$R *.dfm}

end.
