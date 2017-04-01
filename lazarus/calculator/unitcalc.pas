unit unitCalc;
//Fazer um controle de numeros, não permitir um numero maior que 8 digidos
//Fazer um historico
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ExtCtrls, unitAbout;

type

  { TfrmCalc }

  TfrmCalc = class(TForm)
    btn0: TButton;
    btnComma: TButton;
    btn6: TButton;
    btnErase: TButton;
    btnMultiplication: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnDivision: TButton;
    btnEqual: TButton;
    btnMoreOrLess: TButton;
    btnPotency: TButton;
    btnSum: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnSubtraction: TButton;
    btn4: TButton;
    btn5: TButton;
    btnSqr: TButton;
    btnAbout: TButton;
    pnlDisplay: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnCommaClick(Sender: TObject);
    procedure btnDivisionClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnEraseClick(Sender: TObject);
    procedure btnMoreOrLessClick(Sender: TObject);
    procedure btnMultiplicationClick(Sender: TObject);
    procedure btnPotencyClick(Sender: TObject);
    procedure btnSqrClick(Sender: TObject);
    procedure btnSubtractionClick(Sender: TObject);
    procedure btnSumClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

type
  Tgiven = double;
  Toperation = -1..3;
  //Tpotential = 0..2;

var
  p1 : Tgiven=0;
  p2 : Tgiven=0;
  Goperation : Toperation=-1;
  aux : TCaption='a';
  //potential : Tpotential=0;
  comma : boolean=false;
  controlComma : boolean=true;

{$R *.lfm}

{ TfrmCalc }

//*************************************************************************
//**************************** My procedures ******************************
//*************************************************************************

{ The procedure and responsible for capturing the keys entered by the user
  @number and the amount that will be received to hold accounts
}

procedure keyboard(number:TCaption);
begin
  if ( aux = 'a') then
  begin
    aux := number;
    if ( Goperation >= 0 ) then
      p2 := StrToFloat(number)
    else
      p1 := StrToFloat(number);
  end else
  begin
    if (comma) then
    begin
      aux := aux+'.'+number;
    end else
      aux := aux+number;
    if ( Goperation >= 0 ) then
      p2 := StrToFloat(aux)
    else
      p1 := StrToFloat(aux);
  end;
  if(not controlComma) then comma := false;
end;

{ Assumes intervals from 0 to 3, corresponding to the operators +, -, *, /
  * if @operation equal 0 soon equal the sum;
  * if @operation equal 1 soon equal the subtraction;
  * if @operation equal 2 soon equal the multiplication;

   -> Removed in update
  * //if @operation equal 3 soon equal the division.
  * //if @operation equal 4 soon equal the number squared.
}

procedure signalTest(operation : Toperation);
begin
  Goperation := operation;
  aux := 'a';
  comma := false;
  controlComma:=true;
end;

procedure operationSum();
begin
  p1 := p1+p2;
  p2 := 0;
  aux := FloatToStr(p1);
end;

procedure operationSubtraction();
begin
  p1 := p1-p2;
  p2 := 0;
  aux := FloatToStr(p1);
end;

procedure operationMultiplication();
begin
  if(p2 = 0) then p1:=p1/1 else
  begin
    p1 := p1*p2;
    p2 := 0;
    aux := FloatToStr(p1);
  end;
end;

procedure operationDivision();
begin
  if (p2 <> 0) then
  begin
    if(p2 = 0) then p1:=p1/1 else
    begin
      p1 := p1/p2;
      p2 := 0;
      aux := FloatToStr(p1);
    end;
  end else aux := 'Error not is possible division by 0 or number not informed';
end;

procedure operationSquared();
begin
  if (Goperation = -1) then
  begin
    p1 := sqr(p1);
    aux := FloatToStr(p1);
  end else
  begin
    p2 := sqr(p2);
    aux := FloatToStr(p2);
  end;
end;

