{
   Advent2001.pas
   
   This is a solution to the advent of code challenge 2020
}


program Advent2001;

uses crt;

var RecordCount: integer;
    CurrentRecord: string;
    InputFile: TextFile;
    NumberList: array of integer;
    i: integer;
    j: integer;
    k: integer;
    TempIn: string;
    ErrorReturn: integer;

BEGIN
	
   {Set up the file of numbers ready for reading}
   
   assign(InputFile, 'numbers');
   reset(InputFile);
   
   {Count the number of records in the file}
   
   RecordCount:=0;
   while not eof(InputFile) do
   begin
      readln (InputFile,CurrentRecord);
      inc (RecordCount);
   end;
   writeln('Final Record Count ',RecordCount);
   writeln;
   close(InputFile);
	
   {Set the array of numbers to the correct length}
   
   setLength(NumberList,RecordCount);
   
   {Read the numbers into the array and convert from string to integer}
   
   reset(InputFile);
   for i:=1 to RecordCount do
   begin
      readln (InputFile,TempIn);
      val(TempIn,NumberList[i],ErrorReturn);
   end;
   close(InputFile);
   
   {Do the checking}
   
   for i:= 1 to RecordCount do
   begin
      for j:= 1 to RecordCount do
      begin
         for k:= 1 to RecordCount do
            if (NumberList[i]+NumberList[j]+NumberList[k]=2020) then
               writeln (i, ' ',j,' ',k,' ',NumberList[i],'+',NumberList[j],'+',NumberList[k],'=',(NumberList[i]+NumberList[j]+NumberList[k]),' multiplied= ',(NumberList[i]*NumberList[j]*NumberList[k]));
      end;
   end;
END.

