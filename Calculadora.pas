unit Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    bnt_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_menos: TButton;
    btn_vezes: TButton;
    btn_dividir: TButton;
    btn_mais: TButton;
    caixa_top: TLayout;
    lb_operador: TLabel;
    lb_num2: TLabel;
    lb_num1: TLabel;
    btn_apagar: TButton;
    btn_ce: TButton;
    btn_c: TButton;
    procedure btn_menosClick(Sender: TObject);
    procedure btn_maisClick(Sender: TObject);
    procedure btn_vezesClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure bnt_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_0Click(Sender: TObject);
begin
      if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '0';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '0';
        end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
  
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '1';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '1';
        end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '2';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '2';
        end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '3';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '3';
        end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '4';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '4';
        end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '5';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '5';
        end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '6';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '6';
        end;
end;

procedure TForm1.bnt_7Click(Sender: TObject);
begin
      if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '7';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '7';
        end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '8';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '8';
        end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ '9';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ '9';
        end;
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
      begin
        lb_num1.Text  := copy(lb_num1.Text , 0, length(lb_num1.Text)- 1);		
      end
      else
      begin
        lb_num2.Text  := copy(lb_num2.Text , 0, length(lb_num2.Text)- 1);
      end;
end;

procedure TForm1.btn_cClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
    begin
      lb_num1.Text := '';	
    end
    else
      begin
        lb_num2.Text  := '';	
      end;
end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
      btn_mais.Enabled := true;
      btn_vezes.Enabled := true;
      btn_dividir.Enabled := true;
      btn_menos.Enabled := true;
      lb_operador.Text := '.';
      lb_num1.Text  := ' ';
      lb_num2.Text  := ' ';	      
end;

procedure TForm1.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
    btn_mais.Enabled := true;
    btn_vezes.Enabled := true;
    btn_dividir.Enabled := false;
    btn_menos.Enabled := true;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1, n2 : double;
  var x : char;
  begin
     n1 := strToFloat(lb_num1.Text);
     n2 := strToFloat(lb_num2.Text);

     {
     // Efetuando a soma
     if(lb_operador.Text	 = '+') then
     begin
        showMessage (FloatToStr(n1 + n2));
     end;

     // Efetuando a Subtração
     if(lb_operador.Text	 = '-') then
     begin
        showMessage (FloatToStr(n1 - n2));
     end;

     // Efetuando a multiplicação
     if(lb_operador.Text	 = '*') then
     begin
        showMessage (FloatToStr(n1 * n2));
     end;

     // Efetuando a divisão
     if(lb_operador.Text	 = '/') then
     begin
        showMessage (FloatToStr(n1 / n2));
     end;
     }

     // Usando o switch
     x := lb_operador.Text[1];
      case x of
            '+' :
            begin
              showMessage (FloatToStr(n1 + n2));
            end;
            '-' :
            begin
              showMessage (FloatToStr(n1 - n2));
            end;
            '*' :
            begin
              showMessage (FloatToStr(n1 * n2));
            end;
            '/' :
            begin
              showMessage (FloatToStr(n1 /  n2));
            end;
      end;

      lb_operador.Text := '.';
      lb_num1.Text  := ' ';
      lb_num2.Text  := ' ';	
      btn_mais.Enabled := true;
      btn_vezes.Enabled := true;
      btn_dividir.Enabled := true;
      btn_menos.Enabled := true;		
      
  end;

procedure TForm1.btn_maisClick(Sender: TObject);
begin
   lb_operador.Text := '+';
      btn_mais.Enabled := false;
      btn_vezes.Enabled := true;
      btn_dividir.Enabled := true;
      btn_menos.Enabled := true;
end;

procedure TForm1.btn_menosClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_mais.Enabled := true;
  btn_vezes.Enabled := true;
  btn_dividir.Enabled := true;
  btn_menos.Enabled := false;
end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
      begin
       lb_num1.Text  := lb_num1.Text	+ ',';
      end
      else
        begin
          lb_num2.Text  := lb_num2.Text	+ ',';
        end;
end;

procedure TForm1.btn_vezesClick(Sender: TObject);
begin
  lb_operador.Text := '*';
    btn_mais.Enabled := true;
    btn_vezes.Enabled := false;
    btn_dividir.Enabled := true;
    btn_menos.Enabled := true;
end;

end.
