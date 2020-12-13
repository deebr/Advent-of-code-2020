{
   passwords2.pas
   
   Advent of code 2020
   Day 2, Part 2
   adventofcode.com
   
   
}


program untitled;

uses crt;

type password_rule = record
   range_low: integer;
   range_high: integer;
   target_letter: char;
   password: string
   end;
   

var   valid_count, error_return, letter_count, i, j: integer;
      current_char, cheat: char;
      input_file: TextFile;
      current_rule: password_rule;
      temp_num: string;
      temp_string: string;

BEGIN
	
   {initialise variables}
   
   valid_count:=0;
   
   {set up input file for reading}
   
   assign (input_file,'passwords.txt');
   reset (input_file);
   
   {start reading the file}
   
   while not eof (input_file) do
   begin
   
     {read the first number, recognise the end by a minus char}
     
     i:=1;
     temp_num:='  ';
     repeat
       read (input_file,temp_num[i]);
       inc(i);
       until temp_num[i-1]='-';
       
     {this bit's really clunky, the code didn't work for single digit numbers, so it's a cheat}  
       
     if (temp_num[2] = '-') then
     begin
       cheat:=temp_num[1];
       val (cheat,current_rule.range_low,error_return);
     end
     else
     begin
       val(temp_num,current_rule.range_low,error_return);
     end;
      
     {read the second number, recognise the end by a space char}
     i:=1;
     temp_num:='--';
     repeat
       read (input_file,temp_num[i]);
       inc(i);
       until temp_num[i-1]=' ';
     if (temp_num[2] = ' ') then
     begin
       cheat:=temp_num[1];
       val (cheat,current_rule.range_high,error_return);
     end
     else
     begin
       val(temp_num,current_rule.range_high,error_return);
     end;
      
     {read the target letter, always a single digit}
     read (input_file,current_rule.target_letter);
     
     {read and discard the remaining two characters}
     read(input_file);
     read(input_file);
     
     {read the code string, recognise the end by end of line}
     i:=1;
     current_rule.password:='                                       ';
     while not eoln (input_file) do
     begin
       read (input_file,current_rule.password[i]);
       inc(i);
     end;
     readln (input_file);
	
   {validate the rules}
   if (current_rule.password[current_rule.range_low+2] = current_rule.target_letter) xor (current_rule.password[current_rule.range_high+2] = current_rule.target_letter) then
     inc(valid_count);
   
   end;
   writeln ('Valid Passwords: ',valid_count);
END.