procedure operationRoot;
begin
  if (Goperation <> 0) then
  begin
    p1 := sqrt(p1);
    aux := FloatToStr(p1);
  end else
  begin
    p2 := sqrt(p2);
    aux := FloatToStr(p2);
  end;
end;

//*************************************************************************
//******************************** Lazarus ********************************
//*************************************************************************

procedure TfrmCalc.btnAboutClick(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmCalc.btnCommaClick(Sender: TObject);
begin
  if (controlComma) then
  begin
    comma:= true;
    controlComma:= false;
    pnlDisplay.Caption:= pnlDisplay.Caption+'.';
  end;
end;

procedure TfrmCalc.btnDivisionClick(Sender: TObject);
begin
  if (p1 <> 0) then
  begin
  if (Goperation <> -1 ) then
  begin
    case Goperation of
      //-1 : pnlDisplay.Caption:= 'Error operation not selected';
       0  : operationSum();
       1  : operationSubtraction();
       2  : operationMultiplication();
       3  : operationDivision();
    end;


     //signalTest(-1);
  end;
  end;


  if (not(Goperation = 3)) then pnlDisplay.Caption:= pnlDisplay.Caption+' / ';
  signalTest(3);

  aux := 'a';
end;

//Main - Equal
procedure TfrmCalc.btnEqualClick(Sender: TObject);
begin
  case Goperation of
    //-1 : pnlDisplay.Caption:= 'Error operation not selected';
    0  : operationSum();
    1  : operationSubtraction();
    2  : operationMultiplication();
    3  : operationDivision();
  end;

  if (aux <> 'a') then
  begin
  pnlDisplay.Caption:= aux;
  end;

  p2 := 0;

  signalTest(-1);
end;

procedure TfrmCalc.btnEraseClick(Sender: TObject);
begin
  pnlDisplay.Caption:='0';
  //aux:='a';
  signalTest(-1);
  p1 := 0;
  p2 := 0;
end;

procedure TfrmCalc.btnMoreOrLessClick(Sender: TObject);
begin
  if ((p2 = 0) and (Goperation = -1)) then
  begin
    p1 := p1*(-1);
    pnlDisplay.Caption:= FloatToStr(p1);
  end else
  begin
    p2 := p2*(-1);

    case Goperation of
      0  : operationSum();
      1  : operationSubtraction();
      2  : operationMultiplication();
      3  : operationDivision();
    end;

    if (aux <> 'a') then
    begin
      pnlDisplay.Caption:= aux;
    end;

    p2 := 0;

    signalTest(-1);
  end;
end;

//operação
procedure TfrmCalc.btnMultiplicationClick(Sender: TObject);
begin
  if (p1 <> 0) then
  begin

    if (Goperation <> -1 ) then
    begin
      case Goperation of
      //   -1 : pnlDisplay.Caption:= 'Error operation not selected';
         0  : operationSum();
         1  : operationSubtraction();
         2  : operationMultiplication();
         3  : operationDivision();
      end;

      p2 := 0;

      if (aux <> 'a') then
      begin
           pnlDisplay.Caption:= aux;
      end;// else  pnlDisplay.Caption:= 'Error unknown';

      //signalTest(-1);

    end;

    if (not (Goperation = 2)) then pnlDisplay.Caption:= pnlDisplay.Caption+' * ';
    signalTest(2);
    aux := 'a';
  end;
end;

procedure TfrmCalc.btnPotencyClick(Sender: TObject);
begin

  operationSquared();

  if ((p1 > 0) and (Goperation = -1)) then pnlDisplay.Caption:= FloatToStr(p1) else
   if(Goperation = 0) then pnlDisplay.Caption:= FloatToStr(p1)+' + '+FloatToStr(p2) else
     if(Goperation = 1) then pnlDisplay.Caption:= FloatToStr(p1)+' - '+FloatToStr(p2) else
       if(Goperation = 2) then pnlDisplay.Caption:= FloatToStr(p1)+' * '+FloatToStr(p2) else
         if(Goperation = 3) then pnlDisplay.Caption:= FloatToStr(p1)+' / '+FloatToStr(p2);
end;

procedure TfrmCalc.btnSqrClick(Sender: TObject);
begin
  if (( (p1 >= 0)) or (Goperation > -1)) then
  begin
    if (Goperation = -1) then
    begin
      p1 := sqrt(p1);
      aux := FloatToStr(p1);
    end else
    if (Goperation <> 1) then
    begin
      p2 := sqrt(p2);
      aux := FloatToStr(p2);
    end else if (Goperation <> 1) then pnlDisplay.Caption:= 'Input Invalid';

    if ((p1 > 0) and (Goperation = -1)) then pnlDisplay.Caption:= FloatToStr(p1) else
     if(Goperation = 0) then pnlDisplay.Caption:= FloatToStr(p1)+' + '+FloatToStr(p2) else
       if(Goperation = 1) then pnlDisplay.Caption:= FloatToStr(p1)+' - '+FloatToStr(p2) else
         if(Goperation = 2) then pnlDisplay.Caption:= FloatToStr(p1)+' * '+FloatToStr(p2) else
           if(Goperation = 3) then pnlDisplay.Caption:= FloatToStr(p1)+' / '+FloatToStr(p2);
  end else pnlDisplay.Caption:= 'Input Invalid';


end;




procedure TfrmCalc.btnSubtractionClick(Sender: TObject);
begin
  if (p1 <> 0) then
  begin

    if (Goperation <> -1 ) then
    begin
      case Goperation of
         -1 : pnlDisplay.Caption:= 'Error operation not selected';
         0  : operationSum();
         1  : operationSubtraction();
         2  : operationMultiplication();
         3  : operationDivision();
      end;

      if (aux <> 'a') then
      begin
           pnlDisplay.Caption:= aux;
      end;// else  pnlDisplay.Caption:= 'Error unknown';

      signalTest(-1);
    end;

    signalTest(1);
    pnlDisplay.Caption:= pnlDisplay.Caption+' - ';
    aux := 'a';
  end;
end;

procedure TfrmCalc.btnSumClick(Sender: TObject);
begin
  if (p1 <> 0) then
  begin
    if (Goperation <> -1 ) then
    begin
      case Goperation of
         -1 : pnlDisplay.Caption:= 'Error operation not selected';
         0  : operationSum();
         1  : operationSubtraction();
         2  : operationMultiplication();
         3  : operationDivision();
      end;

      if (aux <> 'a') then
      begin
           pnlDisplay.Caption:= aux;
      end;// else  pnlDisplay.Caption:= 'Error unknown';

      signalTest(-1);

    end;

    signalTest(0);
    pnlDisplay.Caption:= pnlDisplay.Caption+' + ';
    aux := 'a';
  end;
end;

//Values
procedure TfrmCalc.btn1Click(Sender: TObject);
begin
  keyboard(TEdit(Sender).Caption);

  //TEST Na raiz e na potencia
  //Problema na raiz e na potencia
  //Arruma o Ponto, provalvemente por causa do valor 0
  //Aceita numero negativo
  //Igual fazer imclemento do numero
  //Fazer MR, MC, M+, M-


  if ((p1 > 0) and (Goperation = -1)) then pnlDisplay.Caption:= FloatToStr(p1) else
    if(Goperation = 0) then pnlDisplay.Caption:= FloatToStr(p1)+' + '+FloatToStr(p2) else
      if(Goperation = 1) then pnlDisplay.Caption:= FloatToStr(p1)+' - '+FloatToStr(p2) else
        if(Goperation = 2) then pnlDisplay.Caption:= FloatToStr(p1)+' * '+FloatToStr(p2) else
          if(Goperation = 3) then pnlDisplay.Caption:= FloatToStr(p1)+' / '+FloatToStr(p2);
end;

end.

