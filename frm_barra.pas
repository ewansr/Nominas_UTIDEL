unit frm_barra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, Global, ImgList, AdvGlowButton,
  AdvPanel, ExtCtrls;

type
  TfrmBarra = class(TFrame)
    AdvPanel1: TAdvPanel;
    StylePanel: TAdvPanelStyler;
    btnRefresh: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnPost: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    btnPrinter: TAdvGlowButton;
    btnExit: TAdvGlowButton;
    btnAdd: TAdvGlowButton;
    ImgBtns: TImageList;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
{$R *.dfm}




procedure TfrmBarra.btnAddClick(Sender: TObject);
begin
  OpcButton := 'New' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnPost.Enabled := True ;
  btnCancel.Enabled := True ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False ;
  btnExit.Enabled := False ;
end;

procedure TfrmBarra.btnEditClick(Sender: TObject);
begin
  OpcButton := 'Edit' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnPost.Enabled := True ;
  btnCancel.Enabled := True ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False ;
  btnExit.Enabled := False ;
end;

procedure TfrmBarra.btnExitClick(Sender: TObject);
begin
  OpcButton := '' ;
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;
end;

procedure TfrmBarra.btnPostClick(Sender: TObject);
begin
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnPost.Enabled := False ;
  btnCancel.Enabled := False ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;
  If OpcButton = 'New' then
     btnAdd.Click 
end;



procedure TfrmBarra.FrameResize(Sender: TObject);
begin
    If global_Insertar = 'Si' Then
       btnAdd.Enabled := True
    else
       btnAdd.Enabled := False ;

    If global_Editar = 'Si' Then
       btnEdit.Enabled := True
    else
        btnEdit.Enabled := False ;

    If global_eliminar = 'Si' Then
       btnDelete.Enabled := True
    else
        btnDelete.Enabled := False  ;

    If global_Imprimir = 'Si' Then
       btnPrinter.Enabled := True
    else
       btnPrinter.Enabled := False ;


end;

procedure TfrmBarra.btnCancelClick(Sender: TObject);
begin
  OpcButton := '' ;
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnPost.Enabled := False ;
  btnCancel.Enabled := False ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;
end;

end.
